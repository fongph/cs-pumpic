{include file='../main/header/wrap-title-header.tpl'}

<title>{if isset($title)}{$title}{else} Pumpic mobile phone monitoring app for Android {/if}</title>
{if isset($description)}
    <meta name="description" content="{if $description}{$description}{else}Pumpic for Android is a new solution for parental control mobile monitoring. Track your children’s smartphone usage, follow incoming and outbound calls, monitor browsing history and text messages, track GPS location and social network activity on Android devices with Pumpic.{/if}" />
{/if}

{if isset($keywords)}
    <meta name="keywords" content="{$keywords}"/>
{/if}
{if isset($robots) && $robots == "no"} 
    <meta name="robots" content="noindex,nofollow" />
{/if}

{include file='../main/header/wrap-title-footer.tpl'}

