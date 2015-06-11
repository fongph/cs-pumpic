<!-- Element to pop up -->
<div class="box-popUp" data-test="Test">
{* nocache} 
    {if ''|hasUser} 
    <div id="box-status-auth" class="popUp">
        <div>
            <label class="title gold">Hello!<i class="close small"></i></label>   
        </div>
        
        <p class="info">You have just logged into Pumpic.com, enjoy your time with us or go straight to your <a href="http://cp.pumpic.com">account</a>.</p>
    </div>
    
    <div id="box-status-registration" class="popUp">
        <div>
            <label class="title gold">Hello!<i class="close small"></i></label>   
        </div>
        
        <p class="info">You have just registered in Pumpic.com, enjoy your time with us or go straight to your <a href="http://cp.pumpic.com">account</a>.</p>
    </div>
    
    <div id="box-status-free-trial-registration" class="popUp">
        <div>
            <label class="title gold">Thank you for signing up!<i class="close small"></i></label>   
        </div>
        
        <p class="info">The email with registration details was sent to {UserLogin}.<br /> You can go straight to your <a href="http://cp.pumpic.com">Personal Account</a> now.</p>
    </div>
    
    {/if}
{/nocache *}  
    {*
    <div id="box-email" class="popUp">
        <div>
            <label class="title gold"> <b>10%</b> off<i class="close small"></i></label>   
        </div>
        <div class="info text-center"> 
            Want to get <a href="#">10% discount</a> right now?
            <br />Subscribe to our specail promo!
            
            <form class="block-popup-form text-center">
                <div>
                    <input id="email" class="required" type="email" name="email" value="" placeholder="email" />
                    <div id="email-error" class="error"></div>
                </div>
                <div>
                    <button class="button-red btn-default">Save 10% today</button>
                </div>
            </form>
        </div>
    </div> *}

    {*<div id="box-email-success" class="popUp">
        <div>
            <label class="title gold"> Thank you! <i class="close small"></i></label>   
        </div>
        <div class="info text-center"> 
            Your discount code will be sent to you soon.
            <form>
                <div>
                    <a href="#" class="button-red btn-default block-popUp-close">Close</a>
                </div>
            </form>
        </div>
    </div>*}

</div>    
    
    
{*<div class="video-overlay fade" id="myModal" tabindex="-1" role="dialog"  aria-labelledby="myModalLabel" aria-hidden="true">
     <div class="video-wrapper">
         <div class="video-inner">
             <button class="video-close"></button>
             <div class="modal-body">
                <iframe frameborder="0"></iframe>
            </div>
         </div>
     </div>
 </div>*}
    
{*<div class="modal fade" id="myModal" tabindex="-1" role="dialog"  aria-labelledby="myModalLabel" aria-hidden="true">*}
{*hide fade*}
{*<div id="myModal" class="modal " tabindex="-1" role="dialog">      
    <div class="modal-dialog">
         <div class="modal-content">
             
             <div class="video-wrapper">
                     <div class="video-inner">
                         <button type="button" data-dismiss="modal" aria-hidden="true" class="video-close close"></button>
                         
                         <!-- <div class="modal-header"></div> -->
                         <div class="modal-body">
                              <iframe src="" frameborder="0"></iframe>
                         </div>
                         <!-- <div class="modal-footer"></div> -->
                         
                     </div>
             </div> 
             
             
             
             
        </div><!-- /.modal-content -->
     </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->    *}
