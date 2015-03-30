<div class="mt10 {if $iCloudClass}{$iCloudClass}{/if}">
   <div class="block-promo-buy" id="block-promo-buy">
       <section>
           <span class="text-promo-buy text-promo-sm">     
               {if isset($iCloudSolutionDescription) && $iCloudSolutionDescription != ""}
                   {$iCloudSolutionDescription}
               {else}    
               Don't want to
               <br>Jailbreak iPhone?
               {/if}
           </span>
       </section>
       <section>
           <a class="btn btn-default btn-text-sm ga-action-click" 
              href="{if isset($iCloudSolutionUrl) && $iCloudSolutionUrl != ""}{$iCloudSolutionUrl}{else}/icloud-iphone-without-jailbreak-monitoring.html{/if}" 
              ga-action="click" 
              ga-category="promo buy" 
              ga-label="icloud solution">
               <i class="icons ico-cloud-white"></i>iCloud solution
           </a>
       </section>
   </div>
</div>