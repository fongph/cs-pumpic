{hasUser out="getUser"}	
<!-- Element to pop up -->
<div class="box-popUp">
    {if $getUser.success == 'true'} 
    <div id="login-status-ok" class="popUp">
        <div>
            <label class="title">Hello!<i class="close"></i></label>   
        </div>
        
        <p class="info">You have just logged into Pumpic.com, enjoy your time with us or go straight to your <a href="http://cp.pumpic.com">account</a></p>
    </div>
    {/if}
</div>    
