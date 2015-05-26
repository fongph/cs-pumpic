<!-- BLOCK COMPATIBILITY -->
<div id="compatibility-table" class="{if $blockBg}{$blockBg}{else}dark{/if}">
    <div class="container">
        <h2 class="text-center">{if $title}{$title}{else}Compatibility{/if}</h2>
    
        <div class="row">

            <div class="table-col-8 table-sm-col-3 model-center">
                {if $descriptions}
                    <article>{$descriptions}</article>
                {/if}
                
                <!-- left table #1 -->
                <div class="col-md-6 col-lg-6 padding-null">

                    <div id="block-compatibility-table" class="android-table">

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


                    </div>


                </div>
                <!-- left table #1 -->
                <div class="col-md-6 col-lg-6 padding-null">

                    <div id="block-compatibility-table" class="ios-table">

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
                                    {*<div class="div-table-row">
                                        <div class="div-table-column"><span>iPods:</span></div>
                                        <div class="div-table-column"><span class="color-green">iOS 6.0 and up</span></div>
                                    </div>
                                    <div class="div-table-row">
                                        <div class="div-table-column"><span>iPads:</span></div>
                                        <div class="div-table-column"><span class="color-green">iOS 6.0 and up</span></div>
                                    </div>*}
                                </div>

                            </div>
                        </div>


                    </div>


                </div>

            </div>

        </div>
    </div>
</div> 