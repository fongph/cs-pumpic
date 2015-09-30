{include file='../main/header/wrap-title-header.tpl'}

<title>{if isset($title)}{$title}{else} Pumpic mobile phone monitoring app for Android {/if}</title>
{if isset($description)}
    <meta name="description" content="{if $description}{$description}{else}Pumpic for Android is a new solution for parental control mobile monitoring. Track your children’s smartphone usage, follow incoming and outbound calls, monitor browsing history and text messages, track GPS location and social network activity on Android devices with Pumpic.{/if}" />
{/if}

{if isset($keywords)}
    <meta name="keywords" content="{$keywords}"/>
{/if}

{robotsClose}
{if isset($robots) && $robots == "no" || $robotClose == "true"} 
    <meta name="robots" content="noindex,nofollow" />
{/if}

{assign '_test' 'false'}
{if isset($test) && $test == 'true'} {assign '_test' 'true'} {/if}

{if isset($metaTags)}
<meta property='og:title' content='{if isset($ogTitle)}{$ogTitle}{else}Mobile Phone Security Measures{/if}'>
<meta property='og:description' content='{if isset($ogDesc)}{$ogDesc}{else}How to protect children from online predators, cyberbullies, 18+ content, and identity theft. Pumpic gathered essential information on mobile phone safety practice. Learn more to keep kids safe.{/if}'>
<meta property='og:image' content='{if isset($ogImg)}{$ogImg}{else}http://pumpic.com/images/socials/social-icon.jpg{/if}'>
{/if}

{include file='../main/header/wrap-title-footer.tpl'
    test = $_test
}

