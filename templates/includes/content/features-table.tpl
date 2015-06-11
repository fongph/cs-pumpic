{*<div class="{if $blockBg}{$blockBg}{else}dark{/if}">
        <div class="container">
                <h2 class="text-center">Pumpic Features</h2>
                <div class="row">
                    
                    <div id="table-container" class="table-col-3 table-md-col-3 table-sm-col-3">
                        <h1 class="text-center">To protect your children and secure their happiness Pumpic provides you with a large variety of monitoring functions designed to make remote parenting safe and worriless.</h1>
                        <section>
                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                <ul>
                                    <li><i class="i-features-sms"></i> View SMS</li>
                                    <li><i class="i-features-cell-history"></i> View Call History</li>
                                    <li><i class="i-features-calendar"></i> View Calendar</li>
                                    <li><i class="i-features-contacts"></i> View Contacts</li>
                                    <li><i class="i-features-email"></i> View Emails</li>
                                </ul>
                            </div>

                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                <ul>
                                    <li><i class="i-features-videocam"></i> View Videos</li>
                                    <li><i class="i-features-photos"></i> View Photos</li>
                                    <li><i class="i-features-browser"></i> Control Browser</li>
                                    <li><i class="i-features-app"></i> Control Applications</li>
                                    <li><i class="i-features-social"></i> Control Social Networks</li>
                                </ul>
                            </div>

                            <div class="tab col-item-3 col-md-item-3 col-sm-item-3">
                                <ul>
                                    <li><i class="i-features-location"></i> Location Tracking</li>
                                    <li><i class="i-features-keyloger"></i> Keylogger</li>
                                    <li><i class="i-features-sms-commands"></i> SMS Commands</li>
                                    <li class="hidden-mobile"></li>
                                    <li class="hidden-mobile"></li>
                                </ul>
                            </div>
                        </section>
                        
                    </div>    
                    
                </div>
        </div>
</div>*}

<div class="{if isset($blockBg)}{$blockBg}{else}dark{/if}">
        <div class="container">
                <h2 class="text-center">{if isset($title)}{$title}{else}Pumpic Features{/if}</h2>
                <div class="row">
                    <div id="table-container" class="table-col-3 table-md-col-3 table-sm-col-3">
                        <article>{if isset($description)}{$description}{else}Pumpic is reasonably improved mobile phone tracking software, which comes with a large range of monitoring functions. 
                            They will help you keep track of the target device quickly and quite.{/if}</article>
                        <section>
                            {include file='../content/table-items/feature-items.tpl'}    
                        </section>

                    </div>
                </div>
        </div>
</div> 
