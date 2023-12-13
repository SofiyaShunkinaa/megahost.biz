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
                                    
                                        {if file_exists("templates/$template/core/pages/homepage/modern/shared/switchers/currency.tpl")}
                                                {include file="$template/core/pages/homepage/modern/shared/switchers/currency.tpl"}
                                            {/if}
                                   
                                </div>
                            </div>

                            <div class="switcher-wrapper">
                                <div class="products-switcher switcher">
                                    
                                        {if file_exists("templates/$template/core/pages/homepage/modern/shared/switchers/period.tpl")}
                                                {include file="$template/core/pages/homepage/modern/shared/switchers/period.tpl"}
                                            {/if}
                                   
                                </div>
                            </div>
                        </div>

{if $products}
                            <div class="section products" id="products">
                                <div class="row row-eq-height row-eq-height-sm">
                                    {assign var=counter value=1}
                                    {assign var=productsCount value=$products|count}
                                    {foreach from=$products item=product}
                                        {$idPrefix = ($product.bid) ? ("bundle"|cat:$product.bid) : ("product"|cat:$product.pid)}
                                        <div class="col-4{if $RSThemes['pages'][$templatefile]['config']['horizontalPackage'] == 1} col-12{/if}">
                                            <div class="package{if $product.isFeatured} package-featured{/if}{if $RSThemes['pages'][$templatefile]['config']['horizontalPackage'] == 1} package-horizontal{/if}" id="{$idPrefix}">
                                                <div class="package-side package-side-left">
                                                    <div class="package-header">   
                                                        {if $product.isFeatured}
                                                            <span class="label-corner label-primary">{$rslang->trans('order.featured')}</span>
                                                        {/if}
                                                        <h3 class="package-title">{$product.name}</h3>
                                                    </div>
                                                    <div class="package-body">
                                                        <div class="package-content">
                                                            {if $product.features}
                                                                <ul class="package-features">
                                                                    {foreach $product.features as $feature => $value}
                                                                        <li id="{$idPrefix}-feature{$value@iteration}">
                                                                            {$feature} {$value}
                                                                        </li>
                                                                    {/foreach}
                                                                </ul>
                                                            {/if}
                                                            {if $product.featuresdesc}
                                                                <p>{$product.featuresdesc}</p>
                                                            {/if}
                                                        </div>
                                                    </div>
                                                </div>    
                                                <div class="package-footer package-side package-side-right">
                                                    <div class="package-price">
                                                        <div class="price">
                                                            {if $product.bid}
                                                                <div class="price-starting-from">{$LANG.bundledeal}</div>

                                                                {if $product.displayprice}                                                        
                                                                    {include file="$template/includes/common/price.tpl" 
                                                                        price=$product.displayprice
                                                                    }
                                                                {/if}
                                                            {else}
                                                                {if $product.pricing.hasconfigoptions}
                                                                    <div class="price-starting-from">{$LANG.startingfrom}</div>
                                                                {/if}
                                                                {if isset($DiscountCenterAddonIsActive)}
                                                                    {include file="$template/includes/common/price.tpl" 
                                                                        price=$product.pricing.minprice.price 
                                                                        priceCycle=$product.pricing.minprice.cycle
                                                                        priceType=$product.pricing.type
                                                                    }
                                                                {else}
                                                                    {include file="$template/includes/common/price.tpl" 
                                                                        price=$product.pricing.minprice.price 
                                                                        priceCycle=$product.pricing.minprice.cycle
                                                                        priceType=$product.pricing.type
                                                                        priceSetupFee=$product.pricing.minprice.setupFee
                                                                    }
                                                                {/if}                                                
                                                            {/if}
                                                        </div>
                                                    </div>
                                                    {$bestCycle = false}
                                                    {if isset($RSThemes['addonSettings']['price_calculation']) && $RSThemes['addonSettings']['price_calculation'] == "lowest"}
                                                        {if $product.productUrl|strstr:"?"}
                                                            {$bestCycle="&billingcycle=`$productsPricing[$product.pid]->cycle`"}
                                                        {else}
                                                            {$bestCycle="?billingcycle=`$productsPricing[$product.pid]->cycle`"}
                                                        {/if}
                                                    {/if}

                                                    {if isset($product_restock_notifierAddonIsActive)}
                                                        {if $product.stockcontrol == 1 && $product.qty <= 0}
                                                        <div>
                                                            <a href="index.php?m=product_restock_notifier&_action=notify&_pid={$product.pid}" class="btn btn-package btn-lg btn-primary-faded {if $RSThemes['pages']['products']['config']['productColumns'] == '4' && $RSThemes['pages']['products']['config']['hideSidebar'] == '0'} no-min-width{/if} {if $product.pending_notification}disabled{/if}" {if $product.pending_notification}disabled="true"{/if}>
                                                                {if $product.pending_notification}
                                                                    {$rslang->trans('restock_notifier.be_notified')}
                                                                {else}
                                                                    {$rslang->trans('restock_notifier.on_restock')}
                                                                {/if}
                                                            </a>
                                                            </div>
                                                            <a href="#" class="package-desc actions__buy">{$LANG.package_buy}</a>

                                                        {else}
                                                        <div>
                                                            <a href="{$product.productUrl}{if $bestCycle}{$bestCycle}{/if}" class="btn btn-package btn-lg btn-primary btn-order-now {if $RSThemes['pages']['products']['config']['productColumns'] == '4' && $RSThemes['pages']['products']['config']['hideSidebar'] == '0'} no-min-width{/if} {if $product.stockControlEnabled && $product.qty == '0'}disabled{/if}" id="{$idPrefix}-order-button" {if $product.hasRecommendations} data-has-recommendations="1"{/if}>
                                                                {$LANG.ordernowbutton}
                                                            </a>
                                                            </div>
                                                            <a href="#" class="package-desc actions__buy">{$LANG.package_buy}</a>

                                                        {/if}
                                                    {else}
                                                    <div>
                                                        <a href="{$product.productUrl}{if $bestCycle}{$bestCycle}{/if}" class="btn btn-package btn-lg btn-primary btn-order-now {if $RSThemes['pages']['products']['config']['productColumns'] == '4' && $RSThemes['pages']['products']['config']['hideSidebar'] == '0'} no-min-width{/if} {if $product.stockControlEnabled && $product.qty == '0'}disabled{/if}" id="{$idPrefix}-order-button" {if $product.hasRecommendations} data-has-recommendations="1"{/if}>
                                                            {$LANG.ordernowbutton}
                                                        </a>
                                                        </div>
                                                        <a href="#" class="package-desc actions__buy">{$LANG.package_buy}</a>

                                                    {/if}
                                                    {if $product.stockControlEnabled}
                                                        <div class="package-qty">
                                                            {$product.qty} {$LANG.orderavailable}
                                                        </div>
                                                    {/if}
                                                </div>
                                            </div>
                                        </div>
                                        
                                        {if $RSThemes['pages'][$templatefile]['config']['productColumns'] == '2'}
                                            {if $counter % 2 == 0}</div><div class="row row-eq-height row-eq-height-sm">{/if}
                                        {elseif $RSThemes['pages']['products']['config']['productColumns'] == '3'}
                                            {if $counter % 3 == 0}</div><div class="row row-eq-height row-eq-height-sm">{/if}
                                        {elseif $RSThemes['pages']['products']['config']['productColumns'] == '4'}
                                            {if $counter % 4 == 0}</div><div class="row row-eq-height row-eq-height-sm">{/if}
                                        {else}
                                            {if $productsCount == '4'}
                                                {if $counter % 2 == 0}</div><div class="row row-eq-height row-eq-height-sm">{/if}
                                            {/if}
                                        {/if}
                                        {$counter = $counter +1}
                                    {/foreach}
                                </div>
                            </div>
                        {/if}  
                        {if $productGroup}  
                            {if count($productGroup.features) > 0}
                                <div class="section">
                                    <div class="section-header">
                                        <h2 class="section-title">{$LANG.orderForm.includedWithPlans}</h2>
                                    </div>
                                    <div class="section-body">
                                        <div class="panel panel-form">
                                            <div class="panel-body">
                                                <ul class="list-features list-info">
                                                    {foreach $productGroup.features as $features}
                                                        <li><i class="lm lm-check"></i><span class="h6 m-b-0">{$features.feature}<span></li>
                                                    {/foreach}
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            {/if}
                        {/if} 
                        
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