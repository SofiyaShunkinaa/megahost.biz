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
        'name' => 'Одинарный',
        'key' => 'single'
    ],
    [
        'name' => 'Двойной',
        'key' => 'double'
    ]
]}

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
                                    {foreach from=$VpnButtonsL item=sw}
                                        {if file_exists("templates/$template/core/pages/homepage/modern/shared/switcher.tpl")}
                                                {include file="$template/core/pages/homepage/modern/shared/switcher.tpl"}
                                            {/if}
                                    {/foreach}
                                </div>
                            </div>

                        </div>

                        <div class="main-controls--right">
                            <div class="switcher-wrapper">
                                <div class="products-switcher switcher">
                                    {foreach from=$VpnButtonsR item=sw}
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