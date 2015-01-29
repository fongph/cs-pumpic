<div class="visual"> <!-- android -->

    <div class="container">

        <div class="row">

            <div class="col-lg-10 col-lg-offset-1 banner-header">
                {assign var="position" value=" "|explode:$imgAlign}
                
                {if in_array('left', $position)}
                    <div class="col-md-5 col-lg-6 visual-images-left">
                        <img src="{$img}/{$imgUrl}" alt="{$imgAlt}" class="visual-img-pc">   
                    </div> 
                {/if}    

                <div class="{if $imgAlign == "center"} col-lg-12 col-md-12 {else}col-lg-6 col-md-6{/if}">
                    <div class="visual-text {if $textAlign}block-text-{$textAlign}{else}block-text-right{/if}">
                        <h1 class="title">{if $title} {$title} {else}Android Parental Control App{/if}</h1>
                        <p>
                            {if $description}
                                {$description}
                            {else}
                            Pumpic takes care of your children safety.        
                            <br />Track your kids’ Android device remotely.
                            {/if}
                        </p>
                        
                        <ul class="compatibility">
                            <li><i class="icon-android"></i> (2.2 - 5.0)</li>
                            <li><i class="icon-apple"></i> (6.0 - 8.1.2)</li>
                            <li>
                                <i class="i-header-info"></i> <a href="/compatibility.html">platform compatibility</a>
                            </li>
                        </ul>
                        
                        {if isset($listText) && $listText != ""}
                            
                            {assign var="listExplode" value="|"|explode:$listText} 
                            {if isset($listExplode)}
                            <ul class="visual-header-dop-info">
                                {foreach from=$listExplode item=_item}
                                    <li>{$_item} <i class="item-list-yelow"></i></li>
                                {/foreach}
                            </ul>
                            {/if}
                            
                        {/if}    
                        
                        
                    </div>
                    {if $imgAlign == "center"}
                        <img src="{$img}/{$imgUrl}" alt="{$imgAlt}" class="visual-img">
                    {/if}    
                </div>

                {if in_array('right', $position) || in_array('bottom', $position)}
                <div class="visual-images-{if in_array('right', $position)}right{elseif in_array('bottom', $position)}bottom{/if} {if in_array('bottom', $position)}col-sm-7 col-md-6 mobile-version-inline{/if} {if in_array('right', $position)}col-sm-12 col-md-6 col-lg-6{/if}">
                     <img src="{$img}/{$imgUrl}" alt="{$imgAlt}" class="visual-img-pc">      
                </div> 
                {/if}

                {*<div class="col-lg-6 mobile-version">
                    <img src="{$img}/parental_control/bg_famaly_mobile.png" alt="" class="visual-img-pc">
                </div> *}           

            </div>
        </div> <!-- .row -->
    </div>
</div>
                
{*

<div class="visual-text text-center">
					<h1>High-Grade Cell Phone Monitoring App</h1>
					<p>Pumpic takes cell phone monitoring to a new level. 
                                            <br />Track the location, text messages and contacts quickly and quiet.</p>
					<ul class="compatibility">
						<li><i class="icon-android"></i> (2.2 - 5.0)</li>
						<li><i class="icon-apple"></i> (6.0 - 8.1.1)</li>
						<li><i class="icon-blackberry"></i> (1.0 - 7.1)</li>
						<li>
							<i class="icon-info-circled"></i> <a href="/compatibility.html">platform compatibility</a>
						</li>
					</ul>
				</div>
				<img src="{$img}/visual.png" alt="" class="visual-img">

<div class="visual">
                    
			<div class="container bg_famaly">
                            
                            <div class="row">
                                
                                <div class="col-lg-10 col-lg-offset-1">
                                    
                                    <!-- <div class="col-md-6 col-lg-6 w900">
                                        <img src="{$img}/parental_control/bg_famaly_mobile.png" alt="" class="visual-img-pc">
                                    </div> -->
                                    
                                    <div class="col-md-6 col-lg-6 box-right-description">
                                        <div class="visual-text text-center">
                                            <h1 class="title">Cell Phone <br />Parental Control App</h1>
                                            <p>Keep your children safe and secured with Pumpic. <br />
                                                Track location. View calls and SMS. Follow online activity.</p>
                                            <ul class="compatibility">
                                                <li><i class="icon-android"></i> (2.2 - 5.0)</li>
                                                <li><i class="icon-apple"></i> (6.0 - 8.1.2)</li>
                                                <li><i class="icon-blackberry"></i> (1.0 - 7.1)</li>
                                                <li>
                                                    <i class="icon-info-circled"></i> <a href="/compatibility.html">platform compatibility</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                                
                                    <div class="col-md-6 col-lg-6 mobile-version w770">
                                        <img src="{$img}/parental_control/bg_famaly_mobile.png" alt="" class="visual-img-pc">
                                    </div>            
                                                
                                </div>
                            </div> <!-- .row -->
			</div>
		</div>
*}