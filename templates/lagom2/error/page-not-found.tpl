{$LANG.NotFound.Title="Что-то пошло не так"}
{$LANG.NotFound.Subtitle="Попробуйте перезагрузить страницу или вернитесь на главную"}
{$LANG.NotFound.Button="Вернуться на главную"}

{if $activeDisplay == "CMS" && $pageType == "website" && file_exists("templates/$template/lagompage.tpl")}
    {include file="{$template}/lagompage.tpl"}
{elseif file_exists("templates/$template/error/overwrites/page-not-found.tpl")}
    {include file="{$template}/error/overwrites/page-not-found.tpl"}  
{else} 
    <div class="container-fluid container-404">
        <span class="error-page-title">404</span>
        <h3>{$LANG.NotFound.Title}</h3> 
        <p>{$LANG.NotFound.Subtitle}</p>
        <div class="error-page-actions"> 
            <a href="{$systemurl}" class="btn btn-primary btn-lg btn-package">
                {lang key="errorPage.404.home"}
            </a>
            
        </div>
    </div>
{/if}