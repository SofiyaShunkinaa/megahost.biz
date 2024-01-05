{if ($language == 'english')}
    {assign var=LogButtons value=[
        [
            'name' => 'Login',
            'key' => 'login'
        ],
        [
            'name' => 'Registration',
            'key' => 'registration'
        ]
    ]}
{else}
    {assign var=LogButtons value=[
        [
            'name' => 'Вход',
            'key' => 'login'
        ],
        [
            'name' => 'Регистрация',
            'key' => 'registration'
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

    {foreach $LogButtons as $sw}
        <button class="switcher__item btn btn-switcher" data-key="{$sw.key}">
            {$sw.name}
        </button>
    {/foreach}

