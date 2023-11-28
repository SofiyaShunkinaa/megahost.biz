{if ($language == 'english')}    

{$LANG.Blog.top.title="Blog"}
{$LANG.KB.top.title="Knowledge Base"}
{assign var=BlogSwitcher value=[
    [
        'name' => 'All',
        'key' => 'all'
    ],
    [
        'name' => 'DDoS',
        'key' => 'ddos'
    ],
    [
        'name' => 'Hosting',
        'key' => 'hosting'
    ],
    [
        'name' => 'News',
        'key' => 'news'
    ],
    [
        'name' => 'VNP',
        'key' => 'vpn'
    ],
    [
        'name' => 'VPS',
        'key' => 'VPS'
    ],
    [
        'name' => 'Dedicated servers',
        'key' => 'shared'
    ]
]}

{else}

{$LANG.Blog.top.title="Блог"}
{$LANG.KB.top.title="База знаний"}
{assign var=BlogSwitcher value=[
    [
        'name' => 'Все',
        'key' => 'all'
    ],
    [
        'name' => 'DDoS',
        'key' => 'ddos'
    ],
    [
        'name' => 'Хостинг',
        'key' => 'hosting'
    ],
    [
        'name' => 'Нововсти',
        'key' => 'news'
    ],
    [
        'name' => 'VNP',
        'key' => 'vpn'
    ],
    [
        'name' => 'VPS',
        'key' => 'VPS'
    ],
    [
        'name' => 'Выделенные сервера',
        'key' => 'shared'
    ]
]}

{/if}

{if file_exists("templates/$template/core/layouts/main-menu/{$RSThemes.layouts.name}/header.tpl")}
    {include file="{$template}/core/layouts/main-menu/{$RSThemes.layouts.name}/header.tpl"}
{/if}
{include file="$template/includes/common/layouts-vars.tpl"}

{if file_exists("templates/$template/includes/common/layouts-vars-custom.tpl")}  
    {include file="$template/includes/common/layouts-vars-custom.tpl"}  
{/if}

{assign var=iconsPages value=['clientareadomains', 'supportticketslist', 'clientareainvoices', 'clientareaproducts']}
{if (isset($skipAppNav) && !$skipAppNav) || !isset($skipAppNav)}
    <div class="app-nav{if $RSThemes.layouts.vars.type == "condensed"} app-nav-condensed{/if} {if $RSThemes.addonSettings.show_affixed_navigation == 'enabled'} sticky-navigation{/if}{if $RSThemes.addonSettings.show_affixed_navigation == 'enabled' && $RSThemes.layouts.name == "default"} sticky-navigation--default{/if}" {if $RSThemes.addonSettings.show_affixed_navigation == 'enabled'}data-site-navbar{/if}>
        <div class="app-nav-header {if $secondaryNavbar|@count == 0 && !$adminMasqueradingAsClient && !$adminLoggedIn}hidden-lg hidden-xl{/if}" id="header">
            <div class="container">
                <button class="app-nav-toggle navbar-toggle" type="button">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                {include file="$template/includes/common/logo.tpl"}
                {include file="$template/includes/menu/top-nav.tpl"}
            </div>
        </div>
        {include file="$template/includes/menu/mainmenu.tpl"}
    </div>
{/if}

{include file="$template/includes/network-issues-notifications.tpl"}
<div class="app-main {if $isOnePageOrder}app-main-order{/if}">
    {include file="$template/includes/validateuser.tpl"}
    {include file="$template/includes/verifyemail.tpl"}
    {if ((isset($skipMainHeader) && !$skipMainHeader) || !isset($skipMainHeader)) && ((isset($isOnePageOrder) && !$isOnePageOrder) || !isset($isOnePageOrder))}
        <div class="main-header">
            <div class="container">
                {if !$inShoppingCart}
                    {include file="$template/includes/pageheader.tpl" title="$displayTitle" desc=$tagline showbreadcrumb=true}
                {else}
                    {include file="$template/includes/pageheader.tpl" title="$displayTitle {if $product}$product{/if}" desc=$tagline showbreadcrumb=false}
                {/if}
            </div>
        </div>
    {/if}
    {if ((isset($skipAppNav) && !$skipAppNav) || !isset($skipAppNav)) && (isset($skipMainBody) || isset($isOnePageOrder)) && (isset($lagomClientAlerts->default) && $lagomClientAlerts->default)}
        <div class="custom-alerts">
            {$lagomClientAlerts->default}
        </div>
    {/if}
    {if ((isset($skipMainBody) && !$skipMainBody) || !isset($skipMainBody)) && !$isOnePageOrder}
    <div class="main-body{if $appMainBodyClasses} {$appMainBodyClasses}{/if}">
        <div class=" {if isset($skipMainBodyContainer) && $skipMainBodyContainer}-fluid without-padding{/if}">
            {if !$skipAppNav && $lagomClientAlerts->default}
                <div class="custom-alerts">
                    {$lagomClientAlerts->default}
                </div>
            {/if}
            <div class="container">
                <div class="section-header header-blog">
                    <h1 class="section-title">{$LANG.Blog.top.title}</h1>

                    <div class="switcher-wrapper">
                        <div class="switcher news-switcher sw-black">
                            {foreach from=$BlogSwitcher item=sw}
                                {if file_exists("templates/$template/core/pages/homepage/modern/shared/switcher.tpl")}
                                        {include file="$template/core/pages/homepage/modern/shared/switcher.tpl"}
                                    {/if}
                            {/foreach}   
                        </div>
                    </div>
                </div>

                <div class="section-header header-kb">
                    <h1 class="section-title">{$LANG.KB.top.title}</h1>
                </div>

                
            </div>

            {if !$inShoppingCart}<div class="main-grid container-dashboard container-faq">{/if}
                {* Main grid with sidebar *}
                {if !$skipMainSidebar}
                {* <div class="main-sidebar {if $sidebarOnRight} main-sidebar-right {/if}">
                    {if $RSThemes['addonSettings']['sticky_sidebars'] == "true"}<div class="sidebar-sticky">{/if}
                        <div class="sidebar sidebar-primary">
                            {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
                            {include file="$template/includes/sidebar/sidebar-custom.tpl"}
                        </div>
                        <div class="sidebar sidebar-secondary">
                            {include file="$template/includes/sidebar/sidebar-secondary-custom.tpl"}
                            {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                            {include file="$template/includes/sidebar/sidebar-promo.tpl"}
                        </div>
                        {if $RSThemes['addonSettings']['sticky_sidebars'] == "true"}</div>{/if}
                </div>*}
                <div class="main-content {if $mainContentClasses}{$mainContentClasses}{/if} {if $RSThemes.addonSettings.show_status_icon == 'displayed' && in_array($templatefile, $iconsPages)}status-icons-enabled{/if}">
                    {* Main grid without sidebar *}
                    {elseif (!isset($skipMainBodyContainer) || !$skipMainBodyContainer) && !$inShoppingCart}
                    <div class="main-content {if $mainContentClasses}{$mainContentClasses}{/if} {if $RSThemes.addonSettings.show_status_icon == 'displayed' && in_array($templatefile, $iconsPages)}status-icons-enabled{/if}">
                        {/if}
                        {/if}
