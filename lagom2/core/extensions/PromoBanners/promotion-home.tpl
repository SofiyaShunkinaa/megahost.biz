{assign var=sliderCounter value=false}
{assign var=home value=['title'=>'Быстрые <b>VPS</b> сервера с NVMe SSD дисками']}
{$LANG.home_subtitle="Бесплатное администрирование и тестовый период"}
{$LANG.home_action="Выбрать услугу"}

{foreach from=$homepage->getPromotionBanner() item=slide key=k name=slideLoop}
    {if ($slide->slide_begin_time <= $smarty.now && $slide->slide_end_time >= $smarty.now) || ($slide->slide_begin_time eq 0 && $slide->slide_end_time eq 0) || ($slide->slide_begin_time <= $smarty.now && !$slide->slide_end_time)}
        {if $slide->slide_options.promotion['homepage'] eq '1' && $slide->slide_show eq '1'}
            {$sliderCounter = $sliderCounter +1}
        {/if}
    {/if}
{/foreach}

{if $homepage->getPromotionBanner()|count neq 0 && $sliderCounter neq 0}
    <style type="text/css">
        .site .site-banner:before {
            display: none;
        }

        .tile-container img {
            margin-bottom: 16px;
        }

        @media (max-width: 1199px) {
            .site .site-banner.site-slider .slider-background > * img {
                width: 100% !important;
            }
        }

        {if $homepage->getPromotionBanner()|@count eq 1}
        .site.site-index .site-banner {
            padding-bottom: 100px;
        }

        {/if}
    </style>
    <div data-promo-slider {if $autoslideBannerDisable} class="autoPromoDisable"{/if}>
        <div class="site-banner site-slider site-slider-custom banner banner-sides">
            <div class="container">
                <div class="slider-wrapper">
                    <div class="slider-slides" data-promo-slider-wrapper>
                        {foreach from=$homepage->getPromotionBanner() item=slide key=key_slide}
                            {if ($slide->slide_begin_time <= $smarty.now && $slide->slide_end_time >= $smarty.now) || ($slide->slide_begin_time eq 0 && $slide->slide_end_time eq 0) || ($slide->slide_begin_time <= $smarty.now && !$slide->slide_end_time)}
                                <div class="slider-slide {if !$slide->slide_options['config']['banner_style_active']}slide-{$siteBannerStyle}{/if}{if $slide->slide_options['config']['graphic_type'] eq "custom_icon" && strlen($slide->slide_icon_custom) < 1} graphic-custom-empty{/if} {if $slide->slide_options['config']['graphic_type'] eq "background"}slider-slide-custom-bg{elseif $slide->slide_options['config']['graphic_type'] eq "custom_icon"}slider-slide-custom-icon{else}slider-slide-default{/if}{if ($slide->slide_options['config']['color'] != "transparent") && ($slide->slide_options['config']['color2'] != "transparent") || ($slide->slide_options['config']['graphic_type'] == "background")} slider-slide-transparent{/if}{if ($slide->slide_options['config']['color'] == "transparent") && ($slide->slide_options['config']['color2'] == "transparent") && ($slide->slide_options['config']['graphic_type'] == "background")} dark-font{/if}"
                                     id="slider-slide-{$slide->id}" data-animation-type="{$slide->slide_options['config']['animation']}">
                                    
                                    <div class="banner-content" data-animation-content>
                                        {if strlen($slide->getField('slide_title_home',$activeLocale.language)) > 0}
                                            <h1 class="banner-title home-title" {if $slide->slide_options['config']['banner_style_active'] && $slide->slide_options['config']['color_title']}style="color: {$slide->slide_options['config']['color_title']};"{/if}>
                                                {$home.title}
                                            </h1>
                                        {/if}
                                        {if strlen($slide->getField('slide_description_home' , $activeLocale.language)) > 0}
                                            <div class="banner-desc" {if $slide->slide_options['config']['banner_style_active'] && $slide->slide_options['config']['color_desc']}style="color: {$slide->slide_options['config']['color_desc']};"{/if}>
                                                <p>{$LANG.home_subtitle}</p>
                                            </div>
                                        {/if}
                                        <div class="banner-actions">
                                            {*if strlen($slide->getField('slide_text_btn_home' , $activeLocale.language)) > 0}
                                                <a href="{$slide->slide_product_url_home}"
                                                    class="btn btn-lg btn-primary">{$slide->getField('slide_text_btn_home' , $activeLocale.language)}</a>
                                            {/if}
                                            {if strlen($slide->getField('slide_secondary_button_text' , $activeLocale.language)) > 0}
                                                <a href="{$slide->slide_secondary_button_url}"
                                                    class="btn btn-lg btn-outline btn-outline-light {if $slide->slide_options['config']['banner_style_active']}btn-light{/if}">{$slide->getField('slide_secondary_button_text' , $activeLocale.language)}</a>
                                            {/if*}
                                        <a href="{$systemurl}cart.php?gid={$homepage->productGroup($product.gid)->product->productGroup->id}" class="btn btn-lg btn-primary btn-package" data-target="incoming">{$LANG.home_action}</a>

                                        </div>
                                    </div>
                                    {if $slide->slide_options['config']['graphic_type'] neq "background"}
                                        <div class="banner-background">
                                            <div class="banner-graphics {if $slide->slide_options['config']['graphic_type'] eq "custom_icon"} graphics-custom{/if}"">
                                                <div>
                                                    <div class="banner-graphic {if $slide->slide_options['config']['graphic_type'] eq "custom_icon"} graphic-custom{/if}" style="justify-content: center!important;" data-animation-icons>
                                                            {if strlen($slide->slide_icon_custom) < 1}
                                                            {if file_exists("templates/$template/assets/svg-illustrations/products/{$slide->slide_icon}.tpl")}
                                                                {include file="$template/assets/svg-illustrations/products/{$slide->slide_icon}.tpl"}
                                                            {/if}
                                                        {else}
                                                            <img style="opacity:0;" class="banner-custom-icon"
                                                                    src="{$systemurl}/templates/{$template}/core/extensions/PromoBanners/uploads/{$slide->slide_icon_custom}"
                                                                    alt="">
                                                        {/if}
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    {/if}
                                </div>
                            {/if}
                        {/foreach}
                    </div>
                </div>
            </div>
            

            <div class="slider-background" data-promo-slider-background>
                {foreach from=$homepage->getPromotionBanner() item=slide key=key_slide}
                    {if ($slide->slide_begin_time <= $smarty.now && $slide->slide_end_time >= $smarty.now) || ($slide->slide_begin_time eq 0 && $slide->slide_end_time eq 0) || ($slide->slide_begin_time <= $smarty.now && !$slide->slide_end_time)}
                        <div {if $slide->slide_options['config']['banner_style_active']}id="slider-slide-{$slide->id}-bg"{/if} class="slide {if !$slide->slide_options['config']['banner_style_active']} slide-{$siteBannerStyle}-bg{/if}" style="overflow: hidden" {$slide->slide_options['config']['graphic_type']}>
                            {if !$slide->slide_options['config']['banner_style_active'] || (!$slide->slide_options['config']['color'] && !$slide->slide_options['config']['color2'] && $slide->slide_options['config']['graphic_type'] neq "background")}
                                <div class="container">
                                    <div class="banner-background">
                                        <div class="banner-shape">
                                            {if file_exists("templates/$template/assets/svg-illustrations/site/banner-shape.tpl")}
                                                {include file="$template/assets/svg-illustrations/site/banner-shape.tpl"}
                                            {/if}
                                        </div>
                                    </div>
                                </div>
                            {/if}
                            {if $slide->slide_icon_custom && $slide->slide_options['config']['graphic_type'] eq "background"}
                                <img id="slider-slide-{$slide->id}-bg-image"
                                    src="{$systemurl}/templates/{$template}/core/extensions/PromoBanners/uploads/{$slide->slide_icon_custom}">
                            {/if}
                        </div>
                    {/if}
                {/foreach}
            </div>    
        </div>

        {if $homepage->getPromotionBanner()|count > 1 && $sliderCounter > 1}
            <div class="site-section section-slider-btn">
                <div class="container">
                    <div class="section-content">
                        <div class="slider-navigation row" data-promo-slider-pagination>
                            {foreach from=$homepage->getPromotionBanner() item=slide key=key_slide}
                                {if ($slide->slide_begin_time <= $smarty.now && $slide->slide_end_time >= $smarty.now) || ($slide->slide_begin_time eq 0 && $slide->slide_end_time eq 0) || ($slide->slide_begin_time <= $smarty.now && !$slide->slide_end_time)}
                                    <div class="col-lg">
                                        <div class="tile has-shadow" data-promo-slider-pagination-item
                                             style="cursor: pointer">
                                            {if $slide->slide_options.config['paginationIcon']}
                                                {if strpos($slide->slide_options.config['paginationIcon'], '.') != false}
                                                    <div class="tile-container">
                                                        <img width="64" height="64" class="img-responsive"
                                                             src="{$systemurl}/templates/{$template}/core/extensions/PromoBanners/uploads/{$slide->slide_options.config['paginationIcon']}"
                                                             alt="">
                                                    </div>
                                                {else}
                                                  {if file_exists("templates/$template/assets/svg-icon/{$slide->slide_pagination_icon}.tpl")}
                                                    {include file="$template/assets/svg-icon/{$slide->slide_pagination_icon}.tpl"}
                                                  {/if}

                                                {/if}
                                            {else}
                                                {if file_exists("templates/$template/assets/svg-icon/{$slide->slide_pagination_icon}.tpl")}
                                                    {include file="$template/assets/svg-icon/{$slide->slide_pagination_icon}.tpl"}
                                                {/if}
                                            {/if}
                                            <span class="title">{$slide->getField('slide_pagination_title_home' , $activeLocale.language)}</span>
                                        </div>
                                    </div>
                                {/if}
                            {/foreach}
                        </div>
                    </div>
                </div>
            </div>
        {/if}
    </div>
{/if}