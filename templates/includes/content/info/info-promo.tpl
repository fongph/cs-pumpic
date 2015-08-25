<div class="visual box-banner-header {if $imgVerticalAlign == 'bottom'}box-bottom-images bg_bottom_images{/if}{if $imgVerticalAlign == 'center'}bg_center_images{/if}"> <!-- android -->

    <div class="container">

        <div class="row">

            {assign 'bottom_padding_null' ''}
            {if isset($block_video) && $block_video == "yes" && isset($block_video_src) && $block_video_src != ""}
                {assign 'bottom_padding_null' 'yes'}    
            {/if}    
            
            <div class="col-lg-10 col-lg-offset-1 banner-header {if $bottom_padding_null == "yes"}bottom_padding_null{/if}">
                {assign var="position" value=" "|explode:$imgAlign}
                    {assign var="h_title" value="h1"}
                {if isset($styleTitle)}
                    {assign var="h_title" value=$styleTitle}
                {/if}
                
                <table id='block-table-header'>
                    <tr>
                        {if in_array('left', $position)}
                        <td class='{if isset($Review)}col-s-sm-6 col-xs-sm-5 col-md-4 col-lg-4 {else}col-s-sm-6 col-xs-sm-5 col-md-5 col-lg-6{/if} {if in_array('bottom', $position)}vertical-aligh-bottom{/if}'>
                            
                            <div class="visual-images-left {if isset($Review)}visual-images-left-lg{/if} {if $block_video}box-video-constructors{/if}">
                                <img {if isset($imgWidth)}width='{$imgWidth}'{/if}
                                     {if isset($imgHeight)}height='{$imgHeight}'{/if}                       
                                    src="{$img}/{$imgUrl}" alt="{$imgAlt}" class="visual-img-pc {if isset($maxWidth)}max-width-{$maxWidth}{/if}">   
                                {if isset($block_video) && $block_video == "yes" && isset($block_video_src) && $block_video_src != ""}
                                    <div id="block-video">
                                        <div class="block-video-button">
                                            <div class="video-arrows-v2"></div>
                                            <div class="box-hover">
                                                <a class="youtube" href="{$block_video_src}" rel="nofollow"
                                                   {*data-toggle="modal" *}
                                                   
                                                   {*data-src="{$block_video_src}" 
                                                   data-height="520" 
                                                   data-width="820"*}
                                                   
                                                   {*data-target="#myModal"*} id="openBtnVideo">
                                                    {* if $typeVideoImg == "standart" || !isset($typeVideoImg) *}
                                                        {*<img src="{$img}/video/video-button-play.png" class="video-buttons" />*}
                                                        <img src="{$img}/video/button_shadows.png" class="video-buttons-v2" />
                                                    {* /if *}
                                                    {*{if $typeVideoImg == "black_orange"}
                                                        <img src="{$img}/video/arrows_black_orange.png" class="video-buttons" />
                                                    {/if}
                                                    {if $typeVideoImg == "orange"}
                                                        <img src="{$img}/video/arrows_orange.png" class="video-buttons" />
                                                    {/if}
                                                    {if $typeVideoImg == "yellow"}
                                                        <img src="{$img}/video/arrows_yellow.png" class="video-buttons" />
                                                    {/if}*}
                                                    <img src="{$img}/video/hover-video-button-play.png" class="hover-video-buttons" /> 
                                                </a>    
                                            </div>
                                        </div>
                                    </div>
                                {/if}
                            </div> 
                             
                        </td>
                        {/if}
                        
                        <td class="col-s-sm-12 col-xs-sm-12 {if $imgAlign == "center"} col-md-12 col-lg-12  {else}{if isset($Review)}col-md-8 col-lg-8{else}{if isset($collg)}col-md-{$collg} col-lg-{$collg}{else}col-md-6 col-lg-6{/if}{/if}{/if}">
                            
                            <div>
                                <div class="visual-text {if isset($Review)}visual-text-lg visual-text-xlg{else}{if $textAlign}block-text-{$textAlign}{else}block-text-right{/if}{/if}">
                                    <{$h_title} class="h1 title {if isset($fz)}fz{$fz}{/if}">{if isset($title)} {$title} {else}Android Parental Control App{/if}</{$h_title}>
                                    
                                    {if isset($flagName)}
                                    <div class="clearfix">    
                                        <div class='block-table right border-none'>
                                            <div class='table-row'>
                                            {if isset($flagPosition) && $flagPosition == 'left'}
                                                <div class='table-cell col-xs-sm-2 col-md-2 col-lg-2 vertical-aligh-middle pr-5 pl-0 {*padding-null mr5*}'>
                                                    <div class='text-left'><i class='image-flag-header-{$flagName}'></i></div>
                                                </div>
                                            {/if}
                                                <div class='table-cell col-xs-sm-10 col-md-10 col-lg-10 {*padding-null mlr-5*} plr-5'>
                                                    <div class="{if isset($flagPosition)}text-{$flagPosition}{/if}">
                                                    {if isset($description)}
                                                        {trim($description)}
                                                    {else}
                                                        Pumpic takes care of your children safety.        
                                                        <br />Track your kids’ Android device remotely.
                                                    {/if}
                                                    </div>
                                                </div>
                                            {if (isset($flagPosition) && $flagPosition == 'right') || !isset($flagPosition)}
                                                <div class='table-cell col-xs-sm-2 col-md-2 col-lg-2 vertical-aligh-middle pl-5 pr-0 {*padding-null ml5*}'>
                                                    <div class='text-right'><i class='image-flag-header-{$flagName}'></i></div>
                                                </div>
                                            {/if}
                                            </div>
                                        </div>
                                    </div>  
                                    {else}
                                    <p>
                                        {if isset($description)}
                                            {$description}
                                        {else}
                                        Pumpic takes care of your children safety.        
                                        <br />Track your kids’ Android device remotely.
                                        {/if}
                                    </p>
                                    {/if}

                                    {if !isset($infoBlockMobile) || (isset($infoBlockMobile) && $infoBlockMobile == 'yes')}
                                    <ul class="compatibility compatibility-lg">
                                        {if isset($Android)}
                                            {if isset($AndroidVersion) && $Android == 'yes'}<li><i class="icon-android"></i> {$AndroidVersion}</li>{/if}
                                        {else}    
                                            <li><i class="icon-android"></i> (2.2 - 5.1)</li>
                                        {/if} 
                                        {if isset($Apple)}
                                            {if isset($AppleVersion) && $Apple == 'yes'}<li><i class="icon-apple"></i> {$AppleVersion}</li>{/if}
                                        {else}    
                                            <li><i class="icon-apple"></i> (6.0 - 8.4)</li>
                                        {/if} 
                                        
                                        {if isset($InfoBlock)}
                                            {if isset($InfoBlockText) && $InfoBlock == 'yes'}
                                                <li><i class="i-header-info"></i> <a href="/compatibility/">{$InfoBlockText}</a></li>
                                            {/if}    
                                        {else}    
                                            <li>
                                                <i class="i-header-info"></i> <a href="/compatibility/">platform compatibility</a>
                                            </li>
                                        {/if} 
                                        {if isset($TouchPad) && $TouchPad == 'yes'}
                                            <li><i class="icons ico-iphones"></i>iPhone</li>
                                            <li><i class="icons ico-ipads"></i>iPad</li>
                                            <li><i class="icons ico-ipods"></i>iPod Touch</li>
                                        {/if}
                                    </ul>
                                    {/if}
                                    
                                    {*if $os_versions == 'os_v2' || $os_versions == 'icloud_v2' || $os_versions == 'os_v2_its'}
                                        {if $os_versions == 'icloud_v2'} 
                                            <ul class="compatibility compatibility-lg">
                                                <li><i class="icon-apple"></i> iOS 6.0 – 8.1.2</li>
                                                <li><i class="icons ico-iphones"></i>iPhone</li>
                                                <li><i class="icons ico-ipads"></i>iPad</li>
                                                <li><i class="icons ico-ipods"></i>iPod Touch</li>
                                            </ul>
                                        {else}
                                            <ul class="compatibility compatibility-lg">
                                                {if $os_versions != 'os_v2_its'}<li><i class="icon-apple"></i> iOS 6.0 – 8.4</li>{/if}
                                                <li><i class="icons ico-iphones"></i>iPhone</li>
                                                <li><i class="icons ico-ipads"></i>iPad</li>
                                                <li><i class="icons ico-ipods"></i>iPod Touch</li>
                                            </ul>
                                        {/if}
                                              
                                    {else}    
                                    <ul class="compatibility">
                                        <li><i class="icon-android"></i> (2.2 - 5.1)</li>
                                        <li><i class="icon-apple"></i> (6.0 - 8.4)</li>
                                        <li>
                                            <i class="i-header-info"></i> <a href="/compatibility/">platform compatibility</a>
                                        </li>
                                    </ul>
                                    {/if*}

                                    {if 0 && isset($listText) && $listText != ""} {*0 &&*}

                                        {assign var="listExplode" value="|"|explode:$listText} 
                                        {if isset($listExplode)}
                                        <ul class="visual-header-dop-info">
                                            {foreach from=$listExplode item=_item}
                                                <li>{if $textAlign == "left"}<i class="item-list-yelow"></i>{/if} {$_item} {if $textAlign == "center" || $textAlign == "right"}<i class="item-list-yelow"></i>{/if}</li>
                                            {/foreach}
                                        </ul>
                                        {/if}

                                    {/if}    

                                    {if isset($planPackageBuy) && $planPackageBuy == 'yes'}
                                        {include file='./blocks/block-package.tpl'
                                            planPackageBuyUrl = (isset($planPackageBuyUrl)) ? $planPackageBuyUrl : "" 
                                            planPackageBuyType = (isset($planPackageBuyType)) ? $planPackageBuyType : "" 
                                            planPackageBuyClass = (isset($planPackageBuyClass)) ? $planPackageBuyClass : "" 
                                        }
                                    {/if}
                                    
                                    {if isset($planPackageIphoneParental) && $planPackageIphoneParental == 'yes'}
                                        {include './blocks/block-package-iphone-parental.tpl'}
                                    {/if}
                                    
                                    {if isset($promoBuyBlock) && $promoBuyBlock == 'yes'}
                                        {include './blocks/include-blocks.tpl'}
                                        {*{include './blocks/block-trial.tpl'}*}
                                    {/if}  
                                    
                                    {if isset($blockTrial) && $blockTrial == 'yes'}
                                        {include './blocks/block-trial.tpl'}
                                    {/if} 
                                    
                                    {if isset($blockQuickAndSimple) && $blockQuickAndSimple == 'yes'}
                                        {include './blocks/block-quick-and-simple.tpl'}
                                    {/if}
                                    
                                    {if isset($iCloudSolution) && $iCloudSolution == 'yes'}
                                        {include file='./blocks/block-icloud-solution.tpl' 
                                                iCloudSolutionUrl = $iCloudSolutionUrl
                                                iCloudSolutionDescription = $iCloudSolutionDescription
                                                iCloudSolutionIButton = $iCloudSolutionIButton
                                                iCloudSolutionBTitle = $iCloudSolutionBTitle
                                                iCloudSolutionButtonClass = $iCloudSolutionButtonClass
                                        }
                                        {*{include './blocks/block-trial.tpl'}*}
                                    {/if}    

                                </div>
                                {if $imgAlign == "center"}
                                    <img src="{$img}/{$imgUrl}" alt="{$imgAlt}" class="visual-img">
                                {/if}    
                            </div>
                            
                        </td>
                        
                        {if in_array('right', $position)}
                        <td class='col-xs-sm-12 col-s-sm-12 col-sm-12 col-md-5 col-lg-5{if $imgVerticalAlign == 'bottom'} vertical-aligh-bottom{/if}'>
                            <div class="visual-images-right {if $block_video}box-video-constructors{/if}">
                                <div class="mobile-none w100p"> 
                                    <img src="{$img}/{$imgUrl}" alt="{$imgAlt}" class="visual-img-pc {if isset($maxWidth)}max-width-{$maxWidth}{/if}"> 
                                     {if isset($block_video) && $block_video == "yes" && isset($block_video_src) && $block_video_src != ""}
                                        <div id="block-video">
                                            <div class="block-video-button">
                                                <div class="video-arrows-v2 pc-version"></div>
                                                <div class="mobile-video-arrows"></div>
                                                <div class="box-hover">
                                                    <a class="youtube" href="{$block_video_src}" rel="nofollow"
                                                       id="openBtnVideo"> 
                                                        <img src="{$img}/video/button_shadows.png" class="video-buttons-v2" />
                                                        <img src="{$img}/video/hover-video-button-play.png" class="hover-video-buttons" />
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    {/if}
                                </div>
                                
                                <div class="mobile-block style-youtube">
                                    {if isset($block_video) && $block_video == "yes" && isset($block_video_src) && $block_video_src != ""}
                                        <img src="{$img}/video/v2/m_bg_video.jpg" class="visual-img-pc pb20" width="206px" height="116px" />    
                                        <div class="box-button-video">
                                            <a class="youtube" href="{$block_video_src}" rel="nofollow"
                                                id="openBtnVideo">
                                            </a>
                                        </div>
                                    {else}
                                        <img src="{$img}/{$imgUrl}" alt="{$imgAlt}" class="visual-img-pc {if isset($maxWidth)}max-width-{$maxWidth}{/if}">
                                    {/if}    
                                </div>
                                
                            </div>
                        </td>
                        {/if}
                    </tr>
                    <tr>    
                        {if in_array('bottom', $position)}
                        <td class='col-xs-sm-12 col-s-sm-12 col-sm-12 col-md-6 col-log-5'>
                            <div class="col-xs-sm-8 col-s-sm-10 col-sm-10 visual-images-bottom mobile-version-inline model-center {if $block_video}box-video-constructors{/if}">
                                <div class="mobile-none">
                                    <img src="{$img}/{$imgUrl}" alt="{$imgAlt}" class="visual-img-pc">  
                                    {if isset($block_video) && $block_video == "yes" && isset($block_video_src) && $block_video_src != ""}
                                        <div id="mobile-block-video" class="row">
                                            <div class="mobile-block-video-button">
                                                <div class="mobile-video-arrows"></div>
                                                <a class="youtube" href="{$block_video_src}" rel="nofollow"
                                                    id="openBtnVideo">
                                                    <img src="{$img}/video/m-video-button-play.png" class="mobile-video-buttons" />
                                                </a>
                                            </div>
                                        </div>
                                    {/if}
                                </div>
                                
                                <div class="mobile-block style-youtube">
                                    
                                    {if isset($block_video) && $block_video == "yes" && isset($block_video_src) && $block_video_src != ""}
                                        <img src="{$img}/video/v2/m_bg_video.jpg" class="visual-img-pc pb20" width="206px" height="116px" />
                                        <div class="box-button-video">
                                            <a class="youtube" href="{$block_video_src}" rel="nofollow"
                                                id="openBtnVideo">
                                            </a>
                                        </div>
                                    {else}
                                        <img src="{$img}/{$imgUrl}" alt="{$imgAlt}" class="visual-img-pc"> 
                                    {/if}    
                                </div>
                                
                                {* 
                                <img src="{$img}/{$imgUrl}" alt="{$imgAlt}" class="visual-img-pc">   
                                 {if isset($block_video) && $block_video == "yes" && isset($block_video_src) && $block_video_src != ""}
                                    <div id="mobile-block-video" class="row">
                                        
                                        <div class="mobile-block-video-button">
                                            <div class="mobile-video-arrows"></div>
                                            <a class="youtube" href="{$block_video_src}" rel="nofollow"
                                                id="openBtnVideo">
                                                <img src="{$img}/video/m-video-button-play.png" class="mobile-video-buttons" />
                                            </a>
                                            
                                        </div>
                                    </div>
                                {/if}
                                *}
                            </div> 
                        </td>
                        {/if}
                    </tr>
                </table>
                
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
						<li><i class="icon-apple"></i> (6.0 - 8.4)</li>
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
                                                <li><i class="icon-apple"></i> (6.0 - 8.4)</li>
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