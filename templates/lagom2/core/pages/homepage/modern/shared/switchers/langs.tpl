{assign var=langsSwitcher value=[
    [
        'name' => 'RU',
        'key' => 'ru'
    ],
    [
        'name' => 'ENG',
        'key' => 'eng'
    ]
]}



{if $currentUrl|strstr:"?"}
    {$currentpagelinkback = rtrim($currentpagelinkback, '&amp;')}
    {$divChar = "&amp;"}
{else}
    {$currentpagelinkback = rtrim($currentpagelinkback, '?')}
    {$divChar = "?"}
{/if}

    {foreach $langsSwitcher as $sw}
        <button class="switcher__item btn btn-switcher data-key="{$sw.key}">
            {$sw.name}
        </button>
    {/foreach}


