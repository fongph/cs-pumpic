<!-- BLOCK COMPATIBILITY -->
<div id="compatibility-table" class="{if isset($blockBg)}{$blockBg}{else}dark{/if} {if isset($lang)}b-c-table-{$lang}{/if}">
    <div class="container">
        <h2 class="text-center">{if isset($title)}{$title}{else}Compatibility{/if}</h2>

        <div class="row">

            <div class="{if isset($onlyItem)}block-only-item col-md-4 col-lg-4{else}table-col-12 table-sm-col-3 table-sm-col-offset-3{/if} model-center">
                {if isset($descriptions)}
                    <article>{$descriptions}</article>
                {/if}

                <!-- left table #1 -->
                <!-- left table #1 -->
                {if (!isset($onlyItem) || isset($onlyItem) && $onlyItem == "icloud") && !isset($lang)}
                {if !isset($onlyItem)}
                    <div class="col-md-2 col-lg-2"></div>
                {/if}
                    <div class="{if !isset($onlyItem)}col-md-4 col-lg-4 padding-null{/if}">

                        <div id="block-compatibility-table" class="ios-table">

                            {if isset($lang) && $lang == "bra"}

                                <div class="table-header">
                                    <section><span class="title">monitoramento iCloud <i class="icon-icloud"></i></span></section>
                                </div> <!-- .table-header -->

                                <div class="table-body">
                                    <div class="text-center">
                                        {if isset($iosText)}<p>{$iosText}</p>{else}<p>Sem <b>Jailbreak</b> necessário</p>{/if}
                                    </div>
                                    <div>

                                        <div class="div-table">
                                            <div class="div-table-row">
                                                <div class="div-table-column"><span>iPhones / iPads / iPods Touch:</span></div>
                                                <div class="div-table-column"><span class="color-green">{if isset($versionIOS)}{$versionIOS}{else}iOS {$ver_icloud_bot} - {$ver_icloud_up}{/if}</span></div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                            {elseif isset($lang) && $lang == "de"}

                                <div class="table-header">
                                    <section><span class="title">iCloud Überwachung <i class="icon-icloud"></i></span></section>
                                </div> <!-- .table-header -->

                                <div class="table-body">
                                    <div class="text-center">
                                        {if isset($iosText)}<p>{$iosText}</p>{else}<p>Kein <b>Jailbreak</b> erforderlich.</p>{/if}
                                    </div>
                                    <div>

                                        <div class="div-table">
                                            <div class="div-table-row">
                                                <div class="div-table-column"><span>iPhones / iPads / iPods Touch:</span></div>
                                                <div class="div-table-column"><span class="color-green">{if isset($versionIOS)}{$versionIOS}{else}iOS {$ver_icloud_bot} - {$ver_icloud_up}{/if}</span></div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                            {else}

                                <div class="table-header">
                                    <section><span class="title">iOS <i class="os-icons apple"></i> (iCloud)</span></section>
                                </div> <!-- .table-header -->

                                <div class="table-body">
                                    <div class="text-center">
                                        <p>{if isset($iosText)}{$iosText}{else}No Jailbreak required{/if}</p>
                                    </div>
                                    <div>

                                        <div class="div-table">
                                            <div class="div-table-row">
                                                <div class="div-table-column"><span>iPhones / iPads / iPods Touch:</span></div>
                                                <div class="div-table-column"><span class="color-green">iOS {$ver_icloud_bot} - {$ver_icloud_up}</span></div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                            {/if}

                        </div>


                    </div>
                {/if}


                {if !isset($onlyItem) || isset($onlyItem) && $onlyItem == "android"}
                    <div class="{if !isset($onlyItem)}{if isset($lang)}col-md-offset-2{/if} col-md-4 col-lg-4 padding-null{/if}">

                        <div id="block-compatibility-table" class="android-table">

                            {if isset($lang) && $lang == "bra"}

                                <div class="table-header">
                                    <section><span class="title"><i class="os-icons android fa-lg"></i> Android</span></section>
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
                                    <section><span class="title"><i class="os-icons android fa-lg"></i> Android</span></section>
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
                            {elseif isset($lang) && $lang == "fra"}

                                <div class="table-header">
                                    <section><span class="title"><i class="os-icons android fa-lg"></i> Android</span></section>
                                </div> <!-- .table-header -->

                                <div class="table-body">
                                    <div class="text-center">
                                        {if isset($androidText)}<p>{$androidText}</p>{else}<p><b>Un rootage</b> est requis pour utiliser certaines extensions.</p>{/if}
                                    </div>
                                    <div>

                                        <div class="div-table">
                                            <div class="div-table-row">
                                                <div class="div-table-column"><span>Smartphones et tablettes:</span></div>
                                                <div class="div-table-column"><span class="color-green">Android {$ver_android_bot} - {$ver_android_up}</span></div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                            {else}

                                <div class="table-header">
                                    <section><span class="title">Android <i class="os-icons android"></i></span></section>
                                </div> <!-- .table-header -->

                                <div class="table-body">
                                    <div class="text-center">
                                        <p>{if isset($androidText)}{$androidText}{else}Rooting is required to for extended functionality{/if}</p>
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

                {*{if !isset($onlyItem) || isset($onlyItem) && $onlyItem == "ios"}*}
                    {*<div class="{if !isset($onlyItem)}col-md-4 col-lg-4 padding-null{/if}">*}

                        {*<div id="block-compatibility-table" class="ios-table">*}

                            {*{if isset($lang) && $lang == "bra"}*}

                                {*<div class="table-header">*}
                                    {*<section><span class="title"><i class="fa fa-unlock-alt fa-lg"></i> iOS (jailbreak)</span></section>*}
                                {*</div> <!-- .table-header -->*}

                                {*<div class="table-body">*}
                                    {*<div class="text-center">*}
                                        {*{if isset($iosText)}<p>{$iosText}</p>{else}<p>É necessário ter um <b>jailbreak</b> antes da instalação</p>{/if}*}
                                    {*</div>*}
                                    {*<div>*}

                                        {*<div class="div-table">*}
                                            {*<div class="div-table-row">*}
                                                {*<div class="div-table-column"><span>iPhones / iPads / iPods Touch:</span></div>*}
                                                {*<div class="div-table-column"><span class="color-green">{if isset($versionIOS)}{$versionIOS}{else}iOS {$ver_ios_bot} - {$ver_jailbreak_up}{/if}</span></div>*}
                                            {*</div>*}
                                        {*</div>*}

                                    {*</div>*}
                                {*</div>*}

                            {*{elseif isset($lang) && $lang == "de"}*}

                                {*<div class="table-header">*}
                                    {*<section><span class="title"> <i class="fa fa-unlock-alt fa-lg"></i> iOS (jailbreak)</span></section>*}
                                {*</div> <!-- .table-header -->*}

                                {*<div class="table-body">*}
                                    {*<div class="text-center">*}
                                        {*{if isset($iosText)}<p>{$iosText}</p>{else}<p>Vor der Installation ist ein <b>Jailbreak</b> notwendig.</p>{/if}*}
                                    {*</div>*}
                                    {*<div>*}

                                        {*<div class="div-table">*}
                                            {*<div class="div-table-row">*}
                                                {*<div class="div-table-column"><span>iPhones / iPads / iPods Touch:</span></div>*}
                                                {*<div class="div-table-column"><span class="color-green">{if isset($versionIOS)}{$versionIOS}{else}iOS {$ver_ios_bot} - {$ver_jailbreak_up}{/if}</span></div>*}
                                            {*</div>*}
                                        {*</div>*}

                                    {*</div>*}
                                {*</div>*}
                            {*{elseif isset($lang) && $lang == "fra"}*}

                                {*<div class="table-header">*}
                                    {*<section><span class="title"> <i class="fa fa-unlock-alt fa-lg"></i> iOS (jailbreak)</span></section>*}
                                {*</div> <!-- .table-header -->*}

                                {*<div class="table-body">*}
                                    {*<div class="text-center">*}
                                        {*{if isset($iosText)}<p>{$iosText}</p>{else}<p><b>Un jailbreak d'iOS</b> est nécessaire avant l'installation.</p>{/if}*}
                                    {*</div>*}
                                    {*<div>*}

                                        {*<div class="div-table">*}
                                            {*<div class="div-table-row">*}
                                                {*<div class="div-table-column"><span>iPhone / iPad / iPod Touch:</span></div>*}
                                                {*<div class="div-table-column"><span class="color-green">{if isset($versionIOS)}{$versionIOS}{else}iOS {$ver_ios_bot} - {$ver_jailbreak_up}{/if}</span></div>*}
                                            {*</div>*}
                                        {*</div>*}

                                    {*</div>*}
                                {*</div>*}

                            {*{else}*}

                                {*<div class="table-header">*}
                                    {*<section><span class="title">iOS <i class="fa fa-unlock-alt" style="position: relative;top: 4px;"></i> (jailbreak)</span></section>*}
                                {*</div> <!-- .table-header -->*}

                                {*<div class="table-body">*}
                                    {*<div class="text-center">*}
                                        {*<p>{if isset($iosText)}{$iosText}{else}Jailbreak is required before the installation{/if}</p>*}
                                    {*</div>*}
                                    {*<div>*}

                                        {*<div class="div-table">*}
                                            {*<div class="div-table-row">*}
                                                {*<div class="div-table-column"><span>iPhones / iPads / iPods Touch:</span></div>*}
                                                {*<div class="div-table-column"><span class="color-green">iOS {$ver_ios_bot} - {$ver_jailbreak_up}</span></div>*}
                                            {*</div>*}
                                        {*</div>*}

                                    {*</div>*}
                                {*</div>*}

                            {*{/if}*}

                        {*</div>*}


                    {*</div>*}
                {*{/if}*}

            </div>

        </div>
    </div>
</div>
