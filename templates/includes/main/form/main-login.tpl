<div class="form-login">
    
<form class="box-form" name="form-login" action="" method="POST">
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
    <input type="password" placeholder="Password*" name="password" value="" class="text required" id="password" />
    
    <div class="button-sumbit clearfix">
        <button class="btn btn-green {*btn-orange*} center">Sign in <i></i></button>
    </div>
    
    <ul class="links">
        <li><a class="a-default" href="/restore.html">Forgot password?</a></li>
        {*<li><a href="/registration.html{$getUrl}">Don't have account yet?</a></li>*}
    </ul>
    
</form> 

</div>