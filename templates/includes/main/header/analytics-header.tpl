{literal}
<script type="text/javascript">
var domain='{/literal}{$domain_http}{literal}';
</script>
<script type="text/javascript">
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga'); 

{/literal}
{*{nocache}*}
{*{if ''|hasUser}*}
{*{literal}ga('create', 'UA-56492507-1', 'auto', {'allowLinker': true, 'userId': '{/literal}{getUserID}{literal}'});{/literal}*}
{*{else}  *}
{literal}ga('create', 'UA-56492507-1', 'auto', {'allowLinker': true});{/literal}
{*{/if}*}
{*{/nocache}*}
{literal}   
ga('require', 'linker');
ga('linker:autoLink', ['pumpic.com','fastspring.com', 'onfastspring.com','demo.pumpic.com','cp.pumpic.com'], true, true);
{/literal}
{*{nocache}*}
{if $search_word}
ga('send', 'pageview', '/compatibility/results?q={$search_word}');
{else}
ga('send', 'pageview');
{/if}
{*{/nocache}*}
{literal}    
</script>
{/literal}

{*<!-- GOOGLE GA.JS --> 
<script type="text/javascript">
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-56492507-1']);
_gaq.push(['_trackPageview']);

(function() {
var iga = document.createElement('script'); iga.type = 'text/javascript'; iga.async = true;
iga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(iga, s);
})();

</script>
<!-- END GA.JS -->*}


{* --------------- DEBUG GA ------------------- *}
{*ga('create', 'UA-56492507-1', 'auto');
    ga('require', 'campaignLoader', {
      debug: true,
      nameParam: 'cname',
      sourceParam: 'csrc',
      mediumParam: 'cmed'
    });
    ga('campaignLoader:loadCampaignFields');

    ga('send', 'pageview');
    
    function providePlugin(pluginName, pluginConstructor) {
      var ga = window[window['GoogleAnalyticsObject'] || 'ga'];
      if (ga) ga('provide', pluginName, pluginConstructor);
    }

    /**
     * Constructor for the campaignLoader plugin.
     */
    var CampaignLoader = function(tracker, config) {
      this.tracker = tracker;
      this.nameParam = config.nameParam || 'name';
      this.sourceParam = config.sourceParam || 'source';
      this.mediumParam = config.mediumParam || 'medium';
      this.isDebug = config.debug;
    };

    /**
     * Loads campaign fields from the URL and updates the tracker.
     */
    CampaignLoader.prototype.loadCampaignFields = function() {
      this.debugMessage('Loading custom campaign parameters');

      var nameValue = getUrlParam(this.nameParam);
      if (nameValue) {
        this.tracker.set('campaignName', nameValue);
        this.debugMessage('Loaded campaign name: ' + nameValue);
      }

      var sourceValue = getUrlParam(this.sourceParam);
      if (sourceValue) {
        this.tracker.set('campaignSource', sourceValue);
        this.debugMessage('Loaded campaign source: ' + sourceValue);
      }

      var mediumValue = getUrlParam(this.mediumParam);
      if (mediumValue) {
        this.tracker.set('campaignMedium', mediumValue);
        this.debugMessage('Loaded campaign medium: ' + mediumValue);
      }
    };

    /**
     * Enables / disables debug output.
     */
    CampaignLoader.prototype.setDebug = function(enabled) {
      this.isDebug = enabled;
    };

    /**
     * Displays a debug message in the console, if debugging is enabled.
     */
    CampaignLoader.prototype.debugMessage = function(message) {
      if (!this.isDebug) return;
      if (console) console.debug(message);
    };

    /**
     * Utility function to extract a URL parameter value.
     */
    function getUrlParam(param) {
      var match = document.location.search.match('(?:\\?|&)' + param + '=([^&#]*)');
      return (match && match.length == 2) ? decodeURIComponent(match[1]) : '';
    }

    // Register the plugin.
    providePlugin('campaignLoader', CampaignLoader);*}
    {* ----------------------- END ------------------------- *}