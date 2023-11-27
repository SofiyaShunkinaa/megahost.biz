{if ($language == 'english')}    
    
    {$LANG.DServer.title = "Dedicated Servers"}
    {$LANG.DServer.statistics.desc1 = "Data Centers in"}
    {$LANG.DServer.statistics.desc2 = "Protocols"}
    {$LANG.DServer.statistics.desc3 = "Traffic"}
    {$LANG.DServer.statistics.sub1 = "  countries"}
    {$LANG.DServer.statistics.sub2 = " tariff plans"}
    {$LANG.DServer.statistics.sub3 = " Unlimited"}
    {$LANG.DServer.grid.title = "Tariff Plans"}
    {$LANG.DServer.list.title = "Included in Each Plan"}

    {$LANG.DServer.list1.1 = "Compatibility with Windows, Linux, macOS, iOS, Android, routers, smart TVs, and other devices"}
    {$LANG.DServer.list1.2 = "No Logs"}

    {$LANG.DServer.list2.1 = "Protocols: OpenVPN, PPTP, L2TP/IPsec, WireGuard, Socks 5 Proxy"}
    {$LANG.DServer.list2.2 = "Dedicated IPv4 addresses, option to add IPv6 addresses for free"}

    {$LANG.package_buy="Buy in One Click"}


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

    {$LANG.DServer.title = "Выделенные сервера"}
    {$LANG.DServer.statistics.desc1 = "Дата-центры в"}
    {$LANG.DServer.statistics.desc2 = "Протоколы"}
    {$LANG.DServer.statistics.desc3 = "Трафик"}
    {$LANG.DServer.statistics.sub1 = "  странах"}
    {$LANG.DServer.statistics.sub2 = " тарифных планов"}
    {$LANG.DServer.statistics.sub3 = " Безлимитный"}
    {$LANG.DServer.grid.title = "Тарифные планы"}
    {$LANG.DServer.list.title = "В каждый план включено"}

    {$LANG.DServer.list1.1 = "Совместимость с Windows, Linux, macOS, iOS, Android, роутерами, smart TV и другим устройствами "}
    {$LANG.DServer.list1.2 = "Отсутствие логов"}

    {$LANG.DServer.list2.1 = "Протоколы OpenVPN, PPTP, L2TP/IPsec, WireGuard, Socks 5 прокси"}
    {$LANG.DServer.list2.2 = "Выделенные IPv4 адреса, возможность бесплатно добавить IPv6 адреса"}

    {$LANG.package_buy="Купить в один клик"}

    {assign var=breadcrumb value=[
        [
            'link'=>"/index.php",
            'label'=>"Главная"
        ],
        [
            'link'=>"/dedicated-servers.php",
            'label'=>"Выделенные сервера"
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

<div class="container">
        <div class="main-header">

        {include file="$template/includes/pageheader.tpl" title="$displayTitle {if $product}$product{/if}" desc=$tagline showbreadcrumb=true}


        <div class="products-page-title">
                <h1>{$LANG.DServer.title}</h1>
            </div>
            <div class="products-page-statistics">
                <div class="pps-item">
                    <div class="statistics-desc">
                        <span>{$LANG.DServer.statistics.desc1}</span>
                    </div>

                    <div class="statistics-sub">
                        <span class="number">6</span>
                        <span>{$LANG.DServer.statistics.sub1}</span>
                    </div>
                </div>
                <div class="pps-item">
                    <div class="statistics-desc">
                        <span>{$LANG.DServer.statistics.desc2}</span>
                    </div>

                    <div class="statistics-sub">
                        <span class="number">25</span>
                        <span>{$LANG.DServer.statistics.sub2}</span>
                    </div>
                </div>
                <div class="pps-item">
                    <div class="statistics-desc">
                        <span>{$LANG.DServer.statistics.desc3}</span>
                    </div>

                    <div class="statistics-sub">
                        <span>{$LANG.DServer.statistics.sub3}</span>
                    </div>
                </div>

                
            </div>
        </div>
    </div>

    <div class="container-fluid container-faq">
            <div class="container">
                <h2 class="section-title">{$LANG.DServer.grid.title}</h2>
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
            <h2 class="section-title title-inculded">{$LANG.DServer.list.title}</h2>

            <div class="section-lists">
                <div class="section-lists__list-1">
                    <ul>
                        <li>{$LANG.DServer.list1.1}</li>
                        <li>{$LANG.DServer.list1.2}</li>
                        
                    </ul>
                </div>

                <div class="section-lists__list-2">
                    <ul>
                        <li>{$LANG.DServer.list2.1}</li>
                        <li>{$LANG.DServer.list2.2}</li>
                        
                    </ul>
                </div>
            </div>
        </div>