<?php

use WHMCS\ClientArea;
use WHMCS\Database\Capsule;

define('CLIENTAREA', true);
require __DIR__ . '/init.php';
$ca = new ClientArea();

$language=Lang::trans('locale');
$ca->setPageTitle('Opportunities');
$ca->initPage();

$ca->assign('custompage', 'full'); // Uncoment this line if you'd like your page to be full width, it's necessary for pages like: https://lagom.rsstudio.net/demo-whmcs/index.php?rp=/store/website-builder
//$ca->requireLogin(); // Uncomment this line to require a login to access this page

# Define the template filename to be used without the .tpl extension
$ca->setTemplate('opportunities');
$ca->output();


// <?php
// use WHMCS\ClientArea;
// use WHMCS\Database\Capsule;
// define('CLIENTAREA', true);
// require __DIR__ . '/init.php';
// $ca = new ClientArea();

// $language=Lang::trans('locale');
// if ($language == 'en_GB') {
//   $ca->setPageTitle('my page title');
// }
// else {
//   $ca->setPageTitle('заголовок моей страницы');
// }

// $ca->initPage();

// if ($language == 'en_GB') {
//   $ca->setTemplate('mypage-us-lang');
// } 
// else {
//   $ca->setTemplate('mypage-default-lang');
// }


// $ca->output();