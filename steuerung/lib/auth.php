<?php
// Anmeldung: ein Konto aus der Konfiguration (user, password_hash). Sitzung per Cookie, nur über HTTPS,
// nicht von anderen Seiten aus nutzbar (SameSite=Strict) und mit CSRF-Schlüssel für jede Änderung.

declare(strict_types=1);

const LOGIN_TRIES = 8;       // Fehlversuche je Anschluss …
const LOGIN_WINDOW = 900;    // … innerhalb von 15 Minuten, danach Sperre bis sie abgelaufen sind
const SESSION_DAYS = 14;

function start_session(): void
{
    if (session_status() === PHP_SESSION_ACTIVE) return;
    $dir = data_dir() . '/sessions';
    if (!is_dir($dir)) @mkdir($dir, 0700, true);
    session_save_path($dir);
    ini_set('session.gc_maxlifetime', (string) (SESSION_DAYS * 86400));
    ini_set('session.use_strict_mode', '1');
    session_name('wtfsteuerung');
    session_set_cookie_params([
        'lifetime' => SESSION_DAYS * 86400,
        'path' => '/',
        'secure' => (($_SERVER['HTTPS'] ?? '') !== '' && $_SERVER['HTTPS'] !== 'off') || ($_SERVER['HTTP_X_FORWARDED_PROTO'] ?? '') === 'https',
        'httponly' => true,
        'samesite' => 'Strict',
    ]);
    session_start();
}

function signed_in(): bool
{
    start_session();
    return !empty($_SESSION['user']) && hash_equals((string) cfg('user', ''), (string) $_SESSION['user']);
}

function csrf(): string
{
    start_session();
    if (empty($_SESSION['csrf'])) $_SESSION['csrf'] = bin2hex(random_bytes(24));
    return $_SESSION['csrf'];
}

function require_login(): void
{
    if (!signed_in()) fail('signed-out', 401);
    if (($_SERVER['REQUEST_METHOD'] ?? 'GET') !== 'GET' && !hash_equals(csrf(), (string) ($_SERVER['HTTP_X_CSRF'] ?? ''))) fail('bad-csrf', 403);
}

function login_bucket(): string
{
    return hash('sha256', 'login|' . ($_SERVER['REMOTE_ADDR'] ?? ''));
}

function login(string $user, string $password): void
{
    if (!cfg('user') || !cfg('password_hash')) fail('not-configured', 503, ['reason' => 'no-login']);
    $db = store();
    $db->prepare('DELETE FROM login_fail WHERE at < ?')->execute([time() - LOGIN_WINDOW]);
    $s = $db->prepare('SELECT COUNT(*) FROM login_fail WHERE bucket = ?');
    $s->execute([login_bucket()]);
    if ((int) $s->fetchColumn() >= LOGIN_TRIES) fail('too-many', 429);
    // password_verify immer ausführen, damit die Antwortzeit nicht verrät, ob der Name stimmt.
    $ok = password_verify($password, (string) cfg('password_hash'));
    if (!$ok || !hash_equals(mb_strtolower((string) cfg('user')), mb_strtolower(trim($user)))) {
        $db->prepare('INSERT INTO login_fail (bucket, at) VALUES (?, ?)')->execute([login_bucket(), time()]);
        usleep(400000);
        fail('wrong-login', 401);
    }
    start_session();
    session_regenerate_id(true);
    $_SESSION['user'] = (string) cfg('user');
    $_SESSION['csrf'] = bin2hex(random_bytes(24));
}

function logout(): void
{
    start_session();
    $_SESSION = [];
    session_destroy();
}
