<!-- Element to pop up -->
<div class="box-popUp">
    {if ''|hasUser} 
    <div id="box-status-auth" class="popUp">
        <div>
            <label class="title">Hello!<i class="close"></i></label>   
        </div>
        
        <p class="info">You have just logged into Pumpic.com, enjoy your time with us or go straight to your <a href="http://cp.pumpic.com">account</a>.</p>
    </div>
    
    <div id="box-status-registration" class="popUp">
        <div>
            <label class="title">Hello!<i class="close"></i></label>   
        </div>
        
        <p class="info">You have just registered in Pumpic.com, enjoy your time with us or go straight to your <a href="http://cp.pumpic.com">account</a>.</p>
    </div>
    {/if}
</div>    
