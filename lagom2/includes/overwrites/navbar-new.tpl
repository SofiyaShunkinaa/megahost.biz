{assign var="companyname" value="MrHost"}


<nav class="navbar">

    <div class="navbar__item col-4">
        <a class="navbar-brand {if $customClass}{$customClass} {/if}logo logo-text {if $RSThemes.layouts.vars.type == "condensed" && !$ignoreMobileVersion}visible-xs visible-sm visible-md{/if}" href="{if $lagom_logo_url}{$lagom_logo_url}{else}{$WEB_ROOT}/index.php{/if}">{$companyname}</a>
    </div>

    <div class="navbar__item col-4">
        <ul class="navbar-nav navbar-center">
            <li class="dropdown nav-item-text-only " menuitemname="Products" id="Primary_Navbar-Products">
                <a class="nav-link dropdown-toggle" aria-expanded="true" data-toggle="dropdown" href="#">Продукты</a>
                <ul class="dropdown-menu ">
                    <li><a class="dropdown-item" href="#">VPS</a></li>
                    <li><a class="dropdown-item" href="#">VPN</a></li>
                    <li><a class="dropdown-item" href="#">Выделенные сервера</a></li>
                    <li><a class="dropdown-item" href="#">Виртуальный хостинг</a></li>
                    <li><a class="dropdown-item" href="#">Бюджетные IPv6 VPS</a></li>
                </ul>
            </li>
            <li class="dropdown drop-head drop-head--right">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Возможности</a>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">macOS</a></li>
                    <li><a class="dropdown-item" href="#">Windows</a></li>
                    <li><a class="dropdown-item" href="#">Трейдинг</a></li>
                    <li><a class="dropdown-item" href="#">Telegram</a></li>
                    <li><a class="dropdown-item" href="#">DDos защита</a></li>
                </ul>
            </li>
        <ul>
    </div>

    <div class="navbar__item navbar-actions col-4">
        <div class="actions__cart">
        </div>

        <div class="actions__btn">
            <button class="btn btn-primary"></button>
        </div> 
    </div>
    
</navbar>