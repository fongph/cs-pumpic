<div class="row box-body-filters" attr-use-plan="{$item_plan}">
    <div class="col-lg-5 col-md-5">
        <div class="dtd">{$title}</div>
        <!-- dtd -->
        <div class="dtd box-filter-mobile">
            {foreach from=$device key=k item=v}
                <i class="icon-{$k} {if $v.status == true} supported {/if}"></i>
            {/foreach}    
        </div>
        <!-- dtd -->
        <div class="dtd">
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
                                    
                                    {*<p>
                                        <i class="icon-android"></i><span>2.2 - 4.4</span>
                                    </p>
                                    <p>
                                        <i class="icon-apple"></i><span>3.1.3 - 7.1.1  (exept 6.1.2)</span>
                                    </p>
                                    <p>
                                        <i class="icon-blackberry"></i><span>1.0 - 7.1</span>
                                    </p>*}
                            </div>
                            <div class="price-box">
                                    <h3>Basic</h3>
                                    <div class="price">
                                            3 month -$199.99
                                    </div>
                                    <button class="btn btn-default">Buy Basic</button>
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