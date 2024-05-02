{if isset($RSThemes['pages'][$templatefile]) && file_exists($RSThemes['pages'][$templatefile]['fullPath'])}
    {include file=$RSThemes['pages'][$templatefile]['fullPath']}
{else}

    {if $inactive}
        {include file="$template/includes/alert.tpl" type="danger" msg=$LANG.affiliatesdisabled textcenter=true}
    {else}
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
<div class="clientarea__sidebar">
    <div class="clientarea-avatar">
        <div class="client-avatar"></div>
        <div class="client-name">{$clientsdetails.firstname}</div>
    </div>

    <div class="clientarea__menu">
        <div class="clientarea__menu-body">
        
            <a class="btn" href="/clientarea.php"><div class="clientarea-btn-icon"></div><p>{$LANG.clientAreaHome.Sidebar.button.0}</p></a>
            <a class="btn" href="/clientarea.php?action=details"><div class="clientarea-btn-icon"></div><p>{$LANG.clientAreaHome.Sidebar.button.1}</p></a>
            <a class="btn" href="/clientarea.php?action=emails"><div class="clientarea-btn-icon"></div><p>{$LANG.clientAreaHome.Sidebar.button.2}</p></a>
            <a class="btn current-page" href="/affiliates.php"><div class="clientarea-btn-icon"></div><p>{$LANG.clientAreaHome.Sidebar.button.3}</p></a>

        </div>

        <div class="sidebar-divider"></div>

        <div class="clientarea__menu-footer">
            <a class="btn" href="#"><div class="clientarea-btn-icon"></div><p>{$LANG.clientAreaHome.Sidebar.button.4}</p></a>
            <a class="btn" href="/logout.php"><div class="clientarea-btn-icon"></div><p>{$LANG.clientAreaHome.Sidebar.button.5}</p></a>
        </div>
        <div class="clientarea__menu-theme"></div>

        <div class="switcher-wrapper switcher-wrapper-theme">
            <div class="switcher sw-white">
                <button id="darkBtn" class="switcher__item btn btn-switcher " onclick="switchTheme('light')"><img src='{$WEB_ROOT}/templates/{$template}/assets/img/icons/moon.svg' ></button>
                <button id="lightBtn" class="switcher__item btn btn-switcher " onclick="switchTheme('dark')"><img src='{$WEB_ROOT}/templates/{$template}/assets/img/icons/sun.svg' ></button>
            </div>
        </div>
        
        <div class="sidebar-divider"></div>

    </div>
    
</div>
<div class="clientarea__mainbar">
     
        {include file="$template/includes/flashmessage.tpl"}
        <div class="section">
            <div class="tiles swiper-container">
                <div class="row swiper-wrapper">
                    <div class="col-md-4 swiper-slide">
                        <div class="tile">
                            <div class="tile-stat">{$visitors}</div>
                            <div class="tile-title">{$LANG.affiliatesclicks}</div>
                        </div>
                    </div>
                    <div class="col-md-4 swiper-slide">
                        <div class="tile">
                            <div class="tile-stat">{$signups}</div>
                            <div class="tile-title">{$LANG.affiliatessignups}</div>
                        </div>
                    </div>
                    <div class="col-md-4 swiper-slide">
                        <div class="tile">
                            <div class="tile-stat">{if $conversionrate|string_format:"%d" < 100}{$conversionrate}{else}{$conversionrate|string_format:"%.1f"}{/if}%</div>
                            <div class="tile-title">{$LANG.affiliatesconversionrate}</div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
        <div class="section">
        <div>
        <div class="panel panel-summary panel-summary-{$sidebarBoxStyle} panel-add-funds">
            <div class="panel-body">
                <div class="summary-total">
                    <div class="price price-sm price-left-h">
                        <span class="price-total">{$LANG.affiliatescommissionsavailable}</span>
                        <span class="price-amount">{$balance}</span>
                    </div>
                </div>
                <div class="summary-content">
                    <ul class="summary-list">
                        <li class="list-item faded">
                            <span class="item-name">{$LANG.affiliatescommissionspending}</span>
                            <span class="item-value">{$pendingcommissions}</span>
                        </li>
                        <li class="list-item faded">
                            <span class="item-name">{$LANG.affiliateswithdrawn}</span>
                            <span class="item-value">{$withdrawn}</span>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="panel-footer">            
                {if !$withdrawlevel || $withdrawrequestsent}
                <button href="{$smarty.server.PHP_SELF}?action=withdrawrequest" class="btn btn-primary-faded btn-block"{if !$withdrawlevel || $withdrawrequestsent} disabled{/if}>
                    <i class="ls ls-bank-note"></i> {$LANG.affiliatesrequestwithdrawal}
                </button>            
                {else}
                <a href="{$smarty.server.PHP_SELF}?action=withdrawrequest" class="btn btn-primary-faded btn-block {if !$withdrawlevel || $withdrawrequestsent}disabled" disabled="disabled"{/if}>
                    <i class="ls ls-bank-note"></i> {$LANG.affiliatesrequestwithdrawal}
                </a>
                {/if}
            </div>
        </div>
        {if $withdrawrequestsent}
            <div class="alert alert-success alert-sm alert-panel">
                <i class="alert-icon ls ls-info-circle"></i>
                <p>{$LANG.affiliateswithdrawalrequestsuccessful}</p>
            </div>
        {else}
            {if !$withdrawlevel}
                <div class="alert alert-lagom alert-info alert-sm alert-panel"><i class="alert-icon ls ls-info-circle"></i>{lang key="affiliateWithdrawalSummary" amountForWithdrawal=$affiliatePayoutMinimum}</div>
            {/if}
        {/if}
        </div>

            <div>
            <div class="search-box search-box-{$searchBoxStyle}">
                <div class="input-group input-group-lg flex-column-sm">
                    <div class="input-group-addon">{$LANG.affiliatesreferallink}</div>
                    <input class="form-control m-0" type="text" readonly value="{$referrallink}"> 
                </div>
            </div>
            </div>
        </div>
        <div class="section">
            <div class="section-header d-flex space-between align-center m-b-2x">
                <h5 class="section-title m-b-0">{$LANG.affiliatesreferals}</h5>
                {if $referrals}
                    <div class="search-group">
                        <input type="text" class="form-control" id="table-search" placeholder="{$LANG.tableentersearchterm}"> 
                    </div>
                {/if}
            </div>
            <div class="section-body">
                {if $referrals}
                    {include file="$template/includes/tablelist.tpl" tableName="AffiliatesList" filterColumn="4"}
                    <script type="text/javascript">
                        jQuery(document).ready( function ()
                        {
                            var table = jQuery('#tableAffiliatesList').removeClass('hidden').DataTable();
                            {if $orderby == 'regdate'}
                                table.order(0, '{$sort}');
                            {elseif $orderby == 'product'}
                                table.order(1, '{$sort}');
                            {elseif $orderby == 'amount'}
                                table.order(2, '{$sort}');
                            {elseif $orderby == 'status'}
                                table.order(4, '{$sort}');
                            {/if}
                            table.draw();
                            jQuery('.table-container').removeClass('loading');
                            jQuery('#tableLoading').addClass('hidden');
                        });
                    </script>
                    <div class="table-container loading clearfix">
                        <div class="table-top">
                            <div class="d-flex">
                                <label>{$LANG.clientareahostingaddonsview}</label>
                                <div class="dropdown view-filter-btns {if $RSThemes.addonSettings.show_status_icon == 'displayed'}iconsEnabled{/if}">
                                    <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                        <span class="status hidden"></span>
                                        <span class="filter-name">{$rslang->trans('generals.all_entries')}</span>
                                        <i class="ls ls-caret"></i>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#"><span data-value="all">{$rslang->trans('generals.all_entries')}</span></a></li>
                                        {foreach key=num item=status from=$RSReferralsStatuses}
                                            <li><a href="#"><span class="status status-{$status.statusClass}" data-value="{$status.statustext}" data-status-class="{$status.statusClass}">{$status.statustext}</span></a></li>
                                        {/foreach}
                                    </ul>
                                </div>
                            </div>  
                        </div>
                        <table id="tableAffiliatesList" class="table table-list">
                            <thead>
                                <tr>
                                    <th data-priority="1"><button type="button" class="btn-table-collapse"></button>{$LANG.affiliatessignupdate}</th>
                                    <th data-priority="3">{$LANG.orderproduct}</th>
                                    <th data-priority="4">{$LANG.affiliatesamount}</th>
                                    <th data-priority="5">{$LANG.affiliatescommission}</th>
                                    <th data-priority="2">{$LANG.affiliatesstatus}</th>
                                </tr>
                            </thead>
                            <tbody>
                            {foreach from=$referrals item=referral}
                                <tr class="text-center">
                                    <td><button type="button" class="btn-table-collapse"></button><span class="hidden">{$referral.datets}</span>{$referral.date}</td>
                                    <td>{$referral.service}</td>
                                    <td data-order="{$referral.amountnum}">{$referral.amountdesc}</td>
                                    <td data-order="{$referral.commissionnum}">{$referral.commission}</td>
                                    <td><span class='status status-{$referral.rawstatus|strtolower}'>{$referral.status}</span></td>
                                </tr>
                            {/foreach}
                            </tbody>
                        </table>
                        <div class="loader loader-table" id="tableLoading">
                            {include file="$template/includes/common/loader.tpl"}    
                        </div>
                    </div>
                {else}
                    <div class="message message-no-data">
                        <div class="message-image">
                            {include file="$template/includes/common/svg-icon.tpl" icon="track"}  
                        </div>
                        <h6 class="message-title">{$LANG.norecordsfound}</h6>
                    </div>
                {/if}        
            </div>    
        </div>                             
        {if $affiliatelinkscode}
            <div class="section">
                 <div class="section-header">
                    <h2 class="section-title">{$LANG.affiliateslinktous}</h2>
                </div>
                <div class="section-body">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            {$affiliatelinkscode}
                        </div>
                    </div>
                </div>
            </div>    
        {/if}
        <div class="section">
        
        </div>
    {/if}
{/if}


  


</div>
</div> 