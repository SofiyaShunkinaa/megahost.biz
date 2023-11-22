{assign var=breadcrumb value=[
    [
        'link'=>"/index.php",
        'label'=>"Main"
    ],
    [
        'link'=>"/opportunities.php",
        'label'=>"Opportunities"
    ]
]}

{assign var=OpButtons value=[
    [
        'name' => 'macOS',
        'key' => 'macOS'
    ],
    [
        'name' => 'Windows',
        'key' => 'windows'
    ],
    [
        'name' => 'Трейдинг',
        'key' => 'trading'
    ],
    [
        'name' => 'Telegram',
        'key' => 'telegram'
    ],
    [
        'name' => 'DDoS защита',
        'key' => 'DDoS'
    ]
]}

{assign var=OpportunitiesCard value=[
    [
        'title'=>"VPS сервера с macOS",
        'desc'=>"Пользуйтесь Xcode, и другим ПО от Apple, без ограничений. Устанавливайте любое програмное обеспечение для MacOS и работайте как на обычном Mac.<br>Разрабатывайте ПО под MacOS, iOS, компилируйте ваш код используя <b>Xcode, Xamarin, Visual Studio</b> и другие приложения для macOS.",
        'img'=>"op-card1.png"
    ],
    [
        'title'=>"VPS сервера с Windows",
        'desc'=>"Перенесите ваши программы и подключайтесь к вашему виртуальному рабочему месту удалённо, в любое время, с любых устройств. Устанавливаете необходимое ПО и работаете как на обычном компьютере с операционной системой Windows.",
        'img'=>"op-card2.png"
    ],
    [
        'title'=>"VPS для трейдеров",
        'desc'=>"Работайте с биржами и торговыми площадками, запускайте торговые <b>терминалы, анализаторы, и торговых ботов</b> на круглосуточной основе. Возможность подключения удалённо, а так же со смартфонов и других устройств, без привязки к конкретному месту, обеспечивая бесперебойную круглосуточную работу",
        'img'=>"op-card3.png"
    ],
    [
        'title'=>"Сервера для Телеграм бота",
        'desc'=>"Наши серверы адаптированы под хостинг телеграм ботов. Как и в случае с другими нашими продуктами, мы предоставляем полный root-доступ для возможности установки всего необходимого ПО для работы бота, такое как Python, NodeJS и др. Вы можете обратиться к нашим специалистам для оказания помощи в развертывании и настроек Ваших ботов, установки PytelegrambotAPI, Airogram, Django, Flask, Docker и другого необходимого ПО.",
        'img'=>"op-card4.png"
    ],
    [
        'title'=>"DDoS защита",
        'desc'=>"Поможем защитить сервера от DDoS атак. Защита от DDoS-атак — это решение безопасности, которое помогает устранить такой тип атак на ваш сервер. Стараемся обнаруживать и смягчать последствий атак на сетевом уровне, прежде чем они смогут достичь целевой системы.",
        'img'=>"op-card5.png"
    ]
]}

{assign var=UNIX value=[
    [
        'img'=>"vpn",
        'text'=>"Установка CMS, VPN, proxy, SSL-сертификатов и других скриптов"
    ],
    [
        'img'=>"transfer",
        'text'=>"Перенос ваших проектов, незаметно для посетителей и без просадки трафика"
    ],
    [
        'img'=>"copies",
        'text'=>"Настройка резервного копирования"
    ],
    [
        'img'=>"optimize",
        'text'=>"Переустановка Вашего сервера с сохранением всех данных"
    ],
    [
        'img'=>"settings",
        'text'=>"Оптимизация настроек Ваших серверов, в случаях когда Ваш проект перестает справляться с растущей нагрузкой"
    ],
    [
        'img'=>"reason",
        'text'=>"Поиск причины некорректной работы ваших проектов"
    ],
    [
        'img'=>"php",
        'text'=>"Установка различных версий PHP, чтобы, в случае несовместимости, каждый сайт работал с той версией PHP, для которой разрабатывался"
    ]
]}

{$LANG.Opportunities.main.title="Возможности наших продуктов"}
{$LANG.Opportunities.main.subtitle="Ознакомитесь c дополнительными возможностями наших продуктов"}
{$LANG.Opportunities.cards.action="Выбрать тариф"}
{$LANG.Opportunities.trail.desc="Мы предоставляем нашим клиентам до 3 дней теста впс хостинга, и до 7 дней виртуального хостинга.<br>Для заказа сервера на тест свяжитесь с нами через форму, указав желаемый тариф. По окончанию тестового периода вы можете оплатить счёт и продолжить пользоваться услугой."}
{$LANG.Opportunities.trail.title="Тестовый период"}
{$LANG.Opportunities.trail.benefits.0.sub="VPS хостинг"}
{$LANG.Opportunities.trail.benefits.0.num_title="3"}
{$LANG.Opportunities.trail.benefits.0.title=" дня"}
{$LANG.Opportunities.trail.benefits.1.sub="Виртуальный хостинг"}
{$LANG.Opportunities.trail.benefits.1.num_title="7"}
{$LANG.Opportunities.trail.benefits.1.title=" дней"}
{$LANG.Opportunities.trail.action="Заказать пробный период"}
{$LANG.Opportunities.unix.title="Бесплатное UNIX администрирование для всех клиентов"}


<div class="main-header">
    <div class="container">
        <div class="banner-content">
            {include file="$template/includes/pageheader.tpl" title="$displayTitle {if $product}$product{/if}" desc=$tagline showbreadcrumb=true}

            <div class="main-header__top-banner">
                <div class="banner-title">
                    <h1>{$LANG.Opportunities.main.title}</h1>
                </div>

                <p>{$LANG.Opportunities.main.subtitle}</p>  

            </div>
        </div>
    </div>
</div>

<div class="main-body">
    <div class="container">

        <div class="switcher-wrapper">
            <div class="switcher opportunities-switcher sw-white">

                {foreach from=$OpButtons item=sw}

                    <button class="switcher__item btn btn-switcher" data-key="{$sw.key}">
                        {$sw.name}
                    </button>                       
                {/foreach}

            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="container-op-cards">
        {foreach from=$OpportunitiesCard item=card}
            <div class="op-card-item">
                <div class="content--general">
                
                    <div class="content-info">
                        <div class="content-info__title">
                            <h2>{$card.title}</h2>
                        </div>

                        <div class="content-info__desc">
                            <p>{$card.desc}</p>
                        </div>

                        <div class="content-info__action">
                            <a href="#" class="btn btn-lg btn-primary btn-package" data-target="incoming">{$LANG.Opportunities.cards.action}</a>
                        </div>

                    </div>

                    <div class="content-img">
                        <img src="templates/{$template}/assets/img/{$card.img}" alt="card-img">
                    </div>
                </div>
            </div>
        {/foreach}
        </div>
    </div>

    <div class="container container-trail">

        <div class="content--general">
            <div class="content-info">
                <div class="content-info__title title-trail">
                    <h2>{$LANG.Opportunities.trail.title}</h2>
                </div>

                <div class="content-info__desc desc-trail">
                    <p>{$LANG.Opportunities.trail.desc}</p>
                </div>

                <div class="content-info__benefits">
                    <div class="benefit-item">
                        <div class="sub statistics-desc">
                            <span>{$LANG.Opportunities.trail.benefits.0.sub}</span>
                        </div>

                        <div class="ttl statistics-sub">
                            <span class="number">{$LANG.Opportunities.trail.benefits.0.num_title}</span>
                            <span>{$LANG.Opportunities.trail.benefits.0.title}</span>
                        </div>
                    </div>

                    <div class="benefit-item">
                        <div class="sub statistics-desc">
                            <span>{$LANG.Opportunities.trail.benefits.1.sub}</span>
                        </div>

                        <div class="ttl statistics-sub">
                            <span class="number">{$LANG.Opportunities.trail.benefits.1.num_title}</span>
                            <span>{$LANG.Opportunities.trail.benefits.1.title}</span>
                        </div>
                    </div>
                </div>

                <div class="content-info__action">
                    <a href="#" class="btn btn-lg btn-primary btn-package" data-target="incoming">{$LANG.Opportunities.trail.action}</a>
                </div>
            </div>

            <div class="content-img">
                <img src="templates/{$template}/assets/img/trail.png" alt="trail-img">
            </div>
        </div>

    </div>

    <div class="container-fluid container-faq container-unix">
        <div class="container">
        
            <h2 class="section-title">{$LANG.Opportunities.unix.title}</h2>
                
            <div class="section-content section-unix">
                <div class="unix-grid">
                    {foreach from=$UNIX item=block}
                        <div class="unix-block grid__item u-block--{$block.img} ">

                            <div class="unix-block__icon">
                                <img src="templates/{$template}/assets/img/icons/{$block.img}.png" alt="unix-img">
                            </div>

                            <div class="unix-block__text item__txt">{$block.text}</div>
                            
                        </div>
                    {/foreach}
                </div>
            </div>
        
        </div>    
    </div>

</div>