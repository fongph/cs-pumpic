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
                                    <p>É necessário ter <b>acesso root</b> para usar alguns recursos mais avançados</p>
                                </div>
                                <div>

                                    <div class="div-table">
                                        <div class="div-table-row">
                                            <div class="div-table-column"><span>Smartphones e Tablets:</span></div>
                                            <div class="div-table-column"><span class="color-green">Android 2.2 ou acima</span></div>
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
                                    <p><b>Rooting</b> wird benötigt, um einige der Zusatzfunktionen nutzen zu können.</p>
                                </div>
                                <div>

                                    <div class="div-table">
                                        <div class="div-table-row">
                                            <div class="div-table-column"><span>Smartphones und Tablets:</span></div>
                                            <div class="div-table-column"><span class="color-green">Android 2.2 oder aktueller</span></div>
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
                                    <p>Rooting is required to use some extended features</p>
                                </div>
                                <div>

                                    <div class="div-table">
                                        <div class="div-table-row">
                                            <div class="div-table-column"><span>Smartphones and Tablets:</span></div>
                                            <div class="div-table-column"><span class="color-green">Android 2.2 and up</span></div>
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
                                    <p>É necessário ter um <b>jailbreak</b> antes da instalação</p>
                                </div>
                                <div>

                                    <div class="div-table">
                                        <div class="div-table-row">
                                            <div class="div-table-column"><span>iPhones / iPads / iPods Touch:</span></div>
                                            <div class="div-table-column"><span class="color-green">iOS 6.0 ou acima</span></div>
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
                                    <p>Vor der Installation ist ein <b>Jailbreak</b> notwendig.</p>
                                </div>
                                <div>

                                    <div class="div-table">
                                        <div class="div-table-row">
                                            <div class="div-table-column"><span>iPhones / iPads / iPods Touch:</span></div>
                                            <div class="div-table-column"><span class="color-green">iOS 6.0 oder aktueller</span></div>
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
                                    <p>Jailbreak or iCloud password is required before the installation</p>
                                </div>
                                <div>

                                    <div class="div-table">
                                        <div class="div-table-row">
                                            <div class="div-table-column"><span>iPhones / iPads / iPods Touch:</span></div>
                                            <div class="div-table-column"><span class="color-green">iOS 6.0 and up</span></div>
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