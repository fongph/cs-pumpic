<div class="demo-banner mobile-operations-banner">
    <div class="banner-phone"></div>
    <div class="banner-text">
        <span>Smartphone Monitoring App</span>
        <ul>
            <li><i class="fa fa-apple"></i> <b>IOS</b> {$ver_icloud_bot} - {$ver_icloud_up} (iCloud)</li>
            <li><i class="fa fa-android"></i> <b>Android</b> {$ver_android_bot} - {$ver_android_up}</li>
            {if !isset($hideJailbreak)}
            <li><i class="fa fa-unlock-alt fa-lg"></i> <b>IOS</b> {$ver_ios_bot} - {$ver_jailbreak_up} (jailbreak)</li>
            {/if}
        </ul>
    </div>
    <div class="banner-arrow"></div>
    <div class="button-holder">
        <a href="/store.html" class="banner-btn ga-action-click" 
           ga-action ="click"
            ga-category="banner"
            ga-label="buy now"
           id="demo-banner-button">Buy Now</a>
    </div>
</div>