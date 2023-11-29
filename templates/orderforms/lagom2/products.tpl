{if ($language == 'english')}
    {$LANG.Products.title = "Cloud VPS on NVMe Drives"}
    {$LANG.Products.statistics.desc1 = "Data Centers in"}
    {$LANG.Products.statistics.desc2 = "Over"}
    {$LANG.Products.statistics.desc3 = "Traffic"}
    {$LANG.Products.statistics.sub1 = "  countries"}
    {$LANG.Products.statistics.sub2 = "  tariff plans"}
    {$LANG.Products.statistics.sub3 = "Unlimited"}
    {$LANG.Products.grid.title = "Tariff Plans"}
    {$LANG.Products.list.title = "Included in Each Plan"}

    {$LANG.Products.list1.1 = "Free UNIX Administration"}
    {$LANG.Products.list1.2 = "Any Operating Systems"}
    {$LANG.Products.list1.3 = "Free Migration of Your Projects"}
    {$LANG.Products.list1.4 = "High-Performance Servers"}
    {$LANG.Products.list1.5 = "Unlimited Traffic"}
    
    {$LANG.package_buy="Buy in one click"}

    {$LANG.Products.list2.1 = "Option to Add IPv6 Addresses for Free"}
    {$LANG.Products.list2.2 = "Regular Monitoring and Software Updates"}
    {$LANG.Products.list2.3 = "Individual Approach to Each Client"}
    {$LANG.Products.list2.4 = "Discounts for Payments of 3 Months or More"}
    {$LANG.Products.list2.5 = "Free Trial Period Up to 3 Days"}

    {assign var=VPSButtonsPeriod value=[
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
    {$LANG.Products.title = "Облачные VPS на NVME дисках"}
    {$LANG.Products.statistics.desc1 = "Дата-центры в"}
    {$LANG.Products.statistics.desc2 = "Более"}
    {$LANG.Products.statistics.desc3 = "Трафик"}
    {$LANG.Products.statistics.sub1 = "  странах"}
    {$LANG.Products.statistics.sub2 = "  тарифных планов"}
    {$LANG.Products.statistics.sub3 = "Безлимитный"}
    {$LANG.Products.grid.title = "Тарифные планы"}
    {$LANG.Products.list.title = "В каждый план включено"}

    {$LANG.Products.list1.1 = "Бесплатное UNIX администрирование"}
    {$LANG.Products.list1.2 = "Любые операционные системы"}
    {$LANG.Products.list1.3 = "Бесплатно перенесем ваши проекты"}
    {$LANG.Products.list1.4 = "Высокопроизводительные сервера"}
    {$LANG.Products.list1.5 = "Безлимитный трафик"}

    {$LANG.Products.list2.1 = "Возможность бесплатно добавить IPv6-адреса"}
    {$LANG.Products.list2.2 = "Регулярный мониторинг и обновление ПО"}
    {$LANG.Products.list2.3 = "Индивидуальный подход к каждому"}
    {$LANG.Products.list2.4 = "Скидки при оплате от 3 месяцев"}
    {$LANG.Products.list2.5 = "Бесплатный тестовый период до 3 дней"}

    {$LANG.package_buy="Купить в один клик"}

    {assign var=VPSButtonsPeriod value=[
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

{assign var=ProductsCurrency value=[
    [
        'name' => 'USD',
        'key' => 'usd'
    ],
    [
        'name' => 'RUB',
        'key' => 'rub'
    ]
]}




{if isset($RSThemes['pages'][$templatefile]) && file_exists($RSThemes['pages'][$templatefile]['fullPath'])}
    {include file=$RSThemes['pages'][$templatefile]['fullPath']}
{else}
    {include file="orderforms/$carttpl/common.tpl"}
    <div class="container">
        <div class="main-products-header">
            <div>
                {include file="$template/includes/breadcrumb.tpl"}
            </div>
            <div class="products-page-title">
                <h1>{$LANG.Products.title}</h1>
            </div>
            <div class="products-page-statistics">
                <div class="pps-item">
                    <div class="statistics-desc">
                        <span>{$LANG.Products.statistics.desc1}</span>
                    </div>

                    <div class="statistics-sub">
                        <span class="number">25</span>
                        <span>{$LANG.Products.statistics.sub1}</span>
                    </div>
                </div>

                <div class="pps-item">
                    <div class="statistics-desc">
                        <span>{$LANG.Products.statistics.desc2}</span>
                    </div>

                    <div class="statistics-sub">
                        <span class="number">140</span>
                        <span>{$LANG.Products.statistics.sub2}</span>
                    </div>
                </div>

                <div class="pps-item">
                    <div class="statistics-desc">
                        <span>{$LANG.Products.statistics.desc3}</span>
                    </div>

                    <div class="statistics-sub">
                        <span class="number"></span>
                        <span>{$LANG.Products.statistics.sub3}</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

        <div class="container-fluid container-faq">
            <div class="container">
                <h2 class="section-title">{$LANG.Products.grid.title}</h2>
                <div class="main-grid{if $mainGrid} {$mainGrid}{/if}">
                    {*{if $RSThemes['pages'][$templatefile]['config']['hideSidebar'] != '1'}
                        <div class="main-sidebar hidden-xs hidden-sm hidden-md {if $sidebarOnRight || $RSThemes['layouts']['name'] == 'left-nav-wide'} main-sidebar-right {/if}">
                            {if $RSThemes['addonSettings']['sticky_sidebars'] == "true"}<div class="sidebar-sticky">{/if}
                                {include file="orderforms/$carttpl/sidebar-categories.tpl"}
                            {if $RSThemes['addonSettings']['sticky_sidebars'] == "true"}</div>{/if}
                        </div>
                    {/if}*}
                    <div class="main-content{if $mainContentClasses} {$mainContentClasses}{/if}">
                    <div class="main-controls">
                        <div class="main-controls--left">
                            {if $RSThemes['pages'][$templatefile]['config']['hideSidebar'] != '1'}
                                {include file="orderforms/$carttpl/sidebar-categories-collapsed.tpl"}
                            {/if}
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
                                    {foreach from=$ProductsCurrency item=sw}
                                        {if file_exists("templates/$template/core/pages/homepage/modern/shared/switcher.tpl")}
                                        {include file="$template/core/pages/homepage/modern/shared/switcher.tpl"}
                                    {/if}
                                    {/foreach}
                                </div>
                            </div>

                            <div class="switcher-wrapper">
                                <div class="kb-switcher switcher">
                                    {foreach from=$VPSButtonsPeriod item=sw}
                                        {if file_exists("templates/$template/core/pages/homepage/modern/shared/switcher.tpl")}
                                        {include file="$template/core/pages/homepage/modern/shared/switcher.tpl"}
                                    {/if}
                                    {/foreach}
                                </div>
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

        <div class="container container-products-list">
            <h2 class="section-title title-inculded">{$LANG.Products.list.title}</h2>

            <div class="section-lists">
                <div class="section-lists__list-1">
                    <ul>
                        <li>{$LANG.Products.list1.1}</li>
                        <li>{$LANG.Products.list1.2}</li>
                        <li>{$LANG.Products.list1.3}</li>
                        <li>{$LANG.Products.list1.4}</li>
                        <li>{$LANG.Products.list1.5}</li>
                    </ul>
                </div>

                <div class="section-lists__list-2">
                    <ul>
                        <li>{$LANG.Products.list2.1}</li>
                        <li>{$LANG.Products.list2.2}</li>
                        <li>{$LANG.Products.list2.3}</li>
                        <li>{$LANG.Products.list2.4}</li>
                        <li>{$LANG.Products.list2.5}</li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="separator">
        <svg xmlns="http://www.w3.org/2000/svg" width="1292" height="2" viewBox="0 0 1292 2" fill="none">
    <path d="M1 1L1291 0.999887" stroke="url(#paint0_linear_379_27252)" stroke-linecap="round"/>
    <defs>
        <linearGradient id="paint0_linear_379_27252" x1="1" y1="1.49912" x2="1291" y2="1.49418" gradientUnits="userSpaceOnUse">
        <stop stop-color="#B871CF"/>
        <stop offset="1" stop-color="#8392D5"/>
        </linearGradient>
    </defs>
    </svg>
    </div>

        
    
    {include file="orderforms/$carttpl/includes/recommendations-modal.tpl"}
{/if}