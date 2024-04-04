{if ($language == 'english')} 
    {$LANG.Ticket.title="Ticket"}
    {$LANG.Ticket.placeholder="Your message..."}
    {$LANG.Ticket.submit="Send message"}
    {$LANG.Ticket.available_formats="(.jpg, .gif, .jpeg, .png up to 8 Mb)"}
    {$LANG.Ticket.attach_files="Attach files"}
{else}
    {$LANG.Ticket.title="Тикет"}
    {$LANG.Ticket.placeholder="Ваше сообщение..."}
    {$LANG.Ticket.submit="Отправить сообщение"}
    {$LANG.Ticket.available_formats="(.jpg, .gif, .jpeg, .png до 8 МБ)"}
    {$LANG.Ticket.attach_files="Прикрепить файлы"}
{/if}

{if isset($RSThemes['pages'][$templatefile]) && file_exists($RSThemes['pages'][$templatefile]['fullPath'])}
    {include file=$RSThemes['pages'][$templatefile]['fullPath']}
{else}
    {if $errormessage}
        {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage additionalClasses='alert-primary'}
    {/if}
    {* 
        -- Start of integration code --
        - Integration code for: Premium Support Tickets For WHMCS from ModulesGarden
        - Module URL: https://www.modulesgarden.com/products/whmcs/premium-support-tickets
    *}
    {if $PremiumSupportTickets && $PremiumSupportTickets.canCreate}
        <div class="alert alert-lagom alert-primary alert-info alert-premium-support-tickets">
            <div class="alert-body">
                {$PremiumSupportTickets.haveInCreatePointsMsg} <b class="ticket-points">{$PremiumSupportTickets.havePoints}</b>
            </div>
        </div>
        <script type="text/javascript">
        {literal}
        $(document).ready(function() {
            $('select[name=deptid]').change(function() {
                window.location.href = 'submitticket.php?step=2&deptid='+$(this).val();
            });
        });
        {/literal}
        </script>
    {/if}
    {* -- End of integration code -- *}
    <form method="post" action="{$smarty.server.PHP_SELF}?step=3" enctype="multipart/form-data" role="form">
        <div class="section section-ticket">
            <div class="section-header">
                <h2 class="section-title">{$LANG.ticketinfo}</h2>
            </div>
            <div class="section-body">
                <div class="panel panel-default panel-form panel-ticket">
                    <div class="panel-body">
                        <div class="row row-title">
                        <h2>{$LANG.Ticket.title}</h2>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="inputName">{$LANG.supportticketsclientname}</label>
                                <input type="text" name="name" id="inputName" value="{if $loggedin}{$clientsdetails.fullname}{else}{$name}{/if}" class="form-control{if $loggedin} disabled{/if}"{if $loggedin} disabled="disabled"{/if} />
                            </div>
                            <div class="form-group col-md-12">
                                <label for="inputEmail">{$LANG.supportticketsclientemail}</label>
                                <input type="email" name="email" id="inputEmail" value="{$email}" class="form-control{if $loggedin} disabled{/if}"{if $loggedin} disabled="disabled"{/if} />
                            </div>

                            <div class="form-group col-md-12">
                                <label for="inputDepartment">{$LANG.supportticketsdepartment}</label>
                                <select name="deptid" id="inputDepartment" class="form-control" onchange="refreshCustomFields(this)">
                                    {foreach from=$departments item=department}
                                        <option value="{$department.id}"{if $department.id eq $deptid} selected="selected"{/if}>
                                            {$department.name}
                                        </option>
                                    {/foreach}
                                </select>
                            </div>
                        </div>
                    
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="inputSubject">{$LANG.supportticketsticketsubject}</label>
                                <input type="text" name="subject" id="inputSubject" value="{$subject}" class="form-control" />
                            </div>
                            <div class="form-group col-md-12">
                                <label for="inputMessage">{$LANG.contactmessage}</label>
                                <textarea name="message" id="inputMessage" rows="12" class="form-control markdown-editor" data-auto-save-name="client_ticket_open" placeholder="{$LANG.Ticket.placeholder}">{$message}</textarea>
                            </div>
                        </div>

                        <div class="row row-files">
                            <div class="col-md-12">
                                <div class="file-input form-control form-files">
                                    <input type="file" name="attachments[]" id="inputAttachments" class="form-control" />
                                    <span class="file-input-button btn">
                                        <img src="templates/{$template}/assets/img/clip.png">
                                        {$LANG.Ticket.attach_files}
                                    </span>
                                  
                                    <span class="file-input-text text-light">
                            {$LANG.Ticket.available_formats}
                        </span>
                                </div>
                                <div id="fileUploadsContainer"></div>
                            </div>
                           
                            
                        </div>

                        <div class="row">
                        <div class="form-actions">
            <input type="submit" id="openTicketSubmit" value="{$LANG.Ticket.submit}" class="btn btn-lg btn-primary disable-on-click{$captcha->getButtonClass($captchaForm)}" />
            
        </div>
                        
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        {if isset($sensitiveDataEnabled) && $sensitiveDataEnabled}
            {include file="$template/core/extensions/SensitiveDataManager/sensitive_data_ticket_open.tpl"}
        {/if}
        <div id="customFieldsContainer">
            {include file="$template/supportticketsubmit-customfields.tpl"}
        </div>
        <div id="autoAnswerSuggestions" class="m-t-4x"></div>
         
        
    </form>
    {if $kbsuggestions}
        <script>
            jQuery(document).ready(function () {
                getTicketSuggestions();
            });
        </script>
    {/if}
{/if}
{debug}