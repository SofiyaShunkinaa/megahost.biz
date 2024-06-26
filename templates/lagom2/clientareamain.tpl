{if ($language == 'english')} 

    {$LANG.clientAreaHome.home.head.servers="My servers"}
    {$LANG.clientAreaHome.home.head.domains="My domains"}
    {$LANG.clientAreaHome.home.head.unpaid="Tickets"}
    {$LANG.clientAreaHome.home.head.tickets="Unpaid "}
    {$LANG.clientAreaHome.home.head.quotes="Quotes"}

    {$LANG.clientAreaHome.home.body.unpaid.1="invoice"}
    {$LANG.clientAreaHome.home.body.unpaid.2="invoices"}

    {$LANG.clientAreaHome.home.body.tickets.1="ticket"}
    {$LANG.clientAreaHome.home.body.tickets.2="tickets"}

    {$LANG.clientAreaHome.home.body.domains.1="domain"}
    {$LANG.clientAreaHome.home.body.domains.2="domains"}

    {$LANG.clientAreaHome.home.body.quotes.1="quote"}
    {$LANG.clientAreaHome.home.body.quotes.2="quotes"}

    {$LANG.clientAreaHome.home.body.Servers.1="service"}
    {$LANG.clientAreaHome.home.body.Servers.2="services"}

    {$LANG.clientAreaHome.main.news="News"}
    
{else}

    {$LANG.clientAreaHome.home.head.servers="Мои сервера"}
    {$LANG.clientAreaHome.home.head.domains="Мои домены"}
    {$LANG.clientAreaHome.home.head.unpaid="Неоплаченные"}
    {$LANG.clientAreaHome.home.head.tickets="Тикеты"}
    {$LANG.clientAreaHome.home.head.quotes="Предложения"}

    {$LANG.clientAreaHome.home.body.tickets.1="тикет"}
    {$LANG.clientAreaHome.home.body.tickets.2="тикета"}
    {$LANG.clientAreaHome.home.body.tickets.3="тикетов"}

    {$LANG.clientAreaHome.home.body.unpaid.1="счёт"}
    {$LANG.clientAreaHome.home.body.unpaid.2="счёта"}
    {$LANG.clientAreaHome.home.body.unpaid.3="счетов"}

    {$LANG.clientAreaHome.home.body.domains.1="Домен"}
    {$LANG.clientAreaHome.home.body.domains.2="Домена"}
    {$LANG.clientAreaHome.home.body.domains.3="Доменов"}

    {$LANG.clientAreaHome.home.body.qoutes.1="оценка"}
    {$LANG.clientAreaHome.home.body.qoutes.2="оценки"}
    {$LANG.clientAreaHome.home.body.qoutes.3="оценок"}

    {$LANG.clientAreaHome.home.body.Servers.1="сервер"}
    {$LANG.clientAreaHome.home.body.Servers.2="сервера"}
    {$LANG.clientAreaHome.home.body.Servers.3="серверов"}

    {$LANG.clientAreaHome.main.news="Новости"}

{/if}

{*if isset($RSThemes['pages'][$templatefile]) && file_exists($RSThemes['pages'][$templatefile]['fullPath'])}
    {include file=$RSThemes['pages'][$templatefile]['fullPath']}
{else*}
    {foreach $panels as $item}
        {if $item->getName() == "Overdue Invoices" || $item->getName() == "Domains Expiring Soon"}
            {assign var=clienthomealerts value=true}
        {/if}
    {/foreach}
    {if $clienthomealerts}
        <div class="client-home-alerts alert-group">
            {foreach $panels as $item}
                    {if !isset($clienthomealertscookies[$item->getId()]) && ($item->getName() == "Overdue Invoices" || $item->getName() == "Unpaid Invoices" || $item->getName() == "Domains Expiring Soon")}
                        <div class="alert alert-lagom alert-warning alert-faded client-home-alert elooo" data-alert-id="{$item->getId()}"
                            href="{if $item->getName() == "Overdue Invoices"}{$WEB_ROOT}/clientarea.php?action=invoices{else}{$WEB_ROOT}/index.php?rp=/cart/domain/renew{/if}">
                            <span class="alert-icon ls ls-exclamation-circle"></span>
                            <div class="alert-body">{$item->getBodyHtml()}</div>
                            <div class="alert-actions">
                                {if $item->getExtra('btn-link')}
                                    {if $RSThemes.pages.clientareahome.config.showAlertButtons}
                                        {if $item->getName() == "Overdue Invoices" || $item->getName() == "Unpaid Invoices"}
                                            <a class="btn btn-warning btn-sm" href="{$WEB_ROOT}/clientarea.php?action=invoices" data-boundary="window">
                                                <i class="ls ls-wallet"></i>
                                                <span class="btn-text">{$LANG.invoicespaynow}</span>
                                            </a>
                                        {else}
                                            <a class="btn btn-warning btn-sm" href="{$WEB_ROOT}/index.php?rp=/cart/domain/renew" data-boundary="window">
                                                <i class="ls ls-refresh"></i>
                                                <span class="btn-text">{$LANG.domainrenew}</span>
                                            </a>
                                        {/if}
                                    {else}
                                        {if $item->getName() == "Overdue Invoices" || $item->getName() == "Unpaid Invoices"}
                                            <a class="btn btn-sm btn-icon" href="{$WEB_ROOT}/clientarea.php?action=invoices"
                                            data-toggle="tooltip" data-placement="top" data-title="{$LANG.invoicespaynow}"
                                            data-boundary="window"><i class="ls ls-wallet"></i></a>
                                        {else}
                                            <a class="btn btn-sm btn-icon" href="{$WEB_ROOT}/index.php?rp=/cart/domain/renew"
                                            data-toggle="tooltip" data-title="{$LANG.domainrenew}" data-boundary="window"
                                            data-original-title="" title=""><i class="ls ls-refresh"></i></a>
                                        {/if}
                                    {/if}

                                {/if}
                                <button class="btn btn-sm btn-icon btn-close-alert" type="button" data-dismiss="alert" data-toggle="tooltip"
                                        data-title="{$LANG.supportticketsclose}" aria-label="{$LANG.supportticketsclose}"
                                        data-boundary="window"><i class="ls ls-close"></i></button>
                            </div>
                        </div>
                    {/if}
            {/foreach}
        </div>
    {/if}
    {foreach $addons_html.0.RSMarketConnectServices as $addon}
        {if $addon['settings']['promotion']['client-home'] eq true}
            {assign var="hasDashboardPrormo" value=true}
        {/if}
    {/foreach}
    
    {include file="$template/includes/flashmessage.tpl"}
    <div class="swiper">
    <div class="tiles swiper-container">
        <div class="row swiper-wrapper">
            <div class="col-md-3 col-sm-4 swiper-slide" onclick="window.location='clientarea.php?action=services'">
                <a class="tile" href="clientarea.php?action=services">
                    <div class="tile-head">
                        {$LANG.clientAreaHome.home.head.servers}
                    </div>

                    <div class="tile-body">
                        <div class="tile-stat">{$clientsstats.productsnumservers}</div>
                        <div class="tile-title">
                        {if ($language != 'english')}
                            {if ($clientsstats.productsnumactive % 10 == 1)&&($clientsstats.productsnumactive % 100 != 11)}
                                {$LANG.clientAreaHome.home.body.Servers.1}
                            {else if (2 <= $clientsstats.productsnumactive % 10)&&($clientsstats.productsnumactive % 10 <= 4) && ($clientsstats.productsnumactive % 100 < 10 or $clientsstats.productsnumactive % 100 >= 20)}    
                                {$LANG.clientAreaHome.home.body.Servers.2}
                            {else}
                                {$LANG.clientAreaHome.home.body.Servers.3}
                            {/if}
                        {else}
                            {if $clientsstats.productsnumactive > 1}   
                                 {$LANG.clientAreaHome.home.body.Servers.1}
                            {else}
                                {$LANG.clientAreaHome.home.body.Servers.2}
                            {/if}
                        {/if}         
                        </div>
                    </div>
                </a>
            </div>
            {if $registerdomainenabled || $transferdomainenabled}
                <div class="col-md-3 col-sm-4 swiper-slide" onclick="window.location='clientarea.php?action=domains'">
                    
                        <a class="tile" href="clientarea.php?action=domains">
                            <div class="tile-head">
                                {$LANG.clientAreaHome.home.head.domains}
                            </div>

                            <div class="tile-body">
                                <div class="tile-stat">{$clientsstats.numactivedomains}</div>
                                <div class="tile-title">
                                {if ($language != 'english')}
                                    {if ($clientsstats.numactivedomains % 10 == 1)&&($clientsstats.numactivedomains % 100 != 11)}
                                        {$LANG.clientAreaHome.home.body.domains.1}
                                    {else if (2 <= $clientsstats.numactivedomains % 10)&&($clientsstats.numactivedomains % 10 <= 4) && ($clientsstats.numactivedomains % 100 < 10 or $clientsstats.numactivedomains % 100 >= 20)}    
                                        {$LANG.clientAreaHome.home.body.domains.2}
                                    {else}
                                        {$LANG.clientAreaHome.home.body.domains.3}
                                    {/if}
                                {else}
                                    {if $clientsstats.numactivedomains > 1}   
                                        {$LANG.clientAreaHome.home.body.domains.1}
                                    {else}
                                        {$LANG.clientAreaHome.home.body.domains.2}
                                    {/if}
                                {/if}         
                                </div>
                            </div>
                        </a>
                    
                </div>
           
            {else}
                <div class="col-md-3 col-sm-4 swiper-slide" onclick="window.location='clientarea.php?action=quotes'">
                        <a class="tile" href="clientarea.php?action=quotes">

                            <div class="tile-head">
                                {$LANG.clientAreaHome.home.head.quotes}
                            </div>

                            <div class="tile-body">
                                <div class="tile-stat">{$clientsstats.numquotes}</div>
                                <div class="tile-title">
                                {if ($language != 'english')}
                                        {if ($clientsstats.numquotes % 10 == 1)&&($clientsstats.numquotes % 100 != 11)}
                                            {$LANG.clientAreaHome.home.body.qoutes.1}
                                        {else if (2 <= $clientsstats.numquotes % 10)&&($clientsstats.numquotes % 10 <= 4) && ($clientsstats.numquotes % 100 < 10 or $clientsstats.numquotes % 100 >= 20)}    
                                            {$LANG.clientAreaHome.home.body.qoutes.2}
                                        {else}
                                            {$LANG.clientAreaHome.home.body.qoutes.3}
                                        {/if}
                                    {else}
                                        {if $clientsstats.numquotes > 1}   
                                            {$LANG.clientAreaHome.home.body.qoutes.1}
                                        {else}
                                            {$LANG.clientAreaHome.home.body.qoutes.2}
                                        {/if}
                                    {/if} 
                                </div>
                            </div>
                        </a>
                    
                </div>
            {/if}
            <div class="col-md-3 col-sm-4 swiper-slide" onclick="window.location='clientarea.php?action=invoices'">
           
                    
                <a class="tile" href="clientarea.php?action=invoices">
                    <div class="tile-head">
                        {$LANG.clientAreaHome.home.head.unpaid}
                    </div>

                    <div class="tile-body">
                        <div class="tile-stat {if ($clientsstats.numunpaidinvoices > 0)}text-danger{/if}">{$clientsstats.numunpaidinvoices}</div>
                        <div class="tile-title">
                            {if ($language != 'english')}
                                {if ($clientsstats.numunpaidinvoices % 10 == 1)&&($clientsstats.numunpaidinvoices % 100 != 11)}
                                    {$LANG.clientAreaHome.home.body.unpaid.1}
                                {else if (2 <= $clientsstats.numunpaidinvoices % 10)&&($clientsstats.numunpaidinvoices % 10 <= 4) && ($clientsstats.numunpaidinvoices % 100 < 10 or $clientsstats.numunpaidinvoices % 100 >= 20)}    
                                    {$LANG.clientAreaHome.home.body.unpaid.2}
                                {else}
                                    {$LANG.clientAreaHome.home.body.unpaid.3}
                                {/if}
                            {else}
                                {if $clientsstats.numunpaidinvoices > 1}   
                                    {$LANG.clientAreaHome.home.body.unpaid.1}
                                {else}
                                    {$LANG.clientAreaHome.home.body.unpaid.2}
                                {/if}
                            {/if}         
                        </div>
                    </div>
                </a>
                
            </div>
            <div class="col-md-3 swiper-slide" onclick="window.location='supporttickets.php'">

            
                <a class="tile" href="supporttickets.php">
                    <div class="tile-head">
                        {$LANG.clientAreaHome.home.head.tickets}
                    </div>

                    <div class="tile-body">
                        <div class="tile-stat">{if $supportPalactiveTicketsNum}{$supportPalactiveTicketsNum}{else}{$clientsstats.numactivetickets}{/if}</div>
                        <div class="tile-title">
                            {if ($language != 'english')}
                                {if ($clientsstats.numactivetickets % 10 == 1)&&($clientsstats.numactivetickets % 100 != 11)}
                                    {$LANG.clientAreaHome.home.body.tickets.1}
                                {else if (2 <= $clientsstats.numactivetickets % 10)&&($clientsstats.numactivetickets % 10 <= 4) && ($clientsstats.numactivetickets % 100 < 10 or $clientsstats.numactivetickets % 100 >= 20)}    
                                    {$LANG.clientAreaHome.home.body.tickets.2}
                                {else}
                                    {$LANG.clientAreaHome.home.body.tickets.3}
                                {/if}
                            {else}
                                {if $clientsstats.numactivetickets > 1}   
                                    {$LANG.clientAreaHome.home.body.tickets.1}
                                {else}
                                    {$LANG.clientAreaHome.home.body.tickets.2}
                                {/if}
                            {/if}         
                        </div>
                    </div>
                </a>
                
            </div>
        </div>
        <div class="swiper-pagination"></div>
    </div>
    </div>
    
    {foreach from=$addons_html item=addon_html key=k}
        {if !is_array($addon_html) && !$addon_html|strstr:"data-animation-content"}
            <div>{$addon_html}</div>
        {/if}
    {/foreach}
    

    <div class="client-home-panels row" data-panels-grid>
        {function name=outputHomePanels}
        <h3>
        {if $item->getName() == "Active Products/Services"}
            {$LANG.clientAreaHome.ActiveProducts.Title}
        {else if $item->getName() == "Recent Support Tickets"}
            {$LANG.clientAreaHome.home.head.tickets}
        {else if $item->getName() == "Recent News"}  
            {$LANG.clientAreaHome.main.news}
        {/if}
        </h3>

            {if $item->getName() != "Register a New Domain"}
            <div menuItemName="{$item->getName()}"
                 class="panel panel-default panel-accent-{$item->getExtra('color')} {if $item->getName() == "Register a New Domain"}panel-domain-register{elseif $item->getName() == "Recent Support Tickets"}panel-support-tickets{elseif $item->getName() == "Active Products/Services"}panel-active-services{/if}  {if $item->getClass()} {$item->getClass()}{/if}"{if $item->getAttribute('id')} id="{$item->getAttribute('id')}"{/if}>
                         
                {if $item->hasChildren()}
                    <div class="list-group has-scroll {if $item->getChildrenAttribute('class')} {$item->getChildrenAttribute('class')}{/if}">
                        {foreach $item->getChildren() as $childItem}
                            {if $childItem->getUri()}
                                <a menuItemName="{$childItem->getName()}" href="{$childItem->getUri()}"
                                   class="list-group-item{if $childItem->getClass()} {$childItem->getClass()}{/if}{if $childItem->isCurrent()} active{/if}"{if $childItem->getAttribute('dataToggleTab')} data-toggle="tab"{/if}{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}"{/if}
                                   id="{$childItem->getId()}">
                                    {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                    {if $childItem->getLabel()|strstr:"`$LANG.clientareaactive`</span>"}
                                        {assign var="childStatus" value="title='{$LANG.clientareaactive}'"}
                                    {elseif $childItem->getLabel()|strstr:"`$LANG.clientareapending`</span>"}    
                                        {assign var="childStatus" value="title='{$LANG.clientareapending}'"}
                                    {elseif $childItem->getLabel()|strstr:"`$LANG.clientareacompleted`</span>"}    
                                        {assign var="childStatus" value="title='{$LANG.clientareacompleted}'"}
                                    {elseif $childItem->getLabel()|strstr:"`$LANG.clientareasuspended`</span>"}    
                                        {assign var="childStatus" value="title='{$LANG.clientareasuspended}'"}
                                    {elseif $childItem->getLabel()|strstr:"`$LANG.clientareaterminated`</span>"}    
                                        {assign var="childStatus" value="title='{$LANG.clientareaterminated}'"}
                                    {elseif $childItem->getLabel()|strstr:"`$LANG.clientareacancelled`</span>"}    
                                        {assign var="childStatus" value="title='{$LANG.clientareacancelled}'"}
                                    {elseif $childItem->getLabel()|strstr:"`$LANG.clientareafraud`</span>"}    
                                        {assign var="childStatus" value="title='{$LANG.clientareafraud}'"}    
                                    {/if}
                                    {if $item->getName()|strstr:"Services" || $item->getName()|strstr:"Tickets"}
                                        <span class="status-modern"><b>{$childItem->getLabel()|replace:"background-color":"--status-color"|replace:'class="label"':'class="status"'|replace:'<span class="label pull-right':'<span data-toggle="tooltip" data-title class="label pull-right'|replace:"data-title":$childStatus|replace:" - ":"</b> - "}</span>
                                    {else}
                                        <span class="status-modern">{$childItem->getLabel()|replace:"background-color":"--status-color"|replace:'class="label"':'class="status"'|replace:'<span class="label pull-right':'<span data-toggle="tooltip" data-title class="label pull-right'|replace:"data-title":$childStatus}</span>
                                    {/if}                                    
                                    {if $childItem->hasBadge() && $item->getName() == "Active Products/Services" && $RSThemes['pages']['clientareahome']['config']['hideExpiringIn'] != '1'}
                                        <span class="status-expiry text-danger">{$childItem->getBadge()}</span>
                                    {elseif $childItem->hasBadge() && $item->getName() != "Active Products/Services"}
                                        <span class="badge">{$childItem->getBadge()}</span>
                                    {/if}
                                </a>
                            {else}
                                <div menuItemName="{$childItem->getName()}"
                                     class="list-group-item{if $childItem->getClass()} {$childItem->getClass()}{/if} {if $RSThemes['pages']['clientareahome']['config']['hideExpiringIn'] == '1'}hide-expire-status{/if}"
                                     id="{$childItem->getId()}">
                                    {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                    {$childItem->getLabel()}
                                    {if $childItem->hasBadge()}&nbsp;<span
                                            class="badge">{$childItem->getBadge()}</span>{/if}
                                </div>
                            {/if}
                        {/foreach}
                    </div>
                {/if}    
                
                {if $item->hasBodyHtml()}
                    <div class="panel-body">
                    
                        {if $item->getName() == "Recent News"}
                            <div class="panel-body">
                                <div class="no-data">
                                    <div class="text-light">{$rslang->trans('nodata.no_recent_news')}</div>
                                </div>
                            </div>
                        {/if}
                        {if $item->getName() == "Recent Support Tickets"}
                            <div class="no-data">
                                <div class="text-light">{$rslang->trans('nodata.no_recent_tickets')}</div>
                                <a href="submitticket.php" class="btn btn-default btn-create">{$LANG.navopenticket}</a>
                            </div>
                        {elseif $item->getName() == "Active Products/Services"}
                            <div class="no-data">
                                <div class="text-light">{$rslang->trans('nodata.no_active_services')}</div>
                                <a href="cart.php" class="btn btn-default btn-create">{$LANG.navservicesorder}</a>
                            </div>
                        {elseif $item->getName() == "Unpaid Invoices" && $clientsstats.numunpaidinvoices == "0"}
                            <div class="no-data">
                                <div class="text-light" class="btn btn-default btn-create">{$rslang->trans('nodata.no_unpaid_invoices')}</div>
                            </div>
                        {else}
                            {$item->getBodyHtml()|replace:'name="domain"':'name="domain" placeholder="domain name"'|replace:'domain name':{$LANG.findyourdomain}}
                            {if $item->getName() == "Register a New Domain"}
                                <p>{$LANG.orderForm.transferExtend}*</p>
                            {/if}
                        {/if}
                    </div>
                {/if}
                {if !$item->hasChildren() && $item->getName() == "Recent News"}
                
                    <div class="panel-body">
                    
                        <div class="no-data">
                            <div class="text-light">{$rslang->trans('nodata.no_recent_news')}</div>
                        </div>
                    </div>
                {/if}
                {if $item->hasFooterHtml()}
                    <div class="panel-footer">
                        {$item->getFooterHtml()}
                    </div>
                {/if}
            </div>
            {/if}
        {/function}
        <div class="col-md-6 column-sizer"></div>
        {foreach $panels as $item}
            {if $item->getExtra('colspan')}
                {outputHomePanels}
                {assign "panels" $panels->removeChild($item->getName())}
            {/if}
        {/foreach}
        {foreach $panels as $item}
            {if $item->getName() != "Overdue Invoices" && $item->getName() != "Unpaid Invoices" && $item->getName() != "Domains Expiring Soon" && $item->getName() != "Affiliate Program"}
            
                <div class="{if $item->getName() == "Active Products/Services"} col-md-12{else}col-md-6 {/if}" data-panels-grid-item>
                    {outputHomePanels}
                </div>
            {/if}
        {/foreach}
    </div>