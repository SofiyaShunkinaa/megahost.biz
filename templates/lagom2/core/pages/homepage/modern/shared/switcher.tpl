{assign var=currenciesSwitcher value=[
    [
        'name' => 'USD',
        'key' => 'usd',
        'id' => 1
    ],
    [
        'name' => 'RUB',
        'key' => 'rub',
        'id' => 2
    ],
    [
        'name' => 'EUR',
        'key' => 'eur',
        'id' => 3
    ]
]}



{if $currentUrl|strstr:"?"}
    {$currentpagelinkback = rtrim($currentpagelinkback, '&amp;')}
    {$divChar = "&amp;"}
{else}
    {$currentpagelinkback = rtrim($currentpagelinkback, '?')}
    {$divChar = "?"}
{/if}

    {foreach $currenciesSwitcher as $sw}
        <button class="switcher__item btn btn-switcher {if ($activeCurrency.id == $sw.id)}active{/if}" data-key="{$sw.key}">
            {$sw.name}
        </button>
    {/foreach}



