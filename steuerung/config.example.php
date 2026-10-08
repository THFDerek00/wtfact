<?php
// Nur nötig, wenn die Zugangsdaten NICHT über die GitHub-Secrets kommen (README „Dashboard“).
// Als config.local.php in denselben Ordner legen (Plesk: Dateien > steuerung.wtfact.xyz) und ausfüllen.
// Passwort-Hash erzeugen: php -r 'echo password_hash("dein-passwort", PASSWORD_DEFAULT), "\n";'
return [
    'user' => 'eric',
    'password_hash' => '',
    // Fine-grained Token nur für THFDerek00/wtfact: Contents, Pull requests und Actions jeweils „Read and write“.
    'github_token' => '',
    // Feste Veröffentlichungszeiten (deutsche Zeit).
    'slots' => ['08:00', '12:00', '16:00'],
    // Für die geplante Aufgabe in Plesk (api.php?r=cron&token=…). Leer = abgeschaltet.
    'cron_token' => '',
    // Optional: 'repo' => 'THFDerek00/wtfact', 'branch' => 'main', 'site' => 'https://wtfact.xyz',
    // 'site_dir' => '/pfad/zu/httpdocs', 'data_dir' => '/pfad/zu/wtfact-data'
];
