{if ($language == 'english')} 
    {$LANG.KB.main.title="Categories"}
{else}
    {$LANG.KB.main.title="Категории"}
{/if}    

{if isset($RSThemes['pages'][$templatefile]) && file_exists($RSThemes['pages'][$templatefile]['fullPath'])}
    {include file=$RSThemes['pages'][$templatefile]['fullPath']}
{else}
{debug}
<div class="container-fluid">
<div class="container">
<div class="section-kb">
    <h2 class="section-title black">{$LANG.KB.main.title}</h2>
    
        <form class="search-bar" role="form" method="post" action="{routePath('knowledgebase-search')}">
            <div class="search-group search-group-lg">
                <div class="search-field">
                    <input class="form-control" type="text" id="inputKnowledgebaseSearch" name="search" placeholder="{$LANG.howcanwehelp}" />
                    <div class="search-field-icon"><i class="lm lm-search"></i></div>
                </div>
                <button class="btn btn-lg btn-primary{if $searchBoxStyle == 'primary'}-faded{/if}" type="submit" id="btnKnowledgebaseSearch">{$LANG.search}</button>
            </div>
        </form>
    
    <div class="section kb-categories">
        <div class="section-header">
            <h2 class="section-title">{$LANG.knowledgebasecategories}</h2>
        </div>
        <div class="section-body">
            {if $kbcats}
            <div class="switcher-wrapper">
                <div class="list-group switcher sw-black">
                    {foreach from=$kbcats name=kbcats item=kbcat}  
                        <a class="switcher__item list-group-item has-icon" href="{routePath('knowledgebase-category-view', {$kbcat.id}, {$kbcat.urlfriendlyname})}">
                            
                            <div class="list-group-item-body">
                                <div class="list-group-item-heading">{$kbcat.name} ({$kbcat.numarticles}){if $kbcat.editLink} <button data-lagom-href="{$kbcat.editLink}" class="btn btn-xs btn-default">{$LANG.edit}</button>{/if}</div> 
                                {if $kbcat.description}<p class="list-group-item-text">{$kbcat.description}</p>{/if}
                            </div>
                        </a>
                    {/foreach}
                </div>
                </div>
            {else}
                <div class="message message-no-data">
                    <div class="message-image">
                        {include file="$template/includes/common/svg-icon.tpl" icon="article"}
                    </div>
                    <h6 class="message-title">{$LANG.knowledgebasenoarticles}</h6>
                </div>
            {/if}
        </div>
    </div>
    {if $kbmostviews}
        <div class="section kb-articles">
            <div class="section-header">
                <h2 class="section-title">{$LANG.knowledgebasepopular}</h2>
            </div>
            <div class="section-body">
                <div class="list-group">
                    {foreach from=$kbmostviews item=kbarticle}
                        <details class="art-item">
                            <summary class="art-item__summary">
                                <div class="summary-head">
                                    <div class="sum-left">
                                        <div class="summary-mark">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                <path class="body-mark" d="M21 16.0909V11.0975C21 6.80891 21 4.6646 19.682 3.3323C18.364 2 16.2426 2 12 2C7.75736 2 5.63604 2 4.31802 3.3323C3 4.6646 3 6.80891 3 11.0975V16.0909C3 19.1875 3 20.7358 3.73411 21.4123C4.08421 21.735 4.52615 21.9377 4.99692 21.9915C5.98402 22.1045 7.13673 21.0849 9.44216 19.0458C10.4612 18.1445 10.9708 17.6938 11.5603 17.5751C11.8506 17.5166 12.1494 17.5166 12.4397 17.5751C13.0292 17.6938 13.5388 18.1445 14.5578 19.0458C16.8633 21.0849 18.016 22.1045 19.0031 21.9915C19.4739 21.9377 19.9158 21.735 20.2659 21.4123C21 20.7358 21 19.1875 21 16.0909Z" />
                                                <path class="head-mark" d="M15 6H9" stroke-linecap="round"/>
                                            </svg>
                                        </div>
                                        <div class="summary__title">{$kbarticle.title}</div> 
                                    </div>
                                    <div class="summary-icon"><img src="templates/{$template}/assets/img/art-arrow.svg"></div>
                                </div>
                                <p class="art-text--full">{$kbarticle.article|truncate:100:"..."}</p>
                            </summary>
                        </details>
                            
                    {/foreach}
                </div>
            </div>
        </div>
    {/if}
    </div>
    </div>
    </div>
    {literal}
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            if (localStorage.getItem("remoteSearchPhrase")) {
                var searchPhrase = localStorage.getItem("remoteSearchPhrase");
                var searchInput = document.querySelector('#inputKnowledgebaseSearch');
                var searchBtn = document.querySelector('#btnKnowledgebaseSearch');
                setTimeout(function(){
                    searchInput.value = searchPhrase;
                    searchBtn.click();
                    localStorage.removeItem("remoteSearchPhrase");
                }, 500);
            }
        });

    </script>
    {/literal}
{/if}    