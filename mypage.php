<?php
use WHMCS\ClientArea;
use WHMCS\Database\Capsule;
define('CLIENTAREA', true);
require __DIR__ . '/init.php';
$ca = new ClientArea();

$language=Lang::trans('locale');

  $ca->setPageTitle('my page title');


$ca->initPage();


  $ca->setTemplate('mypage-us-lang');



$ca->output();