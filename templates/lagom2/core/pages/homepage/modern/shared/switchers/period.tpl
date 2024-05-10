{if ($language == 'english')} 
    {assign var=DSButtonsPeriod value=[
            [
                'name' => '1 mo.',
                'key' => '1mnth'
            ],
            [
                'name' => '3 mo.',
                'key' => '3mnth'
            ],
            [
                'name' => '6 mo.',
                'key' => '6mnth'
            ],
            [
                'name' => '1 year',
                'key' => '1year'
            ]
        ]}

{else}
    {assign var=DSButtonsPeriod value=[
        [
            'name' => '1 мес.',
            'key' => "monthly"
        ],
        [
            'name' => '3 мес.',
            'key' => "quarterly"
        ],
        [
            'name' => '6 мес.',
            'key' => "semiannually"
        ],
        [
            'name' => '1 год',
            'key' => "annually"
        ]
    ]}
{/if}
{*foreach from=$products item=product}
{$products.pricing.minprice.cycle = "quarterly"}
{/foreach}

{foreach $productsPricing as $pr}
{$pr.cycle = "quarterly"}
{/foreach*}

{if $currentUrl|strstr:"?"}
    {$currentpagelinkback = rtrim($currentpagelinkback, '&amp;')}
    {$divChar = "&amp;"}
{else}
    {$currentpagelinkback = rtrim($currentpagelinkback, '?')}
    {$divChar = "?"}
{/if}

    {foreach $DSButtonsPeriod as $sw}
        <button class="switcher__item btn btn-switcher {if $priceCycle == $sw.key}active{/if}" data-key="{$sw.key}">
            {$sw.name}
        </button>
    {/foreach}
