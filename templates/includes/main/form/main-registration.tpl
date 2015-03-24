<div class="form-registration">

    
<form class="box-form" name="form-registration" action="" method="POST">
    <input type="hidden" name="site_id" value="{$site_id}" />
    
    {if $getOut._success}
        <div class="box-success text-center"> 
            <p class="bg-ok">{$getOut._success}</p>
        </div>
   {/if}
   
   {if is_string($getOut._error)}
       <div class="box-error text-center">
            <p class="bg-danger">{$getOut._error}</p>
       </div>
   {/if}
   
    <input id="email" type="email" name="email" class="text required email" placeholder="Email*" value="" />
    {if is_array($getOut._error) && $getOut._error.email}<label class="error show">{$getOut._error.email|escape}</label>{/if}
    <div class="box-captcha">
        <img src="/captcha.html" id="img-captcha">
        <span class="update-captcha"></span>
    </div>
    
    <input id="captcha" type="text" name="captcha" autocomplete="off" class="text required captcha" />
    {if is_array($getOut._error) && $getOut._error.captcha}<label class="error show">{$getOut._error.captcha|escape}</label>{/if}
    
    <div class="button-sumbit clearfix">
        <button class="btn-orange center">Register <i></i></button>
    </div>
    
    <ul class="links">
        <li><a href="/login.html{if $productID}?productID={$productID}{/if}">Have account?</a></li>
    </ul>
    
</form> 

</div>