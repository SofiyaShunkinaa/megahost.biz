{$LANG.BudgetIpv.title = "Бюджетные IPv6 VPS"}
{$LANG.BudgetIpv.statistics.desc1 = "Локации"}
{$LANG.BudgetIpv.statistics.desc2 = "Защита"}

{$LANG.BudgetIpv.statistics.sub1 = " страны"}
{$LANG.BudgetIpv.statistics.sub2 = "от DDoS атак"}

{$LANG.BudgetIpv.grid.title = "Тарифные планы"}
{$LANG.BudgetIpv.list.title = "В каждый план включено"}

{$LANG.BudgetIpv.list1.1 = "Бесплатный SSL Сертификат"}
{$LANG.BudgetIpv.list1.2 = "PHP 5.6–8.1, Perl 5.3, Cron"}
{$LANG.BudgetIpv.list1.3 = "NVMe SSD-диски"}
{$LANG.BudgetIpv.list1.4 = "Ioncube loader"}
{$LANG.BudgetIpv.list1.5 = "POP3, IMAP, SMTP"}

{$LANG.BudgetIpv.list2.1 = "Поддержка популярных CMS: Wordpress, Joomla, Drupal, Битрикс, Tilda, OpenCart и др"}
{$LANG.BudgetIpv.list2.2 = "Бесплатный тестовый период до 7 дней"}
{$LANG.BudgetIpv.list2.3 = "Скидки при оплате от 3 месяцев"}
{$LANG.BudgetIpv.list2.4 = "phpMyAdmin, Webmail"}
{$LANG.BudgetIpv.list2.5 = "ImageMagick"}
{$LANG.BudgetIpv.list2.6 = "FTP, SFTP доступ"}

{$LANG.package_buy="Купить в один клик"}

{assign var=breadcrumb value=[
    [
        'link'=>"/index.php",
        'label'=>"Main"
    ],
    [
        'link'=>"/dedicated-servers.php",
        'label'=>"Dedicated servers"
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

<div class="container">
        <div class="main-header">

        {include file="$template/includes/pageheader.tpl" title="$displayTitle {if $product}$product{/if}" desc=$tagline showbreadcrumb=true}


        <div class="products-page-title">
                <h1>{$LANG.BudgetIpv.title}</h1>
            </div>
            <div class="products-page-statistics">
                <div class="pps-item">
                    <div class="statistics-desc">
                        <span>{$LANG.BudgetIpv.statistics.desc1}</span>
                    </div>

                    <div class="statistics-sub">
                        <span class="number">3</span>
                        <span>{$LANG.BudgetIpv.statistics.sub1}</span>
                    </div>
                </div>

                <div class="pps-item">
                    <div class="statistics-desc">
                        <span>{$LANG.BudgetIpv.statistics.desc2}</span>
                    </div>

                    <div class="statistics-sub">
                        <span>{$LANG.BudgetIpv.statistics.sub2}</span>
                    </div>
                </div>           
            </div>
        </div>
    </div>

    <div class="container-fluid container-faq">
            <div class="container">
                <h2 class="section-title">{$LANG.BudgetIpv.grid.title}</h2>
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
            <h2 class="section-title title-inculded">{$LANG.BudgetIpv.list.title}</h2>

            <div class="section-lists">
                <div class="section-lists__list-1">
                    <ul>
                        <li>{$LANG.BudgetIpv.list1.1}</li>
                        <li>{$LANG.BudgetIpv.list1.2}</li>
                        <li>{$LANG.BudgetIpv.list1.3}</li>
                        <li>{$LANG.BudgetIpv.list1.4}</li>
                        <li>{$LANG.BudgetIpv.list1.5}</li>
                        
                    </ul>
                </div>

                <div class="section-lists__list-2">
                    <ul>
                        <li>{$LANG.BudgetIpv.list2.1}</li>
                        <li>{$LANG.BudgetIpv.list2.2}</li>
                        <li>{$LANG.BudgetIpv.list2.3}</li>
                        <li>{$LANG.BudgetIpv.list2.4}</li>
                        <li>{$LANG.BudgetIpv.list2.5}</li>
                        <li>{$LANG.BudgetIpv.list2.6}</li>
                        
                    </ul>
                </div>
            </div>
        </div>