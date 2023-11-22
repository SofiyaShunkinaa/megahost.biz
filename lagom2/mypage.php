<?php
use WHMCS\ClientArea;
use WHMCS\Database\Capsule;
define('CLIENTAREA', true);
require __DIR__ . '/init.php';
$ca = new ClientArea();

$language=Lang::trans('locale');
if ($language == 'en_GB') {
  $ca->setPageTitle('my page title');
}
else {
  $ca->setPageTitle('заголовок моей страницы');
}

$ca->initPage();

if ($language == 'en_GB') {
  $ca->setTemplate('mypage-us-lang');
} 
else {
  $ca->setTemplate('mypage-default-lang');
}

$ca->output();