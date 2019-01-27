<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	'type' => 'MySQLDatabase',
	'server' => 'localhost',
	'username' => 'root',
	'password' => 'goodboy2',
	'database' => 'SS_hihi3a',
	'path' => ''
);

// Set the site locale
i18n::set_locale('en_NZ');
