{if ($language == 'english')} 
    {assign var=DSButtonsAnnouncements value=[
            [
            'name' => 'All',
            'key' => 'all'
            ],
            [
                'name' => 'DDoS',
                'key' => 'ddos'
            ],
            [
                'name' => 'Hosting',
                'key' => 'hosting'
            ],
            [
                'name' => 'News',
                'key' => 'news'
            ],
            [
                'name' => 'VNP',
                'key' => 'vnp'
            ],
            [
                'name' => 'VNS',
                'key' => 'vns'
            ],
            [
                'name' => 'Dedicated Servers',
                'key' => 'dedicated_servers'
            ]
        ]}

{else}
    {assign var=DSButtonsAnnouncements value=[
        [
            'name' => 'Все',
            'key' => 'all'
        ],
        [
            'name' => 'DDoS',
            'key' => 'ddos'
        ],
        [
            'name' => 'Хостинг',
            'key' => 'hosting'
        ],
        [
            'name' => 'Нововсти',
            'key' => 'news'
        ],
        [
            'name' => 'VNP',
            'key' => 'vnp'
        ],
        [
            'name' => 'VNS',
            'key' => 'vns'
        ],
        [
            'name' => 'Выделенные сервера',
            'key' => 'dedicated_servers'
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

    {foreach $DSButtonsAnnouncements as $sw}
        <button class="switcher__item btn btn-switcher" data-key="{$sw.key}">
            {$sw.name}
        </button>
    {/foreach}

