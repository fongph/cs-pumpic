<style>
    #fly_features.christmass-banner {
        background: url("/images/fly_features/christmas_banner_bg.jpg") no-repeat center;
        -webkit-background-size: cover;
        background-size: cover;
        height: auto;
        bottom: 0;
        right: 0;
        padding-top: 15px;
        padding-bottom: 15px;
    }
    .christmass-banner #fly-features-h2 {
        max-width: 170px;
        line-height: 20px;
        font-weight: 400;
    }
    .christmass-banner .features-button {
        font-weight: normal;
    }
    @media only screen and (max-width: 768px) {
        #fly_features.christmass-banner {
            background-image: url("/images/fly_features/christmas_banner_bg_xs.png"),linear-gradient(to left bottom,#204d84,#428685,#bb6884) ;
            background-position: bottom;
            background-repeat: no-repeat;
            background-size: 100%;
            padding: 32px 0 22px!important;
        }
        .christmass-banner #fly_top {
            width: initial;
            float: none;
            margin: 0 0 10px;
        }
        .christmass-banner #fly-features-h2 {
            max-width: 300px;
        }
    }
</style>
<div class="fly-features-v2 fly-features-v1">
    <div id="fly_features" class="christmass-banner">
        <span class="fly_close close"></span>
        <div id="fly_top">
            <h2 id="fly-features-h2">Lit up a Christmas <br> tree and grab your gift at the Pumpic Store on December, 24-25</h2>
            <p class="fly-label"></p>
            <a class="features-button ga-action-click"  ga-category="Fly Banner"  ga-action="click" ga-label="Christmas_campaign" href="/store.html">Check the Store</a>
        </div>
    </div>
</div>


<!--
<div class="fly-features-v2 fly-features-v1">
    <div id="fly_features">
        <span class="fly_close close"></span>
        <div id="fly_top">
            <h2 id="fly-features-h2">iCloud Monitoring<div class="br"></div>for iOS <img src="/images/fly_features/ios10-icon.svg" width="20" height="20" alt=""><div class="br"></div>Without Jailbreak</h2>
            <p class="fly-label"></p>
            <a class="features-button ga-action-click" ga-category="Fly Banner" ga-action="click" ga-label="iOS 10 iCloud Update" href="/icloud-iphone-without-jailbreak-monitoring.html">Start Monitoring</a>
        </div>
        <div class="fly-hr"></div>

        <div id="fly_bottom">
            <section class="cpa-section" style="padding-bottom: 4px;">
                <img class="cpa-img" src="/images/cpa-icon.png" alt="">
                <div class="mobile-apps-text">
                    Pumpic Control Panel
                </div>

            </section>

            <section class="cpa-images">

                <a href="https://play.google.com/store/apps/details?id=com.pumpic.mobile.monitoring" target="_blank" class="ga-action-click" ga-category="Mobile App Buttons" ga-action="click" ga-label="Android CP APP" ><img class="mobile-apps mobile-apps-app-store" src="/images/google-play-banner.png" alt="pumpic at google play">
                    <a href="https://itunes.apple.com/us/app/pumpic-control-panel/id1126835967" class="ga-action-click" ga-category="Mobile App Buttons" ga-action="click" ga-label="iOS CP APP" target="_blank"><img class="mobile-apps mobile-apps-google-play" src="/images/app-store-banner.png" alt="pumpic at app store"></a>


            </section>

        </div>
    </div>
</div>
</div>
-->

<style>
    .mobile-apps-text{
        float: right;
        font-size: 14px;
        font-weight: 400;
    }

    .mobile-apps-text img{
        float: left;
    }
    .mobile-apps-text img:first-child{
        padding: 0px 0px 0px 2px;
    }

    .mobile-apps{
        float: left;
        position: relative;
    }

    .mobile-apps-app-store {
        left: -3px;
    }

    .mobile-apps-google-play {

        right: -3px;
    }
    .mobile-apps:hover {
        opacity: .6;
    }
    .cpa-images{
        padding-top: 5px;
        text-align: center;
        display: inline-block;
    }

    @media only screen and (max-width: 768px){
        .cpa-images{
            display: block;
            margin: 0 auto;
            width: 165px;
        }
        .mobile-apps-text{
            float:none;
            display: block !important;
        }

        .mobile-apps {
            margin: 0 0 0 4px;
        }
        .mobile-apps-app-store{
            width: 75px;
            left: 0;

        }
        .mobile-apps-google-play{
            width: 75px;
            right: 0;
        }
    }

</style>
