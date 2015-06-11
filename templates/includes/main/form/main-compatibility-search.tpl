<form action="/compatibility/results/" name="box-search" method="POST" class="form-search compatibility-search">
    <div class="input-group">
        <input type="text" class="form-control required" name="device-model" value="{if isset($search_word) && $search_word}{$search_word}{/if}" placeholder="Enter target device model">
        <span class="input-group-btn"><button class="btn btn-warning" type="submit">Search</button></span>
    </div>
    <div id="compatibility-search-error" class="fatal-error"></div>
</form> 