<div class="visual box-banner-header bg_center_images">
    <div class="amp">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1 banner-header bottom_padding_null">

                <table id='block-table-header'>
                    <tr>
                        <td class="col-s-sm-12 col-xs-sm-12">

                            <div>
                                <div class="visual-text block-text-left">
                                    <h1 class="h1 title"> {$h1}</h1>

                                    <p class="header-info-descriptions">
                                        {$description}
                                    </p>

                                    <ul class="compatibility compatibility-lg">
                                        {if $icloud != 'no'}
                                        <li>
                                            <i class="icon-apple"></i> ({$ver_icloud_up} - {$ver_icloud_up})
                                        </li>
                                        {/if}
                                        {if $android != 'no'}
                                        <li>
                                            <i class="icon-android"></i> ({$ver_android_bot} - {$ver_android_up})
                                        </li>
                                        {/if}
                                    </ul>
                                    <div class='mt10'>
                                        <div id='block-promo-buy' class="bb-p-buy- banner-header-package">
                                            <section>
                                                <div class="new-icloud-feature">

                                                    <div class="block-promo-sale"></div>
                                                    <h2 class="block-promo-h2"><p class="text-yellow">Save
                                                            40%</p> on the 2nd plan.
                                                    </h2>
                                                </div>
                                            </section>
                                            <section class="vertical-aligh-middle">
                                                <a class="btn btn-default" href="/store.html{if isset($android)}#android{/if}"
                                                   id="learn-more-link">Learn More</a>
                                            </section>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </td>

                    </tr>
                </table>
            </div>
        </div> <!-- .row -->
    </div>
</div>
