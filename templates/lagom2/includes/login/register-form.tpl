{assign var=currencies value=[
    [
        'code' => 'USD',
        'id' => 'usd',
        'default' => true
    ],
    [
        'code' => 'RUB',
        'id' => 'rub',
        'default' => false
    ]
]}

{if file_exists("templates/$template/includes/login/overwrites/register-form.tpl")}
     {include file="{$template}/includes/login/overwrites/register-form.tpl"}  
{else}
    {if in_array('state', $optionalFields)}
        <script>
            var statesTab = 10;
            var stateNotRequired = true;
        </script>
    {/if}
    <script type="text/javascript" src="{$BASE_PATH_JS}/StatesDropdown.js"></script>
    <script>
        window.langPasswordStrength = "{$LANG.pwstrength}";
        window.langPasswordWeak = "{$LANG.pwstrengthweak}";
        window.langPasswordModerate = "{$LANG.pwstrengthmoderate}";
        window.langPasswordStrong = "{$LANG.pwstrengthstrong}";
        window.langPasswordTooShort = "{$rslang->trans('login.at_least_pass')}";
    </script>
    {if $registrationDisabled}
        {include file="$template/includes/alert.tpl" type="error" msg=$LANG.registerCreateAccount|cat:' <strong><a href="'|cat:"$WEB_ROOT"|cat:'/cart.php" class="alert-link">'|cat:$LANG.registerCreateAccountOrder|cat:'</a></strong>'}
    {/if}
    {if !$registrationDisabled}
    {if $errormessage}
        {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
    {/if}

    
    <div class="form-switcher">
        <div class="switcher-wrapper">
            <div class="switcher kb-switcher sw-white">

                    {if file_exists("templates/$template/core/pages/homepage/modern/shared/switchers/login.tpl")}
                        {include file="$template/core/pages/homepage/modern/shared/switchers/login.tpl"}
                    {/if}

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

    <form method="post" class="loginForm" action="{$smarty.server.PHP_SELF}" role="form" name="orderfrm" id="frmCheckout">
        <input type="hidden" name="register" value="true"/>
        <div class="section section-sm" id="containerNewUserSignup">
            {if $linkableProviders}
                <div class="section section-sm">
                    <div class="section-body">
                        {if $RSThemes['pages'][$templatefile]['config']['socialButtons'] == '1'}
                            {include file="$template/includes/linkedaccounts.tpl" linkContext="registration"}
                        {else}
                            {include file="$template/includes/linkedaccounts.tpl" linkContext="registration" circleButtons="true"}
                        {/if}
                        <div class="login-divider"><span></span><span>{$rslang->trans('social.fill_form_below')}</span><span></span></div>
                    </div>
                </div>
            {/if}
            <div class="section section-sm">
                <div class="section-header">
                    <h2 class="section-title">{$LANG.orderForm.personalInformation}</h2>
                </div>
                <div class="section-body"  id="personalInformation">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group ">
                                <label for="inputFirstName" {if !in_array('firstname', $optionalFields)} class="label-required" {/if}>
                                    {$LANG.orderForm.firstName} {if in_array('firstname', $optionalFields)} ({$LANG.orderForm.optional}){/if}
                                </label>
                                <input type="text" name="firstname" id="inputFirstName" class="form-control" placeholder="" value="{$clientfirstname}" {if !in_array('firstname', $optionalFields)}required{/if} autofocus>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group ">
                                <label for="inputEmail" class="label-required">
                                    {$LANG.orderForm.emailAddress}
                                </label>
                                <input type="email" name="email" id="inputEmail" class="form-control" placeholder="" value="{$clientemail}">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="section section-sm">
                <div class="section-header">
                    <h2 class="section-title">{$LANG.orderForm.billingAddress}</h2>
                </div>
                <div class="section-body">
                    <div class="row">
                        <div class="col-md-6">        
                            <div class="form-group ">
                                <label for="inputCountry"  id="inputCountryIcon" class="label-required">
                                    {$LANG.orderForm.country}
                                </label>
                                <select name="country" id="inputCountry" class="form-control">
                                    {foreach $clientcountries as $countryCode => $countryName}
                                        <option value="{$countryCode}"{if (!$clientcountry && $countryCode eq $defaultCountry) || ($countryCode eq $clientcountry)} selected="selected"{/if}>
                                            {$countryName}
                                        </option>
                                    {/foreach}
                                </select>
                            </div>
                        </div>
                        {if $currencies}
                            <div class="col-md-6">
                                <div class="form-group ">
                                    <label for="inputCurrency" class="label-required">
                                        {$LANG.choosecurrency}
                                    </label>
                                    <select id="inputCurrency" name="currency" class="form-control">
                                        {foreach from=$currencies item=curr}
                                            <option value="{$curr.id}"{if $curr.default } selected="selected"{/if}>{$curr.code}</option>
                                        {/foreach}
                                    </select>
                                </div>
                            </div>
                        {/if}
                    </div>  
                </div>  
            </div>
        </div>
        <div class="section section-sm{if $remote_auth_prelinked && !$securityquestions } hidden{/if}" id="containerNewUserSecurity">
            <h5 class="section-title">{$LANG.orderForm.accountSecurity}</h5>
            <div id="containerPassword" class="row{if $remote_auth_prelinked && $securityquestions} hidden{/if}">
                <div id="passwdFeedback" style="display: none;" class="alert alert-lagom alert-info text-center col-md-12"></div>
                <div class="col-md-6">
                    <div class="form-group has-feedback" id="newPassword1">
                        <div class="password-content password-content-top password-content-group">
                            <label for="inputNewPassword1" class="label-required">
                                {$LANG.clientareapassword}
                            </label>
                            <div class="progress m-t-0" id="passwordStrengthBar" style="display: none">
                                <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">
                                    <span class="sr-only">New Password Rating: 0%</span>
                                </div>
                            </div>
                            <span class="text-small text-lighter password-content-text"><span id="passwordStrengthTextLabel">{$rslang->trans('login.at_least_pass')}</span><i data-toggle="tooltip" title="{$LANG.passwordtips}" data-html="true" data-container="body" class="ls ls-info-circle m-l-1x"></i></span>
                        </div>
                        <div class="input-password-strenght">
                            <input type="password" name="password" id="inputNewPassword1" data-error-threshold="{$pwStrengthErrorThreshold}" data-warning-threshold="{$pwStrengthWarningThreshold}" class="form-control" placeholder="" autocomplete="off"{if $remote_auth_prelinked} value="{$password}"{/if}>
                        </div> 
                        {include file="$template/includes/pwstrength.tpl"}
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group has-feedback" id="newPassword2">
                        <label for="inputNewPassword2" class="label-required">
                            {$LANG.clientareaconfirmpassword}
                        </label>
                        <input type="password" name="password2" id="inputNewPassword2" class="form-control" placeholder="" autocomplete="off"{if $remote_auth_prelinked} value="{$password}"{/if}>
                        <div id="inputNewPassword2Msg"></div>
                    </div>
                </div>     
            </div>
            {if $securityquestions}
                <div class="row">
                    <div class="form-group col-md-6">
                        <label for="inputSecurityQId" class="label-required">
                            {$rslang->trans('login.security_question')}
                        </label>
                        <select name="securityqid" id="inputSecurityQId" class="form-control">
                            <option value="">{$LANG.clientareasecurityquestion}</option>
                            {foreach $securityquestions as $question}
                                <option value="{$question.id}"{if $question.id eq $securityqid} selected{/if}>
                                    {$question.question}
                                </option>
                            {/foreach}
                        </select>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group ">
                            <label for="inputSecurityQAns" class="label-required">
                                {$LANG.clientareasecurityanswer}
                            </label>
                            <input type="password" name="securityqans" id="inputSecurityQAns" class="form-control" placeholder="" autocomplete="off">
                        </div>
                    </div>
                </div>
            {/if}    
        </div> 
        {if $showMarketingEmailOptIn}
            <div class="section section-sm">
                <div class="section-header">
                    <h2 class="section-title">{lang key='emailMarketing.joinOurMailingList'}</h2>
                    <p class="section-desc">{$marketingEmailOptInMessage}</p>
                </div>
                <div class="panel panel-switch m-w-xs">
                    <div class="panel-body">
                        <span class="switch-label">{$rslang->trans('generals.receive_emails')}: </span>
                        <label class="switch switch--lg switch--text">
                            <input class="switch__checkbox" type="checkbox" name="marketingoptin" value="1"{if $marketingEmailOptIn} checked{/if}>
                            <span class="switch__container"><span class="switch__handle"></span></span>
                        </label> 
                    </div>
                </div>
            </div>
        {/if}
        {if $accepttos}
        <div class="section section-sm">
            <div class="section-body">
                <div class="checkbox">
                    <label>
                        <input class="icheck-control accepttos" type="checkbox" name="accepttos">
                        <span class="label-required">{$LANG.ordertosagreement} <a href="{$tosurl}" target="_blank">{$LANG.ordertos}</a></span>
                    </label>
                </div>
            </div>
        </div>
        {/if}
        {include file="$template/includes/captcha.tpl"}
        <div class="form-actions">
            {* <input class="btn btn-lg btn-primary btn-block {$captcha->getButtonClass($captchaForm)}" type="submit" value="{$LANG.clientregistertitle}"/> *}
            <button type="submit" class="btn btn-lg btn-primary btn-block btn-package {$captcha->getButtonClass($captchaForm)}">
                <span class="btn-text">
                    {$LANG.clientregistertitle}
                </span>
                <div class="loader loader-button hidden" >
                    {include file="$template/includes/common/loader.tpl" classes="spinner-sm spinner-light"}
                </div>
            </button>
        </div>
    </form>
    {/if}


    <script>
        document.addEventListener('DOMContentLoaded', function() {
        const buttons = document.querySelectorAll('.switcher__item');
        const currentPage = window.location.pathname;

        buttons.forEach(button => {
            const key = button.getAttribute('data-key');
            const buttonLink = key === 'registration' ? '/register.php' : '/index.php?rp=/login';
            
            button.addEventListener('click', function() {
                window.location.href = buttonLink;
            });

            
            if (key === "registration") {
                button.classList.add('active-button'); 
            }
        });
        });
    </script>    
{/if}