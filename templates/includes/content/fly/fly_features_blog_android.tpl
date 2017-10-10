
<div class="fly-features-v2 fly-features-v1">
    <div id="fly_features">
        <div id="fly_top">
            <div class="fly-android-response">
                <h2 id="fly-features-h2">Track Browser History</h2>
                <p class="center">on Android!</p>
            </div>
            <div class="fly-android-image">
                <img src="/images/fly_features/android_fly_banner.png" alt="">
            </div>

            <div class="fly-android-response">
                <a class="features-button ga-action-click" ga-category="Fly Banner" ga-action="click" ga-label="track browser history" href="/store.html#android">Start Now</a>
            </div>
        </div>

    </div>
</div>



<style>

    .mobile-apps-text img{
        float: left;
    }
    .mobile-apps-text img:first-child{
        padding: 0px 0px 0px 2px;
    }
    #fly-features-h2 {
        max-width: 200px;
        margin: 5px auto;
    }
    #fly_features {
        padding: 6px 7px 0 8px;
        border-radius: 0;
         -webkit-border-radius: 0;
        background: linear-gradient(to top right,#bb6884,#3a8193,#204d84);
    }
    #fly_top .fly-android-image {
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: center;
        width: 100%;
        margin-top: 5px;
    }

    #fly_top p.center {
        text-align: center;
        font-size: 18px;
    }
    #fly_top h2#fly-features-h2 {
        font-size: 17px;
    }

    .features-button {
        font-size: 18px;
        font-weight: 700;
        /*margin: 0 auto;*/
        text-transform: uppercase;
        margin-top: 10px;
        width: 160px;
        height: 30px;
        border-radius: 5px 5px;
        padding: 5px;

    }

    @media only screen and (max-width: 768px){
        #fly_top{
            width: 100%;
        }
        #fly_top .fly-android-image {
            width: 40%;
            position: relative;
            bottom: 50px;
        }

        #fly_top .fly-android-response {
            width: 65%;
            float: right;
            padding: 0 5px;
        }

        #fly_top h2#fly-features-h2 {
            text-align: left !important;
            max-width: 100%;
        }

        #fly_top p.center {
            text-align: left;
        }
        #fly_top .features-button {
            position: relative;
            float: left;
            bottom: 110px;
            padding: 3px;

        }
    }
</style>
