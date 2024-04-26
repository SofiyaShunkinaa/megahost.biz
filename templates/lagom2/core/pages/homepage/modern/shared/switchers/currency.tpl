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

<script>
var currency = 'usd';

  document.addEventListener('DOMContentLoaded', function() {
    const buttons = document.querySelectorAll('.switcher__item');
    const currentPage = '';

    buttons.forEach(button => {
        const key = button.getAttribute('data-key');
        var buttonLink = '';

        switch(key){
          case "usd":
            buttonLink = '/index.php?currency=1';
            break;
          case "rub":
            buttonLink = '/index.php?currency=2';
            break;
          case "eur":
            buttonLink = '/index.php?currency=3';
            break;
        }
        
        button.addEventListener('click', function() {
            window.location.href = buttonLink;
        });
        
        if (buttonLink === currentPage) {
            button.classList.add('active-button'); 
            currency = key;
        }
    });
  });



</script>