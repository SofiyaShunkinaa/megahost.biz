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
    {$LANG.clientAreaHome.Emails.Title="Email History"}
    
{else}

    {$LANG.clientAreaHome.ActiveProducts.Title="Активные продукты"}
    {$LANG.clientAreaHome.Title="Личный кабинет"}
    {$LANG.clientAreaHome.Sidebar.button.0="Главная"}
    {$LANG.clientAreaHome.Sidebar.button.1="Личные данные"}
    {$LANG.clientAreaHome.Sidebar.button.2="Сообщения"}
    {$LANG.clientAreaHome.Sidebar.button.3="Реферальная программа"}
    {$LANG.clientAreaHome.Sidebar.button.4="Оставить отзыв"}
    {$LANG.clientAreaHome.Sidebar.button.5="Выход"}
    {$LANG.clientAreaHome.Emails.Title="Электронная почта"}


{/if}


<h2 class="container section-title clientarea-title">{$LANG.clientAreaHome.Title}</h2>
<div class="container container-clientarea">
<div class="clientarea__sidebar col-3">
    <div class="clientarea-avatar">
        <div class="client-avatar"></div>
        <div class="client-name">{$clientsdetails.firstname}</div>
    </div>

    <div class="clientarea__menu">
        <div class="clientarea__menu-body">
        
            <a class="btn" href="/clientarea.php"><div class="clientarea-btn-icon"></div><p>{$LANG.clientAreaHome.Sidebar.button.0}</p></a>
            <a class="btn" href="/clientarea.php?action=details"><div class="clientarea-btn-icon"></div><p>{$LANG.clientAreaHome.Sidebar.button.1}</p></a>
            <a class="btn current-page" href="/clientarea.php?action=emails"><div class="clientarea-btn-icon"></div><p>{$LANG.clientAreaHome.Sidebar.button.2}</p></a>
            <a class="btn" href="#"><div class="clientarea-btn-icon"></div><p>{$LANG.clientAreaHome.Sidebar.button.3}</p></a>

        </div>

        <div class="sidebar-divider"></div>

        <div class="clientarea__menu-footer">
            <a class="btn" href="#"><div class="clientarea-btn-icon"></div><p>{$LANG.clientAreaHome.Sidebar.button.4}</p></a>
            <a class="btn" href="#"><div class="clientarea-btn-icon"></div><p>{$LANG.clientAreaHome.Sidebar.button.5}</p></a>
        </div>
        <div class="clientarea__menu-theme"></div>

        <div class="sidebar-divider"></div>

    </div>
    
</div>
<div class="clientarea__mainbar col-9">

{if isset($RSThemes['pages'][$templatefile]) && file_exists($RSThemes['pages'][$templatefile]['fullPath'])}
    {include file=$RSThemes['pages'][$templatefile]['fullPath']}
{else}	     
    {include file="$template/includes/tablelist.tpl" tableName="EmailsList" noSortColumns="-1"}
    <script type="text/javascript">
        jQuery(document).ready( function ()
        {
            var table = jQuery('#tableEmailsList').removeClass('hidden').DataTable();
            {if $orderby == 'date'}
                table.order(0, '{$sort}');
            {elseif $orderby == 'subject'}
                table.order(1, '{$sort}');
            {/if}
            table.draw();
			 
			jQuery('.table-container').removeClass('loading');
            jQuery('#tableLoading').addClass('hidden');
        });
    </script>

    <h3>{$LANG.clientAreaHome.Emails.Title}</h3>

    <div class="table-container loading clearfix table-emails">
        <table id="tableEmailsList" class="table table-list">
            <thead>
                <tr>
                    <th>{$LANG.clientareaemailsdate}<span class="sorting-arrows"></span></th>
                    <th>{$LANG.clientareaemailssubject}<span class="sorting-arrows"></span></th>
                </tr>
            </thead>
            <tbody>
                {foreach from=$emails item=email}
                <tr onclick="popupWindow('viewemail.php?id={$email.id}', 'emailWin', '650', '450')">
                    <td class=""><span class="hidden">{$email.normalisedDate}</span>{$email.date}</td>
                    <td><a href="">{if $email.attachmentCount > 0}<i class="fal fa-paperclip"></i> {/if}{$email.subject}</a></td>
                </tr>
                {/foreach}
            </tbody>
        </table>
        <div class="loader loader-table" id="tableLoading">
            {include file="$template/includes/common/loader.tpl"}    
        </div>
    </div>
{/if}    

</div>
</div>