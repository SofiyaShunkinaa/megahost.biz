{if ($language == 'english')}    

{assign var=Articles value=[

    [
        'title' => 'Are there any restrictions on installing software on VPS hosting?',
        'text_p' => 'Yes, on VPS, you can host multiple websites. VPS allows you to divide its resources and configure it according to your needs. You can create virtual environments or containers to isolate each website or project, ensuring reliability and security. For easier management, you can install a web hosting control panel such as DirectAdmin, ISPmanager, or another that provides a graphical interface for managing your websites, databases, email, and other settings. This will help you efficiently manage your websites and ensure their stable operation.'
    ],
    [
        'title' => 'What operating systems can be installed on VPS hosting?',
        'text_p' => 'Yes, on VPS, you can host multiple websites. VPS allows you to divide its resources and configure it according to your needs. You can create virtual environments or containers to isolate each website or project, ensuring reliability and security. For easier management, you can install a web hosting control panel such as DirectAdmin, ISPmanager, or another that provides a graphical interface for managing your websites, databases, email, and other settings. This will help you efficiently manage your websites and ensure their stable operation.'
    ],
    [
        'title' => 'What type of VPS hosting do you provide?',
        'text_p' => 'Yes, on VPS, you can host multiple websites. VPS allows you to divide its resources and configure it according to your needs. You can create virtual environments or containers to isolate each website or project, ensuring reliability and security. For easier management, you can install a web hosting control panel such as DirectAdmin, ISPmanager, or another that provides a graphical interface for managing your websites, databases, email, and other settings. This will help you efficiently manage your websites and ensure their stable operation.'
    ],
    [
        'title' => 'What operating systems can be installed on VPS hosting?',
        'text_p' => 'Yes, on VPS, you can host multiple websites. VPS allows you to divide its resources and configure it according to your needs. You can create virtual environments or containers to isolate each website or project, ensuring reliability and security. For easier management, you can install a web hosting control panel such as DirectAdmin, ISPmanager, or another that provides a graphical interface for managing your websites, databases, email, and other settings. This will help you efficiently manage your websites and ensure their stable operation.'
    ],
    [
        'title' => 'What is a web hosting control panel?',
        'text_p' => 'Yes, on VPS, you can host multiple websites. VPS allows you to divide its resources and configure it according to your needs. You can create virtual environments or containers to isolate each website or project, ensuring reliability and security. For easier management, you can install a web hosting control panel such as DirectAdmin, ISPmanager, or another that provides a graphical interface for managing your websites, databases, email, and other settings. This will help you efficiently manage your websites and ensure their stable operation.'
    ],
    [
        'title' => 'Are there any restrictions on installing software on VPS hosting?',
        'text_p' => 'Yes, on VPS, you can host multiple websites. VPS allows you to divide its resources and configure it according to your needs. You can create virtual environments or containers to isolate each website or project, ensuring reliability and security. For easier management, you can install a web hosting control panel such as DirectAdmin, ISPmanager, or another that provides a graphical interface for managing your websites, databases, email, and other settings. This will help you efficiently manage your websites and ensure their stable operation.'
    ],
    [
        'title' => 'Are there any restrictions on installing software on VPS hosting?',
        'text_p' => 'Yes, on VPS, you can host multiple websites. VPS allows you to divide its resources and configure it according to your needs. You can create virtual environments or containers to isolate each website or project, ensuring reliability and security. For easier management, you can install a web hosting control panel such as DirectAdmin, ISPmanager, or another that provides a graphical interface for managing your websites, databases, email, and other settings. This will help you efficiently manage your websites and ensure their stable operation.'
    ]

]}

{assign var=KbButtons value=[
    [
        'name' => 'Popular',
        'key' => 'popular'
    ],
    [
        'name' => 'Server Settings',
        'key' => 'server_settings'
    ],
    [
        'name' => 'Referral Program',
        'key' => 'ref_programm'
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
        'key' => 'shared_servers'
    ]
]}

{$LANG.KB.main.title="Categories"}


{else}

{$LANG.KB.main.title="Категории"}

{assign var=Articles value=[

    [
        'title' => 'Есть ли какие-то ограничения по установке программного обеспечение на VPS-хостинге?',
        'text_p' => 'Да, на VPS вы можете разместить несколько сайтов. VPS позволяет вам разделить его ресурсы и настроить его в соответствии с вашими потребностями. Вы можете создать виртуальные окружения или контейнеры, чтобы изолировать каждый сайт или проект, обеспечивая надежность и безопасность. Для более удобного управления вы можете установить панель управления веб-хостингом, такую как DirectAdmin, ISPmanager или другую, которая предоставит вам графический интерфейс для управления вашими сайтами, базами данных, электронной почтой и другими настройками. Это поможет вам эффективно управлять вашими сайтами и обеспечить их стабильную работу.'
    ],
    [
        'title' => 'Какие операционные системы могут быть установлены на VPS-хостинге?',
        'text_p' => 'Да, на VPS вы можете разместить несколько сайтов. VPS позволяет вам разделить его ресурсы и настроить его в соответствии с вашими потребностями. Вы можете создать виртуальные окружения или контейнеры, чтобы изолировать каждый сайт или проект, обеспечивая надежность и безопасность. Для более удобного управления вы можете установить панель управления веб-хостингом, такую как DirectAdmin, ISPmanager или другую, которая предоставит вам графический интерфейс для управления вашими сайтами, базами данных, электронной почтой и другими настройками. Это поможет вам эффективно управлять вашими сайтами и обеспечить их стабильную работу.'
    ],
    [
        'title' => 'Какой тип VPS хостинга вы предоставляете?',
        'text_p' => 'Да, на VPS вы можете разместить несколько сайтов. VPS позволяет вам разделить его ресурсы и настроить его в соответствии с вашими потребностями. Вы можете создать виртуальные окружения или контейнеры, чтобы изолировать каждый сайт или проект, обеспечивая надежность и безопасность. Для более удобного управления вы можете установить панель управления веб-хостингом, такую как DirectAdmin, ISPmanager или другую, которая предоставит вам графический интерфейс для управления вашими сайтами, базами данных, электронной почтой и другими настройками. Это поможет вам эффективно управлять вашими сайтами и обеспечить их стабильную работу.'
    ],
    [
        'title' => 'Какие операционные системы могут быть установлены на VPS-хостинге?',
        'text_p' => 'Да, на VPS вы можете разместить несколько сайтов. VPS позволяет вам разделить его ресурсы и настроить его в соответствии с вашими потребностями. Вы можете создать виртуальные окружения или контейнеры, чтобы изолировать каждый сайт или проект, обеспечивая надежность и безопасность. Для более удобного управления вы можете установить панель управления веб-хостингом, такую как DirectAdmin, ISPmanager или другую, которая предоставит вам графический интерфейс для управления вашими сайтами, базами данных, электронной почтой и другими настройками. Это поможет вам эффективно управлять вашими сайтами и обеспечить их стабильную работу.'
    ],
    [
        'title' => 'Что такое панель управления хостингом?',
        'text_p' => 'Да, на VPS вы можете разместить несколько сайтов. VPS позволяет вам разделить его ресурсы и настроить его в соответствии с вашими потребностями. Вы можете создать виртуальные окружения или контейнеры, чтобы изолировать каждый сайт или проект, обеспечивая надежность и безопасность. Для более удобного управления вы можете установить панель управления веб-хостингом, такую как DirectAdmin, ISPmanager или другую, которая предоставит вам графический интерфейс для управления вашими сайтами, базами данных, электронной почтой и другими настройками. Это поможет вам эффективно управлять вашими сайтами и обеспечить их стабильную работу.'
    ],
    [
        'title' => 'Есть ли ограничения ограничения по установке программного обеспечение на VPS-хостинге?',
        'text_p' => 'Да, на VPS вы можете разместить несколько сайтов. VPS позволяет вам разделить его ресурсы и настроить его в соответствии с вашими потребностями. Вы можете создать виртуальные окружения или контейнеры, чтобы изолировать каждый сайт или проект, обеспечивая надежность и безопасность. Для более удобного управления вы можете установить панель управления веб-хостингом, такую как DirectAdmin, ISPmanager или другую, которая предоставит вам графический интерфейс для управления вашими сайтами, базами данных, электронной почтой и другими настройками. Это поможет вам эффективно управлять вашими сайтами и обеспечить их стабильную работу.'
    ],
    [
        'title' => 'Есть ли ограничения ограничения по установке программного обеспечение на VPS-хостинге?',
        'text_p' => 'Да, на VPS вы можете разместить несколько сайтов. VPS позволяет вам разделить его ресурсы и настроить его в соответствии с вашими потребностями. Вы можете создать виртуальные окружения или контейнеры, чтобы изолировать каждый сайт или проект, обеспечивая надежность и безопасность. Для более удобного управления вы можете установить панель управления веб-хостингом, такую как DirectAdmin, ISPmanager или другую, которая предоставит вам графический интерфейс для управления вашими сайтами, базами данных, электронной почтой и другими настройками. Это поможет вам эффективно управлять вашими сайтами и обеспечить их стабильную работу.'
    ]

    ]}

{assign var=KbButtons value=[
    [
        'name' => 'Популярные',
        'key' => 'popular'
    ],
    [
        'name' => 'Настройки сервера',
        'key' => 'server_settings'
    ],
    [
        'name' => 'Реферальная программа',
        'key' => 'ref_programm'
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
        'key' => 'shared_servers'
    ]]}



{/if}




{if isset($RSThemes['pages'][$templatefile]) && file_exists($RSThemes['pages'][$templatefile]['fullPath'])}
    {include file=$RSThemes['pages'][$templatefile]['fullPath']}
{else}
    <div class="container container-faq">

        <div class="kb-title">
            <h2 class="section-title">{$LANG.KB.main.title}</h2>
        </div>

        <div class="kb-search-form">
            <form role="form" method="post" action="{routePath('knowledgebase-search')}">
                <div class="search-group">
                    <div class="search-field search-field-lg">
                        <i class="search-field-icon lm lm-search"></i>
                        <input class="form-control form-control-lg" type="text" id="inputKnowledgebaseSearch" name="search" placeholder="{$LANG.howcanwehelp}" value="{$searchterm}"  />
                    </div>
                    {*<button class="btn btn-lg btn-primary{if $searchBoxStyle == 'primary'}-faded{/if}" type="submit" id="btnKnowledgebaseSearch">{$LANG.search}</button>*}
                </div>
            </form>
        </div>

        <div class="switcher-wrapper">
            <div class="switcher kb-switcher sw-white">

                {foreach from=$KbButtons item=sw}

                    <button class="switcher__item btn btn-switcer" data-key="{$sw.key}">
                        {$sw.name}
                    </button>                       
                {/foreach}

            </div>
        </div>

        <div class="section-articles">
            {foreach from=$Articles item=article}
                {if file_exists("templates/lagom2/core/pages/homepage/modern/shared/articles.tpl")}
                    {include file="$templates/lagom2/core/pages/homepage/modern/shared/articles.tpl"}
                {/if}
            {/foreach} 
        </div>
    </div>
           {* {if $kbcats}
                <div class="list-group">
                    {foreach from=$kbcats name=kbcats item=kbcat}  
                        <a class="list-group-item has-icon" href="{routePath('knowledgebase-category-view', {$kbcat.id}, {$kbcat.urlfriendlyname})}">
                            <i class="list-group-item-icon lm lm-folder"></i>
                            <div class="list-group-item-body">
                                <div class="list-group-item-heading">{$kbcat.name} ({$kbcat.numarticles}){if $kbcat.editLink} <button data-lagom-href="{$kbcat.editLink}" class="btn btn-xs btn-default">{$LANG.edit}</button>{/if}</div> 
                                {if $kbcat.description}<p class="list-group-item-text">{$kbcat.description}</p>{/if}
                            </div>
                        </a>
                    {/foreach}
                </div>
                
            {else}

                <div class="section kb-articles">

                    <div class="section-body">
                        vrgfesr
                    </div>

                </div>

                <div class="message message-no-data">
                    
                </div>
            {/if}*}
        </div>
    </div>
    {if $kbmostviews}
        
    {/if}
{/if}    