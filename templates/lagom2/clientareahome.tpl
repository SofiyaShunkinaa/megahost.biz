{assign var=inClientAreaHome value=true}

{if ($language == 'english')} 

    {$LANG.clientAreaHome.ActiveProducts.Title="Active products"}
    {$LANG.clientAreaHome.Title="Personal account"}
    {$LANG.clientAreaHome.Sidebar.button.0="Main"}
    {$LANG.clientAreaHome.Sidebar.button.1="Personal data"}
    {$LANG.clientAreaHome.Sidebar.button.2="Email History"}
    {$LANG.clientAreaHome.Sidebar.button.3="Referral program"}
    {$LANG.clientAreaHome.Sidebar.button.4="Share your opinion"}
    {$LANG.clientAreaHome.Sidebar.button.5="Logout"}
    {$LANG.clientAreaHome.Tickets.Title = "Tickets"}
    {$LANG.clientAreaHome.News.Title = "News"}

    
{else}

    {$LANG.clientAreaHome.ActiveProducts.Title="Активные продукты"}
    {$LANG.clientAreaHome.Title="Личный кабинет"}
    {$LANG.clientAreaHome.Sidebar.button.0="Главная"}
    {$LANG.clientAreaHome.Sidebar.button.1="Личные данные"}
    {$LANG.clientAreaHome.Sidebar.button.2="Сообщения"}
    {$LANG.clientAreaHome.Sidebar.button.3="Реферальная программа"}
    {$LANG.clientAreaHome.Sidebar.button.4="Оставить отзыв"}
    {$LANG.clientAreaHome.Sidebar.button.5="Выход"}
    {$LANG.clientAreaHome.Tickets.Title = "Tickets"}
    {$LANG.clientAreaHome.News.Title = "News"}

{/if}
{debug}

<h2 class="container section-title clientarea-title">{$LANG.clientAreaHome.Title}</h2>
<div class="container container-clientarea">
<div class="clientarea__sidebar col-3">
    <div class="clientarea-avatar">
        <div class="client-avatar"></div>
        <div class="client-name">{$clientsdetails.firstname}</div>
    </div>

    <div class="clientarea__menu">
        <div class="clientarea__menu-body">
        
            <a class="btn current-page" href="/clientarea.php"><div class="clientarea-btn-icon"></div><p>{$LANG.clientAreaHome.Sidebar.button.0}</p></a>
            <a class="btn" href="/clientarea.php?action=details"><div class="clientarea-btn-icon"></div><p>{$LANG.clientAreaHome.Sidebar.button.1}</p></a>
            <a class="btn" href="/clientarea.php?action=emails"><div class="clientarea-btn-icon"></div><p>{$LANG.clientAreaHome.Sidebar.button.2}</p></a>
            <a class="btn" href="#"><div class="clientarea-btn-icon"></div><p>{$LANG.clientAreaHome.Sidebar.button.3}</p></a>

        </div>

        <div class="sidebar-divider"></div>

        <div class="clientarea__menu-footer">
            <a class="btn" href="#"><div class="clientarea-btn-icon"></div><p>{$LANG.clientAreaHome.Sidebar.button.4}</p></a>
            <a class="btn" href="/logout.php"><div class="clientarea-btn-icon"></div><p>{$LANG.clientAreaHome.Sidebar.button.5}</p></a>
        </div>
        <div class="clientarea__menu-theme"></div>

        <div class="sidebar-divider"></div>

    </div>
    
</div>
<div class="clientarea__mainbar col-9">

{if $currentUrl == "/clientarea.php"}

    {include file="templates/$template/clientareamain.tpl"}

{/if}    


</div>
</div>