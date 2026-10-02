<?php
// Nur nötig, wenn Stimmen und Bewertungen in MySQL/MariaDB statt in SQLite landen sollen.
// Kopie als config.local.php in denselben Ordner legen (in Plesk: Dateien > httpdocs/api) und ausfüllen.
// Der automatische Upload lässt config.local.php in Ruhe. Die Tabellen legt die API selbst an.
return [
    'dsn' => 'mysql:host=localhost;dbname=wtfact;charset=utf8mb4',
    'user' => 'wtfact',
    'password' => '',
];
