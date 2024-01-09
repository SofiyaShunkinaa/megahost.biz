{if ($language == 'english')}
    
    {$LANG.VPNServer.title = "VPN Server"}
    {$LANG.VPNServer.statistics.desc1 = "Data Centers in"}
    {$LANG.VPNServer.statistics.desc2 = "Protocols"}
    {$LANG.VPNServer.statistics.sub1 = "  countries"}
    {$LANG.VPNServer.statistics.sub2 = "OpenVPN, PPTP, L2TP/IPsec, WireGuard, Socks 5 Proxy"}
    {$LANG.VPNServer.grid.title = "Tariff Plans"}
    {$LANG.VPNServer.list.title = "Included in Each Plan"}

    {$LANG.VPNServer.list1.1 = "Compatibility with Windows, Linux, macOS, iOS, Android, routers, smart TVs, and other devices"}
    {$LANG.VPNServer.list1.2 = "No Logs"}

    {$LANG.VPNServer.list2.1 = "Protocols: OpenVPN, PPTP, L2TP/IPsec, WireGuard, Socks 5 Proxy"}
    {$LANG.VPNServer.list2.2 = "Dedicated IPv4 addresses, option to add IPv6 addresses for free"}

    {$LANG.package_buy="Buy in One Click"}
    {$LANG.speedtest="Speed test"}

    {$LANG.Speedtest.Title="bhukik"}

    {assign var=breadcrumb value=[
        [
            'link'=>"/index.php",
            'label'=>"Main"
        ],
        [
            'link'=>"/vpn-server.php",
            'label'=>"VPN Server"
        ]
    ]}

        {assign var=VpnButtonsL value=[
        [
            'name' => 'Single',
            'key' => 'single'
        ],
        [
            'name' => 'Double',
            'key' => 'double'
        ]
    ]}

{else}

    {$LANG.VPNServer.title = "Сервер VPN"}
    {$LANG.VPNServer.statistics.desc1 = "Дата-центры в"}
    {$LANG.VPNServer.statistics.desc2 = "Протоколы"}
    {$LANG.VPNServer.statistics.sub1 = "  странах"}
    {$LANG.VPNServer.statistics.sub2 = "OpenVPN, PPTP, L2TP/IPsec, WireGuard, Socks 5 прокси"}
    {$LANG.VPNServer.grid.title = "Тарифные планы"}
    {$LANG.VPNServer.list.title = "В каждый план включено"}

    {$LANG.VPNServer.list1.1 = "Совместимость с Windows, Linux, macOS, iOS, Android, роутерами, smart TV и другим устройствами "}
    {$LANG.VPNServer.list1.2 = "Отсутствие логов"}

    {$LANG.VPNServer.list2.1 = "Протоколы OpenVPN, PPTP, L2TP/IPsec, WireGuard, Socks 5 прокси"}
    {$LANG.VPNServer.list2.2 = "Выделенные IPv4 адреса, возможность бесплатно добавить IPv6 адреса"}

    {$LANG.package_buy="Купить в один клик"}
    {$LANG.speedtest="Проверить скорость"}

 
    


        {assign var=breadcrumb value=[
        [
            'link'=>"/index.php",
            'label'=>"Главная"
        ],
        [
            'link'=>"/vpn-server.php",
            'label'=>"Сервер VPNr"
        ]
    ]}

        {assign var=VpnButtonsL value=[
        [
            'name' => 'Одинарный',
            'key' => 'single'
        ],
        [
            'name' => 'Двойной',
            'key' => 'double'
        ]
    ]}

{/if}

{$LANG.Speedtest.Ping="Ping"}
{$LANG.Speedtest.Download="Download"}
{$LANG.Speedtest.Speed="Speed"}

{assign var=VpnButtonsR value=[
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
                <h1>{$LANG.VPNServer.title}</h1>
            </div>
            <div class="products-page-statistics">
                <div class="pps-item">
                    <div class="statistics-desc">
                        <span>{$LANG.VPNServer.statistics.desc1}</span>
                    </div>

                    <div class="statistics-sub">
                        <span class="number">6</span>
                        <span>{$LANG.VPNServer.statistics.sub1}</span>
                    </div>
                </div>
                <div class="pps-item">
                    <div class="statistics-desc">
                        <span>{$LANG.VPNServer.statistics.desc2}</span>
                    </div>

                    <div class="statistics-sub">
                        <span>{$LANG.VPNServer.statistics.sub2}</span>
                    </div>
                </div>

                
            </div>
        </div>
    </div>

    <div class="container-fluid container-faq">
            <div class="container">
                <h2 class="section-title">{$LANG.VPNServer.grid.title}</h2>
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

                            <div class="switcher-wrapper">
                                <div class="products-switcher switcher">
                                        {if file_exists("templates/$template/core/pages/homepage/modern/shared/switchers/plan.tpl")}
                                                {include file="$template/core/pages/homepage/modern/shared/switchers/plan.tpl"}
                                            {/if}
                                </div>
                            </div>

                            <button class="btn btn-default btn-speedtest">
                            
                                {if file_exists("templates/$template/assets/img/icons/speedtest.svg")}
                                    {include file="templates/$template/assets/img/icons/speedtest.svg"}
                                {/if}

                                {$LANG.speedtest}
                            </button>

                            <div class="popup-speedtest">
                                <div class="popup-container">
                                    <div class="popup-article">
                                        <div class="popup-title"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12Z" stroke="#FDFDFD" stroke-width="1.5"/>
<path d="M19 19L17.5 17.5" stroke="#FDFDFD" stroke-width="1.5" stroke-linecap="round"/>
<path d="M19 5L17.5 6.5" stroke="#FDFDFD" stroke-width="1.5" stroke-linecap="round"/>
<path d="M5 19L6.5 17.5" stroke="#FDFDFD" stroke-width="1.5" stroke-linecap="round"/>
<path d="M5 5L6.5 6.5" stroke="#FDFDFD" stroke-width="1.5" stroke-linecap="round"/>
<path d="M2 12H4" stroke="#FDFDFD" stroke-width="1.5" stroke-linecap="round"/>
<path d="M19.9998 12L21.9998 12" stroke="#FDFDFD" stroke-width="1.5" stroke-linecap="round"/>
<path d="M12 4.00021L12 2.00021" stroke="#FDFDFD" stroke-width="1.5" stroke-linecap="round"/>
<path d="M15 12.0009C15 13.6577 13.6569 15.0009 12 15.0009C10.3431 15.0009 9 13.6577 9 12.0009C9 11.3706 9.43408 10.4964 9.972 9.65497C10.7764 8.39671 11.1786 7.76758 12 7.76758C12.8214 7.76758 13.2236 8.39671 14.028 9.65497C14.5659 10.4964 15 11.3706 15 12.0009Z" stroke="#FDFDFD" stroke-width="1.5"/>
</svg>
{$LANG.Speedtest.Title}<div>

                                        <div clss="popup-desc">
                                        
                                        <div class="popup-desc-1"></div>
                                        <div class="popup-desc-2"></div>
                                        <div class="popup-desc-3"></div>
                                        
                                        </div>
                                    </div>

                                    <div class="popup-speedometer"></div>

                                    <div class="popup-graphic"></div>

                                    <div class="popup-btn"></div>

                                </div>
                            </div>

                        </div>

                        <div class="main-controls--right">
                            <div class="switcher-wrapper">
                                <div class="products-switcher switcher">
                                        {if file_exists("templates/$template/core/pages/homepage/modern/shared/switcher.tpl")}
                                                {include file="templates/$template/core/pages/homepage/modern/shared/switcher.tpl"}
                                            {/if}
                                </div>
                            </div>
                            </div>
                            </div>
                            </div>
                            </div>
                            </div>
                            </div>

<div class="container container-products-list">
            <h2 class="section-title title-inculded">{$LANG.VPNServer.list.title}</h2>

            <div class="section-lists">
                <div class="section-lists__list-1">
                    <ul>
                        <li>{$LANG.VPNServer.list1.1}</li>
                        <li>{$LANG.VPNServer.list1.2}</li>
                        
                    </ul>
                </div>

                <div class="section-lists__list-2">
                    <ul>
                        <li>{$LANG.VPNServer.list2.1}</li>
                        <li>{$LANG.VPNServer.list2.2}</li>
                        
                    </ul>
                </div>
            </div>
        </div>