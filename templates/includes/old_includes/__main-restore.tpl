<div class="form-restore">
    
<form class="box-form" name="form-restore" action="" method="POST">
    <input type="hidden" name="site_id" value="{$site_id}" />
    
   {if $getOut._success}
       {literal}
            <script type="text/javascript"> 
                ga('send', 'event', 'form', 'submit', 'restore-success' ); 
            </script>
        {/literal}
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
    
    <div class="button-sumbit clearfix">
        <button class="btn-orange center">Restore <i></i></button>
    </div>
    
    {*<ul class="links">
        <li><a href="/login.html">Have account?</a></li>
    </ul>*}
    
</form> 

</div>