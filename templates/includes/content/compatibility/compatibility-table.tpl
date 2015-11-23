<!-- BLOCK COMPATIBILITY -->
<div id="compatibility-table" class="{if isset($blockBg)}{$blockBg}{else}dark{/if} {if isset($lang)}b-c-table-{$lang}{/if}">
    <div class="container">
        <h2 class="text-center">{if isset($title)}{$title}{else}Compatibility{/if}</h2>
    
        <div class="row">

            <div class="{if isset($onlyItem)}block-only-item col-md-6 col-lg-6{else}table-col-8 table-sm-col-3{/if} model-center">
                {if isset($descriptions)}
                    <article>{$descriptions}</article>
                {/if}
                
                <!-- left table #1 -->
                {if !isset($onlyItem) || isset($onlyItem) && $onlyItem == "android"}
                <div class="{if !isset($onlyItem)}col-md-6 col-lg-6 padding-null{/if}">

                    <div id="block-compatibility-table" class="android-table">

                        {if isset($lang) && $lang == "bra"} 
                    
                            <div class="table-header">
                                <section><span class="title">Android <i class="icon-android"></i></span></section>
                            </div> <!-- .table-header -->

                            <div class="table-body">
                                <div class="text-center">
                                    {if isset($androidText)}<p>{$androidText}</p>{else}<p>É necessário ter <b>acesso root</b> para usar alguns recursos mais avançados</p>{/if}
                                </div>
                                <div>

                                    <div class="div-table">
                                        <div class="div-table-row">
                                            <div class="div-table-column"><span>Smartphones e Tablets:</span></div>
                                            <div class="div-table-column"><span class="color-green">Android {$ver_android_bot} - {$ver_android_up}</span></div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                    
                        {elseif isset($lang) && $lang == "de"} 
                    
                            <div class="table-header">
                                <section><span class="title">Android <i class="icon-android"></i></span></section>
                            </div> <!-- .table-header -->

                            <div class="table-body">
                                <div class="text-center">
                                    {if isset($androidText)}<p>{$androidText}</p>{else}<p><b>Rooting</b> wird benötigt, um einige der Zusatzfunktionen nutzen zu können.</p>{/if}
                                </div>
                                <div>

                                    <div class="div-table">
                                        <div class="div-table-row">
                                            <div class="div-table-column"><span>Smartphones und Tablets:</span></div>
                                            <div class="div-table-column"><span class="color-green">Android {$ver_android_bot} - {$ver_android_up}</span></div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            
                        {else}
                        
                            <div class="table-header">
                                <section><span class="title">Android <i class="icon-android"></i></span></section>
                            </div> <!-- .table-header -->

                            <div class="table-body">
                                <div class="text-center">
                                    <p>{if isset($androidText)}{$androidText}{else}Rooting is required to use some extended features{/if}</p>
                                </div>
                                <div>

                                    <div class="div-table">
                                        <div class="div-table-row">
                                            <div class="div-table-column"><span>Smartphones and Tablets:</span></div>
                                            <div class="div-table-column"><span class="color-green">Android {$ver_android_bot} - {$ver_android_up}</span></div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            
                        {/if}
                        
                        


                    </div>


                </div>
                {/if}
                <!-- left table #1 -->
                {if !isset($onlyItem) || isset($onlyItem) && $onlyItem == "ios"}
                <div class="{if !isset($onlyItem)}col-md-6 col-lg-6 padding-null{/if}">

                    <div id="block-compatibility-table" class="ios-table">

                        {if isset($lang) && $lang == "bra"}
                            
                            <div class="table-header">
                                <section><span class="title">iOS <i class="icon-apple"></i></span></section>
                            </div> <!-- .table-header -->

                            <div class="table-body">
                                <div class="text-center">
                                    {if isset($iosText)}<p>{$iosText}</p>{else}<p>É necessário ter um <b>jailbreak</b> antes da instalação</p>{/if}
                                </div>
                                <div>

                                    <div class="div-table">
                                        <div class="div-table-row">
                                            <div class="div-table-column"><span>iPhones / iPads / iPods Touch:</span></div>
                                            <div class="div-table-column"><span class="color-green">{if isset($versionIOS)}{$versionIOS}{else}iOS {$ver_ios_bot} - {$ver_jailbreak_up}{/if}</span></div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            
                        {elseif isset($lang) && $lang == "de"}
                            
                            <div class="table-header">
                                <section><span class="title">iOS <i class="icon-apple"></i></span></section>
                            </div> <!-- .table-header -->

                            <div class="table-body">
                                <div class="text-center">
                                    {if isset($iosText)}<p>{$iosText}</p>{else}<p>Vor der Installation ist ein <b>Jailbreak</b> notwendig.</p>{/if}
                                </div>
                                <div>

                                    <div class="div-table">
                                        <div class="div-table-row">
                                            <div class="div-table-column"><span>iPhones / iPads / iPods Touch:</span></div>
                                            <div class="div-table-column"><span class="color-green">{if isset($versionIOS)}{$versionIOS}{else}iOS {$ver_ios_bot} - {$ver_jailbreak_up}{/if}</span></div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            
                        {else}
                            
                            <div class="table-header">
                                <section><span class="title">iOS <i class="icon-apple"></i></span></section>
                            </div> <!-- .table-header -->

                            <div class="table-body">
                                <div class="text-center">
                                    <p>{if isset($iosText)}{$iosText}{else}Jailbreak is required before the installation{/if}</p>
                                </div>
                                <div>

                                    <div class="div-table">
                                        <div class="div-table-row">
                                            <div class="div-table-column"><span>iPhones / iPads / iPods Touch:</span></div>
                                            <div class="div-table-column"><span class="color-green">iOS {$ver_ios_bot} - {$ver_jailbreak_up}</span></div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            
                        {/if}    
                        
                    </div>


                </div>
                {/if}                

            </div>

        </div>
    </div>
</div> 