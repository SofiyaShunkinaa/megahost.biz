{assign var=Icons value=[
    [
        'alt' => "mc"
    ],
    [
        'alt' => "visa"
    ],
    [
        'alt' => "mir"
    ],
    [
        'alt' => "io"
    ],
    [
        'alt' => "bitcoin"
    ],
    [
        'alt' => "lava"
    ],
    [
        'alt' => "payeer"
    ],
    [
        'alt' => "prime"
    ]
]}

  
    {include file="$template/includes/common/layouts-vars.tpl"}
    {if (!isset($skipMainBody) || !$skipMainBody) && (!isset($isOnePageOrder) || !$isOnePageOrder)}
        {if !isset($inShoppingCart) || !$inShoppingCart}</div></div>{/if}
            </div>
        </div>
    {/if}

    {if file_exists("templates/$template/core/layouts/footer/{$RSThemes['footer-layouts'].name}/footer.tpl")}
        {include file="{$template}/core/layouts/footer/{$RSThemes['footer-layouts'].name}/footer.tpl"}
    {/if}

    {if !isset($skipMainFooter) || (isset($skipMainFooter) && !$skipMainFooter)}
        <div class="main-footer{if $RSThemes['footer-layouts']['vars']['type'] == 'extended'} main-footer-extended{/if}{if $RSThemes['footer-layouts']['vars']['footerClass']} {$RSThemes['footer-layouts']['vars']['footerClass']}{/if}">
            {if $RSThemes['footer-layouts']['vars']['type'] == 'extended'}
            <div class="footer-top">
            
            <div class="container container-footer-separator">
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
    </div>
                <div class="container">

                    

                    {if $rsFooter.primary}
                        <div class="footer-site-map">
                            <div class="row">
                                {foreach from=$rsFooter.primary item=$footerLink}
                                    <div class="footer-col {$footerLink.custom_classes} col-md-{$footerPrimaryCol}">
                                        {if $footerLink.children && $footerLink.children|count > 0}
                                            <h3 class="footer-title collapsed" data-toggle="collapse" data-target="#footer-nav-{$footerLink@index}" aria-expanded="false" aria-controls="footer-nav-{$footerLink@index}">
                                                {if isset($footerLink.icon) && $footerLink.icon}
                                                    <i class="{$footerLink.icon}"></i>
                                                {elseif isset($footerLink.predefined_icon) && $footerLink.predefined_icon}
                                                    <span>{$footerLink.predefined_icon}</span>
                                                {/if}
                                                {if $footerLink.name}{$footerLink.name}{/if}
                                                
                                            </h3>
                                            <ul class="footer-nav collapse" id="footer-nav-{$footerLink@index}">
                                                {foreach from=$footerLink.children item=$footerChild}
                                                    <li>
                                                        <a href="{$footerChild.url}" class="nav-link {$footerChild.custom_classes}" {if isset($footerChild.target_blank) && $footerChild.target_blank}target="_blank"{/if} alt="{$footerChild.name}">
                                                            {if isset($footerChild.icon) && $footerChild.icon}
                                                                <i class="{$footerChild.icon}"></i>
                                                            {elseif isset($footerChild.predefined_icon) && $footerChild.predefined_icon}
                                                                {$footerChild.predefined_icon}
                                                            {/if}
                                                            {if isset($footerChild.name) && $footerChild.name}<span>{$footerChild.name}</span>{/if}
                                                        </a>
                                                    </li>
                                                {/foreach}
                                            </ul>
                                        {else}
                                            <a class="footer-title {$footerLink.custom_classes}" href="{$footerLink.url}" {if isset($footerLink.target_blank) && $footerLink.target_blank}target="_blank"{/if}>
                                                {if $footerLink.icon}
                                                    <i class="{$footerLink.icon}"></i>
                                                {elseif $footerLink.predefined_icon}  
                                                    {$footerLink.predefined_icon}
                                                {/if}
                                                {if $footerLink.name}<span>{$footerLink.name}</span>{/if}
                                            </a> 
                                        {/if}
                                    </div>
                                {/foreach}
                            </div>
                        </div>
                    {/if}
                    
                    
                </div>
            </div>
            {/if}
            <div class="footer-bottom">
                <div class="container">
                    
                    {if $rsFooter.secondary}
                        <ul class="footer-nav footer-nav-h">
                            {foreach from=$rsFooter.secondary item=$footerLink}
                                <li {if isset($footerLink.type) && ($footerLink.type == "language" || $footerLink.type == "currencies")} class="dropdown dropup"{/if} {if isset($footerLink.type) && $footerLink.type == "language"}data-language-select{/if}>
                                    <a {if $footerLink.custom_classes}class="{$footerLink.custom_classes}"{/if} {if isset($footerLink.type) && ($footerLink.type == "language" || $footerLink.type == "currencies")}data-toggle="dropdown"{/if} href="{$footerLink.url}" {if isset($footerLink.target_blank) && $footerLink.target_blank}target="_blank"{/if}>
                                        {if isset($footerLink.icon) && $footerLink.icon}
                                            <i class="{$footerLink.icon}"></i>
                                        {elseif isset($footerLink.predefined_icon) && $footerLink.predefined_icon}
                                            {$footerLink.predefined_icon}
                                        {/if}
                                        {if isset($footerLink.type) && $footerLink.type == "language" && isset($footerLink.name) && $footerLink.name}
                                            {$footerLink.name}
                                        {elseif isset($footerLink.name) && $footerLink.name}
                                            <span>{$footerLink.name}</span>
                                        {/if}
                                        {if isset($footerLink.type) && ($footerLink.type == "language" || $footerLink.type == "currencies")}
                                            <b class="ls ls-caret"></b>
                                        {/if}
                                    </a>
                                    {if isset($footerLink.type) && $footerLink.type == "language"}
                                        {include file="$template/includes/common/language-chooser-dropdown.tpl"}
                                    {/if}
                                    {if isset($footerLink.type) && $footerLink.type == "currencies"}
                                        {include file="$template/includes/common/currency-dropdown.tpl"}
                                    {/if}
                                </li>
                            {/foreach}
                        </ul>
                    {/if}

                    <div class="footer-icons">
                        <div class="icons-wrapper">
                            {foreach from=$Icons item=icon}
                                <div class="ficon-item">
                                    <img src="templates/lagom2/assets/img/footer/{$icon.alt}.png" alt={$icon.alt}>
                                </div>
                            {/foreach}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    {/if}
</div> {* close app main *}    
    {if $RSThemes.addonSettings.show_cookie_box == 'displayed'} 
        <div class="cookie-bar cookie-bar--{$RSThemes.addonSettings.cookie_box_position} {if $RSThemes.addonSettings.cookie_box_position == 'bottom'}container{/if}" data-cookie data-cookie-name="cookie_bar" data-cookie-exp-time="365" data-delay="2000">
            <div class="cookie-bar__content">
                <div class="cookie-bar__icon">
                    {include file="$template/includes/common/svg-icon.tpl" icon="cookie_bites"}  
                </div>
                <div class="cookie-bar__desc">
                    {if empty($RSThemes.addonSettings.cookie_box_message[$activeLocale.language])}
                        {if isset($RSThemes.addonSettings.cookie_box_message[\WHMCS\Config\Setting::getValue("Language")])}
                            {$RSThemes.addonSettings.cookie_box_message[\WHMCS\Config\Setting::getValue("Language")]|unescape:"html"}
                        {else}

                        {/if}
                    {else}
                        {$RSThemes.addonSettings.cookie_box_message[$activeLocale.language]|unescape:"html"}
                    {/if}
                </div>
                <div class="cookie-bar__action">
                    <button class="btn btn-primary" data-close>{$LANG.continue}</button>
                </div>
            </div>
        </div>
    {/if}
    <div id="fullpage-overlay" class="hidden">
        <div class="outer-wrapper">
            <div class="inner-wrapper">
                <img src="{$WEB_ROOT}/assets/img/overlay-spinner.svg">
                <br>
                <span class="msg"></span>
            </div>
        </div>
    </div>
    <div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true" style="display: none">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="lm lm-close"></i></button>
                    <h5 class="modal-title"></h5>
                </div>
                <div class="modal-body">
                    <div class="loader">
                        {include file="$template/includes/common/loader.tpl"}
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary modal-submit">
                        {$LANG.submit}
                    </button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                    {$LANG.close}
                    </button>
                </div>
            </div>
        </div>
    </div>

    {if isset($lagomClientAlerts) && $lagomClientAlerts->footer}
        {$lagomClientAlerts->footer}
    {/if}
    {include file="$template/includes/generate-password.tpl"}

    {$footeroutput}
    <div class="overlay"></div>
    <script src="{$WEB_ROOT}/templates/{$template}/assets/js/vendor.js?v={$RSThemes['templateVersion']}"></script>
    <script src="{$WEB_ROOT}/templates/{$template}/assets/js/lagom-app.js?v={$RSThemes['templateVersion']}"></script>
    <script src="{$WEB_ROOT}/templates/{$template}/assets/js/whmcs-custom.min.js?v={$RSThemes['templateVersion']}"></script>
    <script src="{$WEB_ROOT}/templates/{$template}/assets/js/tooltip.js"></script>
    <script src="{$WEB_ROOT}/templates/{$template}/assets/js/slider.js"></script>
</body>
</html>