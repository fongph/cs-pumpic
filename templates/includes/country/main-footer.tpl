<div class="{if isset($blockBg)}{$blockBg}{else}dark bg-footer{/if}">
        <div class="container">
            {if isset($lang) && $lang == "bra"}
                <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-lg-offset-1 col-md-offset-1 col-sm-offset-1">
                            
                            <h3>AVISO LEGAL</h3>
                            <p>O Pumpic é um aplicativo excluisvo para controle dos pais para celulares e tablets com iOS e Android. Ele deve ser usado apenas de maneira ética e legal. Para instalar o app de rastreamento, deve-se garantir que a pessoa seja a proprietária do dispositivo antes da instalação, ou tenha obtido a permissão do proprietário do aparelho para que ele seja rastreaddo.</p>
                            
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-lg-offset-1 col-md-offset-1 col-sm-offset-1">
                            <div>
                                <h3>Sobre a Empresa Pumpic</h3>
                                <p>A Pumpic é uma desenvolvedora de software de monitoramento móvel para rastreamento remoto, controle dos pais e segurança das crianças. O app protege as suas informações pessoais e garante a felicidade da sua família. A Pumpic mantém seus olhos abertos.</p>
                            </div>
                                
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-lg-offset-1 col-md-offset-1 col-sm-offset-1">
                            <div>
                                <h3>Contatos</h3>
                                <p>Equipe de Suporte ao Cliente: <br /><img src="{$img}/country/support-email.png" width="169px" height="17px" /></p>        
                            </div>
                        </div>
                    
                </div>
            {elseif isset($lang) && $lang == "de"}
                <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-lg-offset-1 col-md-offset-1 col-sm-offset-1">
                            
                            <h3>HAFTUNGSAUSSCHLUSS</h3>
                            <p>Pumpic ist eine einzigartige Kinder-Überwachungs-Applikation für iOS und mobile Android Smartphones und Tablets. Sie darf ausschließlich für ethische und legale Zwecke genutzt werden. Um die Überwachungs-App zu installieren müssen Sie Besitzer des Zielgerätes sein oder über eine Erlaubnis des Gerätebesitzers verfügen die App installieren zu dürfen.</p>
                            
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-lg-offset-1 col-md-offset-1 col-sm-offset-1">
                            <div>
                                <h3>Über Pumpic</h3>
                                <p>Pumpic ist ein Entwickler mobile Überwachssoftware für Fernüberwachung, Überwachungssoftware für die Sicherheit von Kindern. Die App schützt Ihre persönlichen Informationen und sorgt somit dafür, dass Ihre Familie langfristig glücklich ist. Pumpic lässt Sie die Augen offen halten.</p>
                            </div>
                                
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-lg-offset-1 col-md-offset-1 col-sm-offset-1">
                            <div>
                                <h3>Kontakt</h3>
                                <p>Kundenservice: <br /><img src="{$img}/country/support-email.png" width="169px" height="17px" /></p>        
                            </div>
                        </div>
                    
                </div>
            {else}
                <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-lg-offset-1 col-md-offset-1 col-sm-offset-1">
                            
                            <h3>DISCLAIMER</h3>
                            <p>Pumpic is a unique parental control tracking application for iOS and Android mobile phones and tablets. It is for ethical and legal use only. To install the tracking app, one should assure that he or she owns the device before installation, or has obtained the owner’s permission to track his or her device.</p>
                            
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-lg-offset-1 col-md-offset-1 col-sm-offset-1">
                            <div>
                                <h3>About Pumpic Company</h3>
                                <p>Pumpic is a developer of mobile monitoring software designed for remote tracking, parental control, and child safety. The app protects your personal information and secures your family happiness. Pumpic keeps your eyes open.</p>
                            </div>
                                
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-lg-offset-1 col-md-offset-1 col-sm-offset-1">
                            <div>
                                <h3>Contacts</h3>
                                <p>Customer Support Team: <br /><img src="{$img}/country/support-email.png" width="169px" height="17px" /></p>        
                            </div>
                        </div>
                    
                </div>
            {/if}    
                <div class="row">
                        <div class="col-sm-10 col-md-10 col-lg-10 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                                <div class="share">
                                        <ul class="box-socials clearfix">
                                            <li><a href="https://www.facebook.com/pages/Pumpic/299299196929718?sk=timeline" class="icons-social i-fb"></a></li>
                                            <li><a href="https://twitter.com/pumpic_com" class="icons-social i-tw"></a></li>
                                            <li><a href="https://www.youtube.com/user/pumpicapp" class="icons-social i-youtube"></a></li>
                                            <li><a href="https://plus.google.com/u/2/b/103434324737023434003/103434324737023434003/posts" class="icons-social i-google"></a></li>
                                            <li>
                                                {include file='../../includes/content/phone/block-phone-footer.tpl'}
                                            </li>
                                        </ul>
                                        
                                </div>
                        </div>
                </div>
        </div>
</div>
<div class="footer">
    <div class="container">
        <div class="footer-text text-center">
            &copy;
            {year_now}
            Pumpic — {if isset($lang) && $lang == "bra"}Todos os Direitos Reservados.{elseif isset($lang) && $lang == "de"}Alle Rechte Vorbehalten.{else}All Rights Reserved.{/if}
        </div>
    </div>
</div>
{if $di.isDirectLogin == true}
    <div class="direct-login-footer">
        <div class="container">
            You are currently logged in as <a class="account-login" href="mailto:{$di.authData.login}">{$di.authData.login}</a>!
            <a class="log-out-button" href="/logout.html">Log out</a>
        </div>
        
    </div>
{/if}
<!-- init popUp -->
<!-- init popUp -->
{if isset($_popUp)}
    {assign 'module' $_popUp}
{else}
    {assign 'module' '../../includes/main-popUp.tpl'}
{/if}

{include file="$module"}

{*include file='../../includes/main-popUp.tpl'*}