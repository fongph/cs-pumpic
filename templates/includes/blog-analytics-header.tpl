<script type="text/javascript">
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga'); 
<?php if (hasUser()) : ?> 
ga('create', 'UA-56492507-1', 'auto', {'allowLinker': true, 'userId': '<?= getUserID() ?>'});
<?php else: ?>
ga('create', 'UA-56492507-1', 'auto', {'allowLinker': true});
<?php endif; ?>           
ga('require', 'linker');
ga('linker:autoLink', ['pumpic.com','fastspring.com','demo.pumpic.com','cp.pumpic.com'], true, true);
ga('send', 'pageview');
</script>