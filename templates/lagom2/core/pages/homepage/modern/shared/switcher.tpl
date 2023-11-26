{assign var=currencies value=[
    [

    ]
]}
{if $currentUrl|strstr:"?"}
    {$currentpagelinkback = rtrim($currentpagelinkback, '&amp;')}
    {$divChar = "&amp;"}
{else}
    {$currentpagelinkback = rtrim($currentpagelinkback, '?')}
    {$divChar = "?"}
{/if}

    {foreach $currencies as $currency}
        <button class="switcher__item btn btn-switcher {if ($activeCurrency.id == $currency.id)}active{/if}" data-key="{$sw.key} ">
            {$sw.name}
        </button>
    {/foreach}
