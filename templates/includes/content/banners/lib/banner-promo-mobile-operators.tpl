<div class="demo-banner mobile-operations-banner">
    <div class="banner-phone"></div>
    <div class="banner-text">
        <span>Smartphone Monitoring App</span>
        <ul>
            <li><i class="fa fa-apple"></i> <b>IOS</b> {$ver_icloud_bot} - {$ver_icloud_up} (iCloud)</li>
            <li><i class="fa fa-android"></i> <b>Android</b> {$ver_android_bot} - {$ver_android_up}</li>
        </ul>
    </div>
    <div class="banner-arrow"></div>
    <div class="button-holder fix">
        <a href="{if isset($androidUrl) && $androidUrl == "yes"}/store.html#android{else}/store.html{/if}" class="banner-btn ga-action-click"
           ga-action ="click"
            ga-category="banner"
            ga-label="buy now"
           id="ppc-banner-button">Buy Now</a>
    </div>
</div>