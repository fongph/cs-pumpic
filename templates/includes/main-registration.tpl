<div class="form-registration">
    
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
    
    <div class="button-sumbit clearfix">
        <button class="btn-orange center">Register <i></i></button>
    </div>
    
    <ul class="links">
        <li><a href="/login.html">Have account?</a></li>
    </ul>
    
</form> 

</div>