{if ($language == 'english')}    

    {$LANG.VHosting.title = "Virtual Hosting"}
{$LANG.VHosting.statistics.desc1 = "Support for Popular CMS"}

{$LANG.VHosting.statistics.sub1 = "Wordpress, Joomla, Drupal, Bitrix, Tilda, OpenCart"}

{$LANG.VHosting.grid.title = "Tariff Plans"}
{$LANG.VHosting.list.title = "Included in Each Plan"}

{$LANG.VHosting.list1.1 = "Free SSL Certificate"}
{$LANG.VHosting.list1.2 = "PHP 5.6–8.1, Perl 5.3, Cron"}
{$LANG.VHosting.list1.3 = "NVMe SSD Drives"}
{$LANG.VHosting.list1.4 = "Ioncube Loader"}
{$LANG.VHosting.list1.5 = "POP3, IMAP, SMTP"}

{$LANG.VHosting.list2.1 = "Option to Add IPv6 Addresses for Free"}
{$LANG.VHosting.list2.2 = "ImageMagick"}
{$LANG.VHosting.list2.3 = "FTP, SFTP Access"}
{$LANG.VHosting.list2.4 = "phpMyAdmin, Webmail"}
{$LANG.VHosting.list2.5 = "7 Days Trial Mode"}
{$LANG.VHosting.list2.6 = "Free Assistance with Migration of Your Projects"}

{$LANG.package_buy="Buy in One Click"}


{assign var=breadcrumb value=[
    [
        'link'=>"/index.php",
        'label'=>"Main"
    ],
    [
        'link'=>"/virtual-hosting.php",
        'label'=>"Virtual Hosting"
    ]
]}

{assign var=DSButtonsCurrency value=[
    [
        'name' => 'USD',
        'key' => 'usd'
    ],
    [
        'name' => 'RUB',
        'key' => 'rub'
    ]
]}

    {assign var=DSButtonsPeriod value=[
        [
            'name' => '1 mo.',
            'key' => '1mnth'
        ],
        [
            'name' => '3 mo.',
            'key' => '3mnth'
        ],
        [
            'name' => '6 mo.',
            'key' => '6mnth'
        ],
        [
            'name' => '1 year',
            'key' => '1year'
        ]
    ]}

{else}

        {$LANG.VHosting.title = "Виртуальный хостинг"}
    {$LANG.VHosting.statistics.desc1 = "Поддержка популярных CMS"}

    {$LANG.VHosting.statistics.sub1 = "Wordpress, Joomla, Drupal, Битрикс, Tilda, OpenCart"}

    {$LANG.VHosting.grid.title = "Тарифные планы"}
    {$LANG.VHosting.list.title = "В каждый план включено"}

    {$LANG.VHosting.list1.1 = "Бесплатный SSL Сертификат"}
    {$LANG.VHosting.list1.2 = "PHP 5.6–8.1, Perl 5.3, Cron"}
    {$LANG.VHosting.list1.3 = "NVMe SSD-диски"}
    {$LANG.VHosting.list1.4 = "Ioncube loader"}
    {$LANG.VHosting.list1.5 = "POP3, IMAP, SMTP"}

    {$LANG.VHosting.list2.1 = "Возможность бесплатно добавить IPv6-адреса"}
    {$LANG.VHosting.list2.2 = "ImageMagick"}
    {$LANG.VHosting.list2.3 = "FTP, SFTP доступ"}
    {$LANG.VHosting.list2.4 = "phpMyAdmin, Webmail"}
    {$LANG.VHosting.list2.5 = "7 дней тестовый режим"}
    {$LANG.VHosting.list2.6 = "Бесплатно поможем с миграцией ваших проектов"}

    {$LANG.package_buy="Купить в один клик"}


    {assign var=breadcrumb value=[
    [
        'link'=>"/index.php",
        'label'=>"Главная"
    ],
    [
        'link'=>"/virtual-hosting.php",
        'label'=>"Виртуальный хостинг"
    ]
]}

{assign var=DSButtonsPeriod value=[
    [
        'name' => '1 мес.',
        'key' => '1mnth'
    ],
    [
        'name' => '3 мес.',
        'key' => '3mnth'
    ],
    [
        'name' => '6 мес.',
        'key' => '6mnth'
    ],
    [
        'name' => '1 год',
        'key' => '1year'
    ]
]}
{/if}

<div class="container">
        <div class="main-header">

        {include file="$template/includes/pageheader.tpl" title="$displayTitle {if $product}$product{/if}" desc=$tagline showbreadcrumb=true}


        <div class="products-page-title">
                <h1>{$LANG.VHosting.title}</h1>
            </div>
            <div class="products-page-statistics">
                <div class="pps-item">
                    <div class="statistics-desc">
                        <span>{$LANG.VHosting.statistics.desc1}</span>
                    </div>

                    <div class="statistics-sub">
                        <span>{$LANG.VHosting.statistics.sub1}</span>
                    </div>
                </div>
                               
            </div>
        </div>
    </div>

    <div class="container-fluid container-faq">
            <div class="container">
                <h2 class="section-title">{$LANG.VHosting.grid.title}</h2>
                <div class="main-grid{if $mainGrid} {$mainGrid}{/if}">

                <div class="main-content{if $mainContentClasses} {$mainContentClasses}{/if}">
                    <div class="main-controls">
                        <div class="main-controls--left">
                            
                            {if $errormessage}
                                <div class="alert alert-lagom alert-danger">
                                    {$errormessage}
                                </div>
                            {elseif !$productGroup}
                                <div class="alert alert-lagom alert-info">
                                    {lang key='orderForm.selectCategory'}
                                </div>
                            {/if}
                        </div>

                        <div class="main-controls--right">
                            <div class="switcher-wrapper">
                                <div class="products-switcher switcher">
                                    {foreach from=$DSButtonsCurrency item=sw}
                                        {if file_exists("templates/$template/core/pages/homepage/modern/shared/switcher.tpl")}
                                                {include file="$template/core/pages/homepage/modern/shared/switcher.tpl"}
                                            {/if}
                                    {/foreach}
                                </div>
                            </div>

                            <div class="switcher-wrapper">
                                <div class="products-switcher switcher">
                                    {foreach from=$DSButtonsPeriod item=sw}
                                        {if file_exists("templates/$template/core/pages/homepage/modern/shared/switcher.tpl")}
                                                {include file="$template/core/pages/homepage/modern/shared/switcher.tpl"}
                                            {/if}
                                    {/foreach}
                                </div>
                            </div>
                        </div>
                            </div>
                            </div>
                            </div>
                            </div>
                            </div>

                            <div class="container container-products-list">
            <h2 class="section-title title-inculded">{$LANG.VHosting.list.title}</h2>

            <div class="section-lists">
                <div class="section-lists__list-1">
                    <ul>
                        <li>{$LANG.VHosting.list1.1}</li>
                        <li>{$LANG.VHosting.list1.2}</li>
                        <li>{$LANG.VHosting.list1.3}</li>
                        <li>{$LANG.VHosting.list1.4}</li>
                        <li>{$LANG.VHosting.list1.5}</li>
                        
                    </ul>
                </div>

                <div class="section-lists__list-2">
                    <ul>
                        <li>{$LANG.VHosting.list2.1}</li>
                        <li>{$LANG.VHosting.list2.2}</li>
                        <li>{$LANG.VHosting.list2.3}</li>
                        <li>{$LANG.VHosting.list2.4}</li>
                        <li>{$LANG.VHosting.list2.5}</li>
                        <li>{$LANG.VHosting.list2.6}</li>
                        
                    </ul>
                </div>
            </div>
        </div>