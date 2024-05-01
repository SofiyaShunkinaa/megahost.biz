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

{if $currentUrl|strstr:"?"}
    {$currentpagelinkback = rtrim($currentpagelinkback, '&amp;')}
    {$divChar = "&amp;"}
{else}
    {$currentpagelinkback = rtrim($currentpagelinkback, '?')}
    {$divChar = "?"}
{/if}

    {foreach $NewLngs as $locale}
        <button class="switcher__item btn btn-switcher {if $activeLocale.language == $locale.language}active{/if}"> 
        {if $pageType == "website" && $currentpagelinkback|strstr:"cmsid"}
                    {$url = "?"|explode:$currentpagelinkback}
                    {$url2 = "&amp;"|explode:$url[1]}
                    {$stringToReplace = "`$url2[0]`&amp;"}
                {else}
                    {$stringToReplace = ""}
                {/if}
            <a href="{$currentpagelinkback|replace:$stringToReplace:""}{$divChar}language={$locale.language}">
                {$locale.localisedName}
            </a>
        </button>
    {/foreach}


