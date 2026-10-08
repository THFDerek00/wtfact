<?php
// Startseite des Dashboards: liefert die Oberfläche (app.html, beim Bauen aus src/pages/steuerung/index.astro
// erzeugt). Anmelden und alle Daten laufen über api.php.
declare(strict_types=1);
header('X-Frame-Options: DENY');
header('X-Content-Type-Options: nosniff');
header('X-Robots-Tag: noindex, nofollow');
header('Referrer-Policy: same-origin');
header('Cache-Control: no-store');
header("Content-Security-Policy: default-src 'self'; img-src 'self' data:; style-src 'self' 'unsafe-inline'; script-src 'self' 'unsafe-inline'; font-src 'self' data:; connect-src 'self'; frame-ancestors 'none'");
$app = __DIR__ . '/app.html';
if (!is_file($app)) {
    http_response_code(503);
    echo 'Dashboard noch nicht gebaut (npm run build).';
    exit;
}
readfile($app);
