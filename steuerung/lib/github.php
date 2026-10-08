<?php
// Zugriff auf das Repository über die GitHub-API. Das Dashboard liest und schreibt die Fakten-Dateien
// (db/facts/<key>.sql) direkt in main. Jede Änderung ist damit ein normaler Commit und löst wie jeder
// Merge den Upload zu IONOS aus (.github/workflows/deploy.yml).
//
// Token: „fine-grained personal access token“ nur für dieses Repository mit
// Contents: Read and write, Pull requests: Read and write, Actions: Read and write (README „Dashboard“).

declare(strict_types=1);

function gh_repo(): string
{
    return (string) cfg('repo', 'THFDerek00/wtfact');
}

function gh_branch(): string
{
    return (string) cfg('branch', 'main');
}

function gh_handle(string $method, string $path, $body = null, bool $raw = false)
{
    $token = cfg('github_token');
    if (!$token) fail('not-configured', 503, ['reason' => 'no-github-token']);
    $base = rtrim((string) cfg('github_api', 'https://api.github.com'), '/');
    $url = str_starts_with($path, 'http') ? $path : $base . '/repos/' . gh_repo() . $path;
    $h = curl_init($url);
    $headers = [
        'Authorization: Bearer ' . $token,
        'Accept: ' . ($raw ? 'application/vnd.github.raw' : 'application/vnd.github+json'),
        'X-GitHub-Api-Version: 2022-11-28',
        'User-Agent: wtfact-steuerung',
    ];
    if ($body !== null) $headers[] = 'Content-Type: application/json';
    curl_setopt_array($h, [
        CURLOPT_CUSTOMREQUEST => $method,
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_HTTPHEADER => $headers,
        CURLOPT_TIMEOUT => 30,
        CURLOPT_CONNECTTIMEOUT => 10,
    ]);
    if ($body !== null) curl_setopt($h, CURLOPT_POSTFIELDS, json_encode($body, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES));
    return $h;
}

/** Ein Aufruf. Gibt [Status, Antwort] zurück; Antwort ist JSON (Array) oder bei $raw der Text. */
function gh(string $method, string $path, $body = null, bool $raw = false): array
{
    $h = gh_handle($method, $path, $body, $raw);
    $res = curl_exec($h);
    $status = (int) curl_getinfo($h, CURLINFO_RESPONSE_CODE);
    $err = curl_error($h);
    curl_close($h);
    if ($res === false) {
        error_log("wtfact steuerung: GitHub $method $path: $err");
        fail('github-unreachable', 502);
    }
    if ($status === 401 || $status === 403) fail('github-denied', 502, ['status' => $status]);
    return [$status, $raw ? $res : json_decode((string) $res, true)];
}

/** gh(), aber nur ein 2xx ist in Ordnung. */
function gh_ok(string $method, string $path, $body = null): array
{
    [$status, $data] = gh($method, $path, $body);
    if ($status < 200 || $status >= 300) {
        error_log("wtfact steuerung: GitHub $method $path -> $status " . json_encode($data));
        fail('github-error', 502, ['status' => $status, 'message' => is_array($data) ? ($data['message'] ?? '') : '']);
    }
    return $data ?? [];
}

/** Mehrere Dateien parallel als Text laden: [sha => Inhalt]. */
function gh_blobs(array $shas): array
{
    $out = [];
    foreach (array_chunk(array_values(array_unique($shas)), 12) as $part) {
        $multi = curl_multi_init();
        $handles = [];
        foreach ($part as $sha) {
            $handles[$sha] = gh_handle('GET', "/git/blobs/$sha", null, true);
            curl_multi_add_handle($multi, $handles[$sha]);
        }
        do {
            $st = curl_multi_exec($multi, $running);
            if ($running) curl_multi_select($multi, 1.0);
        } while ($running && $st === CURLM_OK);
        foreach ($handles as $sha => $h) {
            $code = (int) curl_getinfo($h, CURLINFO_RESPONSE_CODE);
            $content = curl_multi_getcontent($h);
            curl_multi_remove_handle($multi, $h);
            curl_close($h);
            if ($code !== 200 || $content === null) fail('github-error', 502, ['status' => $code, 'blob' => $sha]);
            $out[$sha] = $content;
        }
        curl_multi_close($multi);
    }
    return $out;
}

/** Startet einen Workflow (Standard: Hochladen zu IONOS). */
function gh_dispatch(string $workflow = 'deploy.yml'): bool
{
    [$status] = gh('POST', "/actions/workflows/$workflow/dispatches", ['ref' => gh_branch()]);
    return $status === 204;
}

/** Git-Blob-SHA eines Textes, wie git hash-object ihn berechnet. */
function git_blob_sha(string $content): string
{
    return sha1('blob ' . strlen($content) . "\0" . $content);
}
