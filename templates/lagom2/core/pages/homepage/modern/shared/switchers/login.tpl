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

<script>
        document.addEventListener('DOMContentLoaded', function() {
        const buttons = document.querySelectorAll('.switcher__item');

        buttons.forEach(button => {
            const key = button.getAttribute('data-key');
            const buttonsLink = key === 'registration' ? '/register.php' : '/index.php?rp=/login';
            
            button.addEventListener('click', function() {
                window.location.href = buttonsLink;
            });
            
            //const currentPathWithQuery = window.location.pathname + window.location.search;
            //if (buttonsLink === currentPathWithQuery) {
                document.querySelector(currentPathWithQuery).classList.add('active-button');
                //button.
                //alert("blyat")
            //}
            
        });
        });

    </script>