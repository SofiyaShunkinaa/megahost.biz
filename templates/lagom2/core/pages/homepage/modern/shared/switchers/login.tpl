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
        const currentPage = window.location.pathname;

        buttons.forEach(button => {
            const key = button.getAttribute('data-key');
            const buttonLink = key === 'login' ? '/index.php?rp=/login' : '/register.php';
            
            button.addEventListener('click', function() {
                window.location.href = buttonLink;
            });
            
            if (key === "login") {
                button.classList.add('active-button'); 
            }
        });
        });
    </script>