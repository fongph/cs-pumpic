<div class="form-login">
    
<form class="box-form" name="form-login" action="" method="POST">
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
    <label for="email" class="error">This must be a valid email address</label>
    
    <input type="text" placeholder="Password*" name="password" value="" class="text required" id="password" />
    <label for="password" class="error">Not enter name</label>
    
    <div class="button-sumbit clearfix">
        <button class="btn-orange center">Sign in <i></i></button>
    </div>
    
    <ul class="links">
        <li><a href="/restore.html">Forgot password?</a></li>
        <li><a href="/registration.html">Dont have account yet?</a></li>
    </ul>
    
</form> 

</div>