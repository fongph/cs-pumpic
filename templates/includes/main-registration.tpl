<div class="form-registration">

    
<form class="box-form" name="form-registration" action="" method="POST">
    <input type="hidden" name="site_id" value="{$site_id}" />
    
    {if $getOut._success}
        <div class="box-success text-center"> 
            <p class="bg-ok">{$getOut._success}</p>
        </div>
   {/if}
   
   {if $getOut._error}
       <div class="box-error text-center">
            <p class="bg-danger">{$getOut._error}</p>
       </div>
   {/if}
   
    <input id="email" type="email" name="email" class="text required email" placeholder="Email*" value="" />
    <div class="box-captcha">
        <img src="/captcha.html" id="img-captcha">
        <span class="update-captcha"></span>
    </div>
    
    <input id="captcha" type="text" name="captcha" autocomplete="off" class="text required captcha" />
    
    <div class="button-sumbit clearfix">
        <button class="btn-orange center">Register <i></i></button>
    </div>
    
    <ul class="links">
        <li><a href="/login.html{if $smarty.get.productID}?productID={$smarty.get.productID}{/if}">Have account?</a></li>
    </ul>
    
</form> 

</div>