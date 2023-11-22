<?php
define('CLIENTAREA', true);

require __DIR__ . '/configuration.php'; // Подключаем файл конфигурации WHMCS

use WHMCS\ClientArea;
use WHMCS\Database\Capsule;

require ROOTDIR . '/includes/dbfunctions.php'; // Здесь подключаем файлы с функциями работы с базой данных
require ROOTDIR . '/includes/clientfunctions.php'; // Файлы с функциями для работы с клиентами

$ca = new ClientArea();

$ca->setPageTitle('Название вашей страницы');

$ca->initPage();

// Ваши дополнительные настройки и логика здесь

$ca->output();
