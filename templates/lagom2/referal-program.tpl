{assign var=breadcrumb value=[
    [
        'link'=>"/index.php",
        'label'=>"Main"
    ]
]}

{assign var=Referal value=[
    [
        'img'=>"people.png",
        'title'=>"Не теряем ваших людей",
        'text'=>"С помощью cookie мы видим посетителей, пришедших по вашей реферальной ссылке. Если первый заказ будет совершён в течение 90 дней, он будет учтён."
    ],
    [
        'img'=>"payments.png",
        'title'=>"Выплаты",
        'text'=>"Мы платим комиссию за каждый заказ, сделанный через вашу партнёрскую ссылку. От первого и до последнего платежа совершённый пользователем. Минимальная сумма выплаты - 100 $ или 8 000 ₽."
    ]
]}

{$LANG.Referal.main.title="Возможности наших продуктов"}
{$LANG.Referal.main.subtitle="Ознакомитесь c дополнительными возможностями наших продуктов"}
{$LANG.Referal.main.action="Активировать программу"}
{$LANG.Referal.content.title="Как это работает?"}

<div class="main-header">
    <div class="container container-promotion">
        <div class="banner-content">
            {include file="$template/includes/pageheader.tpl" title="$displayTitle {if $product}$product{/if}" desc=$tagline showbreadcrumb=true}

            <div class="main-header__top-banner">
                <div class="banner-title">
                    <h1>{$LANG.Referal.main.title}</h1>
                </div>

                <p>{$LANG.Referal.main.subtitle}</p>

                <a href="#" class="btn btn-lg btn-primary btn-package" data-target="incoming">{$LANG.Referal.main.action}</a>

            </div>
        </div>
    </div>
</div>

<div class="main-body">
    <div class="container-fluid container-faq container-referal">
        <div class="container">
            <h2 class="section-title">{$LANG.Referal.content.title}</h2>

            <div class="section-content section-referal">

                {foreach from=$Referal item=ref}
                    <div class="referal-item grid__item">

                        <div class="referal-item__img">
                            <img src="templates/{$template}/assets/img/icons/{$ref.img}" alt="refeal-img">
                        </div>

                        <div class="referal-item__title">
                            <h3>{$ref.title}</h3>
                        </div>

                        <div class="referal-item__text item__txt">
                            <p>{$ref.text}</p>
                        </div>

                    </div>
                {/foreach}

            </div>
        </div>
    </div>
</div>