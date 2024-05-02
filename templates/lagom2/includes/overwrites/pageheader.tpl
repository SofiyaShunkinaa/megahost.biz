{if ($language == 'english')} 
    {$LANG.KB.title="Knowledge base"}
    {$LANG.Blog.title="Blog"}
{else}
    {$LANG.KB.title="База знаний"}
    {$LANG.Blog.title="Блог"}
{/if} 

{if $showbreadcrumb || $desc}
    <div class="main-header-bottom">
        {if $showbreadcrumb}{include file="$template/includes/breadcrumb.tpl"}{/if}
    </div>
{/if}

{if $templatefile == "knowledgebase"}
    <div class="banner-title">
        <h1>
            {$LANG.KB.title}
        </h1>
    </div>
{elseif $templatefile == "announcements"}
    <div class="banner-title">
        <h1>
            {$LANG.Blog.title}
        </h1>
    </div>
{/if}    