<div class="fly-features-v2 fly-features-v1">
    <div id="fly_features">
        <span class="fly_close close"></span>
        <div id="fly_top">
            <h2 id="fly-features-h2">Ensure your child's safety!</h2>
            <p class="fly-label"></p>
            <a class="features-button ga-action-click"  ga-category="Fly Banner"  ga-action="click" ga-label="reviews" href="/store.html">START NOW</a>
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
    .cpa-images{
        padding-top: 5px;
        text-align: center;
        display: inline-block;
    }
    /* ------------- \\ fly-features-v3 -------------- */

#fly_features {
  height: 214px;
  padding: 20px 7px 0 10px;
  background: #16a89e;
}
#fly-features-h2{
  font-size: 20px;
  font-weight: 500;
}
.features-button {
  background-color: #cf4857;
}
@supports (filter: brightness(85%)) {
    .mobile-apps:hover {
        filter: brightness(85%);
    }
}
@supports not (filter: brightness(85%)) {
    .mobile-apps:hover {
        opacity: .8;
    }
}
@media only screen and (max-width: 768px){
    #fly_features {
    height: 126px;
    padding: 10px 0 0 !important;   
  }
  .features-button {
      width: 135px;
    }
     #fly-features-h2{
      margin-top: 4px;
      margin-bottom: 8px;
      line-height: 1.45;
    }
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
