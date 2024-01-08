{if ($language == 'english')} 
    {assign var=DSButtonsPlan value=[
            [
                'name' => 'Single',
                'key' => 'single'
            ],
            [
                'name' => 'Double',
                'key' => 'double'
            ]
        ]}

{else}
    {assign var=DSButtonsPlan value=[
        [
            'name' => 'Одинарный',
            'key' => 'single'
        ],
        [
            'name' => 'Двойной',
            'key' => 'double'
        ]
    ]}
{/if}

{if $currentUrl|strstr:"?"}
    {$currentpagelinkback = rtrim($currentpagelinkback, '&amp;')}
    {$divChar = "&amp;"}
{else}
    {$currentpagelinkback = rtrim($currentpagelinkback, '?')}
    {$divChar = "?"}
{/if}

    {foreach $DSButtonsPlan as $sw}
        <button class="switcher__item btn btn-switcher" data-key="{$sw.key}">
            {$sw.name}
        </button>
    {/foreach}

