<div class="row box-body-filters" attr-use-plan="{$item_plan}">
    <div class="col-lg-5 col-md-5 box-first">
        <div id="{$_id}" class="dtd w30p" {*if $_id == 'viber-whatsapp-skype'} style="width: 30.3333% !important;" {/if*} >{$title}</div> {* 16% *}
        <!-- dtd -->
        <div class="dtd box-filter-mobile w13p">
            {foreach from=$device key=k item=v}
                {if $v.status == true}
                    <i class="icon-{$k} {if $v.status == true} supported {/if}"></i>
                {else}
                    <li class="mobile-icon-none">&nbsp;</li>
                {/if}    
            {/foreach}    
        </div>
        <!-- dtd -->
        <div class="dtd w16p">
            <strong>
                {foreach from=$plans key=type item=value name=plans}
                    {if $value.status == true}
                        {$type}
                    {else}
                         &nbsp;
                    {/if}    

                    {if $smarty.foreach.plans.index != $smarty.foreach.plans.total - 1}
                        <br />
                    {/if}    
                {/foreach}
            </strong>
        </div>
        <!-- dtd -->
        <div class="popover">
            <div class="row">
                <div class="col-lg-7">
                    <h3>{$description.title}</h3>
                    <p>{$description.body}</p>
                    {*
                    <span class="text-screens">Screens:</span>
                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="item active">
                                <a href="#">
                                        <img src="images/slider_1.jpg" height="97" width="74" alt="">
                                </a>
                                <a href="#">
                                        <img src="images/slider_1.jpg" height="97" width="74" alt="">
                                </a>
                                <a href="#">
                                        <img src="images/slider_1.jpg" height="97" width="74" alt="">
                                </a>
                            </div>
                            <div class="item">
                                <a href="#">
                                        <img src="images/slider_1.jpg" height="97" width="74" alt="">
                                </a>
                                <a href="#">
                                        <img src="images/slider_1.jpg" height="97" width="74" alt="">
                                </a>
                                <a href="#">
                                        <img src="images/slider_1.jpg" height="97" width="74" alt="">
                                </a>
                            </div>
                            <div class="item">
                                <a href="#">
                                        <img src="images/slider_1.jpg" height="97" width="74" alt="">
                                </a>
                                <a href="#">
                                        <img src="images/slider_1.jpg" height="97" width="74" alt="">
                                </a>
                                <a href="#">
                                        <img src="images/slider_1.jpg" height="97" width="74" alt="">
                                </a>
                            </div>
                        </div>

                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev"></a>
                        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next"></a>
                    </div>
                    *}
                    
                    
                </div>
                    <div class="col-lg-5">
                            <div class="list_plans">
                                    <p>Plans:
                                            {foreach from=$plans key=type item=value name=plans}
                                                {if $value.status == true}
                                                    <strong>{$type}</strong>
                                                {/if}       
                                            {/foreach}
                                    </p>
                                    
                                    {foreach from=$device key=k item=v}
                                        {if $v.status == true}
                                            <p><i class="icon-{$k}"></i><span>{$v.version}</span></p>
                                        {/if}        
                                    {/foreach}    
                                    
                            </div>
                            <div class="price-box">
                                    {if $plans.basic.status == true}
                                        <h3>Basic</h3>
                                        <div class="price">
                                            {$plans.basic.price}
                                        </div>
                                        <button class="btn btn-default">Buy Basic</button>
                                    {else}
                                        <h3>Premium</h3>
                                        <div class="price">
                                            {$plans.premium.price}
                                        </div>
                                        <button class="btn btn-default">Buy Premium</button>
                                    {/if}    
                            </div>
                    </div>
            </div>
        </div> <!-- .popover -->
    </div>
    <div class="col-lg-7 col-md-7">
        <div class="dtd">
               {$intro}
        </div>
    </div>
</div> 