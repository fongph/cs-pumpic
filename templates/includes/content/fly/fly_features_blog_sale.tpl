<div class="fly-features-v2 fly-features-v1">
    <a class="ga-action-click"  ga-category="Fly Banner"  ga-action="click" ga-label="september-deal" href="/store.html">
        <div id="fly_features">
            <img class="fly_banner_sale_img" src="/images/fly_features/fle_banner_sale.png" alt="">
            <!--img class="fly_banner_sale_img" src="{$img}/fly_features/fle_banner_sale.png" alt="" -->

            <span class="fly_close close"></span>
            <div id="fly_top">
                <h2 id="fly-features-h2" style="">
                    <span style="font-weight: 700;">Get your <br>
                    +1 FREE Month</span><br>
                    <span style="font-size: 18px;">with any purchase!</span>
                </h2>
            </div>
        </div>
    </a>

</div>


<style>
    .fly_banner_sale_img {
        position: absolute;
        margin: -6px 0 0 -10px;
    }
    #fly-features-h2 {
        padding-top: 15px;
        text-align:center;
        color: #ffffff;
        font-family: "Open Sans";
        font-size: 20px;
        font-weight: 400;
    }
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
        .fly_banner_sale_img {
            margin: 0;
            width: 100%;
            z-index: -1;
        }
        #fly_top {
            width: 100%;
        }

    }
</style>
<script>
    function ready() {

        if ((screen.width >= 1024) && (screen.height >= 768)) {
            document.getElementsByClassName('fly_banner_sale_img')[0].setAttribute("src", "/images/fly_features/fle_banner_sale.png");
        }
        else {
            document.getElementsByClassName('fly_banner_sale_img')[0].setAttribute("src", "/images/fly_features/fly_banner_sale_responce.png");
        }
    };
    window.onresize = ready;
    document.addEventListener("DOMContentLoaded", ready);
</script>
