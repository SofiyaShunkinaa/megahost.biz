{assign var=NewLngs value=[
    [
        'locale' => "ru_RU",
        'language' => "russian",
        'languageCode' => "ru",
        'countryCode' => "RU",
        'localisedName' => "RU"
    ],
    [
        'locale' => "en_GB",
        'language' => "english",
        'languageCode' => "en",
        'countryCode' => "GB",
        'localisedName' => "ENG"
    ]
]}

    <div class="dropdown-menu dropdown-language-search {if ($RSThemes['pages'][$templatefile]['config']['isFullPage'] == "1" || $RSThemes['pages'][$templatefile]['name'] == "sidebar") && $type == "login"}dropdown-menu-center{else} dropdown-menu-right{/if}" {*id="languageChooserContent"*}>
        {if $currentUrl|strstr:"?"}
            {$currentpagelinkback = rtrim($currentpagelinkback, '&amp;')}
            {$divChar = "&amp;"}
        {else}
            {$currentpagelinkback = rtrim($currentpagelinkback, '?')}
            {$divChar = "?"}
        {/if}
        <input type="hidden" data-language-select-backlink value="{$currentpagelinkback}{$divChar}">
        <input type="hidden" data-language-select-lang value="{$LANG['upgradeService']['select']}">
       
        <div class="dropdown-menu-items" data-language-select-list>
        {foreach $NewLngs as $locale}
            <input type="hidden" data-language-select-value value="{$locale.localisedName}">

            <div class="dropdown-menu-item {if $activeLocale.language == $locale.language}active{/if}" data-value="{$locale.language}" data-language="{$locale.localisedName}">
                {if $pageType == "website" && $currentpagelinkback|strstr:"cmsid"}
                    {$url = "?"|explode:$currentpagelinkback}
                    {$url2 = "&amp;"|explode:$url[1]}
                    {$stringToReplace = "`$url2[0]`&amp;"}
                {else}
                    {$stringToReplace = ""}
                {/if}
                <a href="{$currentpagelinkback|replace:$stringToReplace:""}{$divChar}language={$locale.language}">
                    <span class="language-text">{$locale.localisedName}</span>
                </a>
            </div>
        {/foreach}
        </div>
        <div class="dropdown-menu-item dropdown-menu-no-data">
            <span class="text-info text-large">
                {$LANG.norecordsfound}
            </span>
        </div>                  
    </div>
