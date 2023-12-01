<?php

use WHMCS\ClientArea;
use WHMCS\Database\Capsule;

define('CLIENTAREA', true);
require __DIR__ . '/init.php';
$ca = new ClientArea();

$ca->setPageTitle('Opportunities');
$ca->initPage();

$ca->assign('custompage', 'full'); // Uncoment this line if you'd like your page to be full width, it's necessary for pages like: https://lagom.rsstudio.net/demo-whmcs/index.php?rp=/store/website-builder
//$ca->requireLogin(); // Uncomment this line to require a login to access this page

# Define the template filename to be used without the .tpl extension
$ca->setTemplate('opportunities-macos');
$ca->output();