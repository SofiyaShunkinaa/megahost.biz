{if ($language == 'english')} 

    {$LANG.clientAreaHome.home.head.services="My services"}
    {$LANG.clientAreaHome.home.head.domains="My domains"}
    {$LANG.clientAreaHome.home.head.unpaid="Tickets"}
    {$LANG.clientAreaHome.home.head.tickets="Unpaid "}

    
{else}

    {$LANG.clientAreaHome.home.head.services="Мои услуги"}
    {$LANG.clientAreaHome.home.head.domains="Мои домены"}
    {$LANG.clientAreaHome.home.head.unpaid="Неоплаченные"}
    {$LANG.clientAreaHome.home.head.tickets="Тикеты"}


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
    <div class="tiles swiper-container">
        <div class="row swiper-wrapper">
            <div class="col-md-3 col-sm-4 swiper-slide" onclick="window.location='clientarea.php?action=services'">
                <a class="tile" href="clientarea.php?action=services">
                    <div class="tile-head">
                        {$LANG.clientAreaHome.home.head.services}
                    </div>

                    <div class="tile-body">
                        <div class="tile-stat">{$clientsstats.productsnumactive}</div>
                        <div class="tile-title">{$LANG.navservices}</div>
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
                                <div class="tile-title"> {$LANG.navdomains}</div>
                            </div>
                        </a>
                    
                </div>
            {elseif $condlinks.affiliates && $clientsstats.isAffiliate}
                <div class="col-md-3 col-sm-4 swiper-slide" onclick="window.location='affiliates.php'">
                    
                        <a class="tile" href="affiliates.php">
                            <div class="tile-stat">{$clientsstats.numaffiliatesignups}</div>
                            <div class="tile-title">{$LANG.affiliatessignups}</div>
                        </a>
                </div>
            {else}
                <div class="col-md-3 col-sm-4 swiper-slide" onclick="window.location='clientarea.php?action=quotes'">
                    
                        <a class="tile" href="clientarea.php?action=quotes">
                            <div class="tile-stat">{$clientsstats.numquotes}</div>
                            <div class="tile-title">{$LANG.quotes}</div>
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
                        <div class="tile-title">{$LANG.clientHomePanels.unpaidInvoices}</div>
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
                        <div class="tile-title">{$LANG.navtickets}</div>
                    </div>
                </a>
                
            </div>
        </div>
        <div class="swiper-pagination"></div>
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
            {$LANG.clientAreaHome.Tickets.Title}
        {else if $item->getName() == "Recent News"}  
            {$LANG.clientAreaHome.News.Title}
        {/if}
        </h3>

            {if $item->getName() != "Register a New Domain"}
            <div menuItemName="{$item->getName()}"
                 class="panel panel-default panel-accent-{$item->getExtra('color')} {if $item->getName() == "Affiliate Program"}panel-affilaite-program panel-info{elseif $item->getName() == "Register a New Domain"}panel-domain-register{elseif $item->getName() == "Recent Support Tickets"}panel-support-tickets{elseif $item->getName() == "Active Products/Services"}panel-active-services{/if}  {if $item->getClass()} {$item->getClass()}{/if}"{if $item->getAttribute('id')} id="{$item->getAttribute('id')}"{/if}>
                         
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
                                    <div class="no-data-icon">
                                        {include file="$template/includes/common/svg-icon.tpl" icon="article"} 
                                    </div>
                                    <div class="text-light">{$rslang->trans('nodata.no_recent_news')}</div>
                                </div>
                            </div>
                        {/if}
                        {if $item->getName() == "Recent Support Tickets"}
                            <div class="no-data">
                                <div class="no-data-icon">
                                    {include file="$template/includes/common/svg-icon.tpl" icon="ticket"} 
                                </div>
                                <div class="text-light">{$rslang->trans('nodata.no_recent_tickets')}</div>
                                <a href="submitticket.php">{$LANG.navopenticket}</a>
                            </div>
                        {elseif $item->getName() == "Active Products/Services"}
                            <div class="no-data">
                                <div class="no-data-icon">
                                    {include file="$template/includes/common/svg-icon.tpl" icon="service"}                                    
                                </div>
                                <div class="text-light">{$rslang->trans('nodata.no_active_services')}</div>
                                <a href="cart.php">{$LANG.navservicesorder}</a>
                            </div>
                        {elseif $item->getName() == "Unpaid Invoices" && $clientsstats.numunpaidinvoices == "0"}
                            <div class="no-data">
                                <div class="no-data-icon">
                                    {include file="$template/includes/common/svg-icon.tpl" icon="invoice"}                                     
                                </div>
                                <div class="text-light">{$rslang->trans('nodata.no_unpaid_invoices')}</div>
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
                            <div class="no-data-icon">
                                {include file="$template/includes/common/svg-icon.tpl" icon="article"} 
                            </div>
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
            {if $item->getName() != "Overdue Invoices" && $item->getName() != "Unpaid Invoices" && $item->getName() != "Domains Expiring Soon"}
            
                <div class="{if $item->getName() == "Active Products/Services"} col-md-12{else}col-md-6 {/if}" data-panels-grid-item>
                {*<h3>spflpd</h3>*}
                    {outputHomePanels}
                </div>
            {/if}
        {/foreach}
    </div>