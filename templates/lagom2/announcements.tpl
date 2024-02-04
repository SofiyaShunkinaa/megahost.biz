{if ($language == 'english')}    

{$LANG.Blog.section.title="Articles"}

{assign var=BlogNews value=[
    [
        'title' => 'DDoS Attacks and Methods of Protection Against Them',
        'tag' => '#DDoS',
        'date' => 'July 1, 2023',
        'img' => 'img1.png'
    ],
    [
        'title' => 'Moving MODX Website to a New Hosting in 2023',
        'tag' => '#Hosting',
        'date' => 'May 30, 2023',
        'img' => 'img2.png'
    ],
    [
        'title' => '5 Ways to Get a Free Domain',
        'tag' => '#Hosting',
        'date' => 'May 26, 2023',
        'img' => 'img3.png'
    ],
    [
        'title' => 'Referral Program Became Even More Attractive',
        'tag' => '#News',
        'date' => 'May 17, 2023',
        'img' => 'img4.png'
    ],
    [
        'title' => 'Receive Notifications about Services on Telegram and Viber',
        'tag' => '#News',
        'date' => 'May 20, 2023',
        'img' => 'img5.png'
    ],
    [
        'title' => 'New Payment Method for International Cards',
        'tag' => '#News',
        'date' => 'May 17, 2023',
        'img' => 'img6.png'
    ],
    [
        'title' => '5 Ways to Get a Free Domain',
        'tag' => '#Hosting',
        'date' => 'May 26, 2023',
        'img' => 'img7.png'
    ],
    [
        'title' => 'Referral Program Became Even More Attractive',
        'tag' => '#News',
        'date' => 'May 17, 2023',
        'img' => 'img8.png'
    ],
    [
        'title' => 'Moving MODX Website to a New Hosting in 2023',
        'tag' => '#Hosting',
        'date' => 'May 30, 2023',
        'img' => 'img9.png'
    ]
]}


{else}

{$LANG.Blog.section.title="Статьи"}

{assign var=BlogNews value=[
    [
        'title' => 'DDoS-атаки и методы защиты от них',
        'tag' => '#DDos',
        'date' => '1 июля 2023',
        'img' => 'img1.png'
    ],
    [
        'title' => 'Перенос сайта MODX на новый хостинг в 2023 году',
        'tag' => '#Хостиг',
        'date' => '30 мая 2023',
        'img' => 'img2.png'
    ],
    [
        'title' => '5 способов получить бесплатный домен',
        'tag' => '#Хостиг',
        'date' => '26 мая 2023',
        'img' => 'img3.png'
    ],
    [
        'title' => 'Реферальная программа стала ещё привлекательнее',
        'tag' => '#Новости',
        'date' => '17 мая 2023',
        'img' => 'img4.png'
    ],
    [
        'title' => 'Получайте уведомления об услугах в Telegram и Viber',
        'tag' => '#Новости',
        'date' => '20 мая 2023',
        'img' => 'img5.png'
    ],
    [
        'title' => 'Новый способ оплаты для международных карт',
        'tag' => '#Новости',
        'date' => '17 мая 2023',
        'img' => 'img6.png'
    ],
    [
        'title' => '5 способов получить бесплатный домен',
        'tag' => '#Хостинг',
        'date' => '26 мая 2023',
        'img' => 'img7.png'
    ],
    [
        'title' => 'Реферальная программа стала еще привлекательнее',
        'tag' => '#Новости',
        'date' => '17 мая 2023',
        'img' => 'img8.png'
    ],
    [
        'title' => 'Перенос сайта MODX на новый хостинг в 2023 году',
        'tag' => '#Хостинг',
        'date' => '30 мая 2023',
        'img' => 'img9.png'
    ]
]}

{/if}

{if isset($RSThemes['pages'][$templatefile]) && file_exists($RSThemes['pages'][$templatefile]['fullPath'])}
    {include file=$RSThemes['pages'][$templatefile]['fullPath']}
{else}
    {if $announcementsFbRecommend}
        <script>
            (function(d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) {
                    return;
                }
                js = d.createElement(s); js.id = id;
                js.src = "//connect.facebook.net/{$LANG.locale}/all.js#xfbml=1";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
        </script>
    {/if}


    {if $BlogNews}
    <div class="container-faq">
        <div class="news-section">

            <h2 class="section-title">{$LANG.Blog.section.title}</h2>

            {*<div class="ns-grid">
                {$num=1}
                {foreach from=$BlogNews item=news}
                    <div class="ns-grid__item col-4 ">
                        <div class="news-img">
                            <a href="#">
                                <img src="templates/{$template}/assets/img/blog/img{$num++}.png">
                            </a>
                        </div>
                        <div class="news-sub">
                            <div class="news-sub__tag">
                                <span>{$news.tag}</span>
                            </div>

                            <div class="news-sub__date">
                                <span>{$news.date}</span>
                            </div>
                        </div>
                        <div class="news-title">
                            <a href="#">
                                <span>{$news.title}</span>
                            </a>    
                        </div>
                    </div>
                {/foreach}

            </div>
        </div>*}
        <div class="announcements-list list-group list-group-lg">
        {foreach from=$announcements item=announcement}
            <div class="list-group-item list-group-item-link" data-lagom-href="{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}">
                <span class="announcement-date"><i class="ls ls-calendar"></i>{$carbon->createFromTimestamp($announcement.timestamp)->format('jS M Y')}</span>
                <h3 class="list-group-item-heading">{$announcement.title}</h3>
                {if $announcement.text|strip_tags|strlen < 350}
                    <div class="list-group-item-text">{$announcement.text}</div>
                {else}
                    {$imgSrc = true}
                    {if isset($RSThemes['pages'][$templatefile]['config']['displayImages']) && $RSThemes['pages'][$templatefile]['config']['displayImages'] == '1'}
                        {$imgCheck = $announcement.text|truncate:"10"}
                        {if $imgCheck|strstr:"<img"}
                            {$imgArray = "<img"|explode:$announcement.text}
                            {$imgArray = "/>"|explode:$imgArray[1]}
                            {$imgSrc = 'vgfdv'}

                            {*$imgSrc = $imgCheck|regex_replace:'.*<img\s+src=\"([^\"]+)\".*':'$1'*}
                            {*$srcValue=".*<img\s+src=\"([^\"]+)\".*"}
                            {regex_replace pattern=$srcValue replace="\1" subject=$imgSrc*}
                        {/if}
                    {/if}
                            {$imgSrc = $announcement.text|regex_replace:'/.*<img\s+src=\"([^\"]+)\".*/':'$1'}
                            

                    <div class="list-group-item-text">
                        {if $imgSrc}
                            <img src="{$imgSrc}" />
                        {/if}
                        {$announcement.summary}
                    </div>
                {/if}
                <div class="list-group-item-footer">
                    <span class="btn btn-sm btn-primary-faded">{$LANG.readmore}</span>
                    {if $announcement.editLink}
                        <button data-lagom-href="{$announcement.editLink}" class="btn btn-primary-faded btn-sm">                    
                            {$LANG.edit}
                        </button>
                    {/if}
                    <div class="announcement-details">
                        {if $announcementsFbRecommend}
                            <div class="fb-like hidden-sm hidden-xs" data-layout="standard" data-lagom-href="{fqdnRoutePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend"></div>
                            <div class="fb-like hidden-lg hidden-md" data-layout="button_count" data-lagom-href="{fqdnRoutePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend"></div>
                        {/if}
                    </div>
                </div>
            </div>
        {/foreach}
        
        <ul class="pagination">
            {foreach $pagination as $item}
            <li {if $item.active}class="active"{/if}>
                <a href="{$item.link}" {if $item.disabled} disabled="disabled"{/if}>{$item.text}</a>
            </li>
            {/foreach}
        </ul>
        
       
    </div>
    {else}
        <div class="message message-no-data">
            <div class="message-image">
                {include file="$template/includes/common/svg-icon.tpl" icon="article"}
            </div>
            <h6 class="message-title">{$LANG.noannouncements}</h6>
        </div>
    {/if}
    </div>
{/if}    

{debug}