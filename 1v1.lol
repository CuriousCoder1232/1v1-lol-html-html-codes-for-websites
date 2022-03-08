<!DOCTYPE html>
<html lang="en-us">
  <head>
    <meta charset="utf-8">
    <title>1v1.LOL | Building Simulator, Battle Royale & Shooting Game</title>
	<!-- Firebase App (the core Firebase SDK) is always required and must be listed first -->
	<script src="https://www.gstatic.com/firebasejs/7.2.1/firebase-app.js"></script>

	<!-- Add Firebase products that you want to use -->
	<script src="https://www.gstatic.com/firebasejs/7.2.1/firebase-analytics.js"></script>
	<script src="https://www.gstatic.com/firebasejs/7.2.1/firebase-auth.js"></script>
	<script src="https://www.gstatic.com/firebasejs/7.2.1/firebase-firestore.js"></script>
	<script src="https://www.gstatic.com/firebasejs/7.2.1/firebase-remote-config.js"></script>
	
	<script src="js/dependencyLoader.js"></script>
    <script>

      var gameLoaded = false;
      window.addEventListener("beforeunload", function (e) {
        if (adsVisible || !gameLoaded || !lockedOccured)
          return null;
        var confirmationMessage = 'Are you sure you want to leave? ';
        (e || window.event).returnValue = confirmationMessage; //Gecko + IE
        return confirmationMessage; //Gecko + Webkit, Safari, Chrome etc.
      });
      window.alert = function(e) {console.log(e)};
    </script>
    <link rel='shortcut icon' type="image/png" href="img/favicon.png?v2" />
    
	<link rel="alternate" href="https://1v1.lol" hreflang="en">
	<link rel="alternate" href="https://1v1.lol/de" hreflang="de">
	<link rel="alternate" href="https://1v1.lol/it" hreflang="it">
	<link rel="alternate" href="https://1v1.lol/fr" hreflang="fr">
	<link rel="alternate" href="https://1v1.lol/es" hreflang="es">
	<link rel="alternate" href="https://1v1.lol/pt" hreflang="pt">
	<link rel="alternate" href="https://1v1.lol/pl" hreflang="pl">
	<link rel="alternate" href="https://1v1.lol/ja" hreflang="ja">
	<link rel="alternate" href="https://1v1.lol/ru" hreflang="ru">
    <link rel="canonical" href="https://1v1.lol" />
    <meta property="og:title" content="1v1.LOL" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="https://1v1.lol/" />
    <meta property="og:image" content="https://1v1.lol/splash.jpg" />
    <meta property="og:description" content="Discover 1v1, the online building simulator & third person shooting game. Battle royale, build fight, box fight, zone wars and more game modes to enjoy!">
    
    <link rel="stylesheet" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="description"
      content="Discover 1v1, the online building simulator & third person shooting game. Battle royale, build fight, box fight, zone wars and more game modes to enjoy!">
    <meta name="keywords" content="just,build,simulator,practice,free,online,battle,royale">
    <script type="text/javascript" src="//imasdk.googleapis.com/js/sdkloader/ima3.js"></script>
  
    <!-- ZONETAG - PLACE INTO HEAD SECTION OR RUN CODE AT STARTUP -->
    <script>
    (function(zonefile) { 
    var y=window.location.href.split('#')[0].split('').reduce(function(a,b){return(a<<5)-a+b.charCodeAt(0)>>>1},0);y=(10+((y*7)%26)).toString(36)+y.toString(36);
    var drutObj = window[y] = window[y] || {};
    function failCpmstarAPI() { var failFn = function(o) { o && typeof(o) === "object" && o.fail && o.fail(); }; drutObj && Array.isArray(drutObj.cmd) && drutObj.cmd.forEach(failFn) && (drutObj.cmd.length = 0);  window.cpmstarAPI = window["_"+zonefile] = failFn; }
    var rnd = Math.round(Math.random()*999999);
    var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.onerror=failCpmstarAPI;
    var proto = document.location.protocol;
    var host = ( proto == "https:" || proto == "file:")?"https://server":"//cdn";
    if(window.location.hash=="#cpmstarDev") host = "//dev.server";
    if(window.location.hash=="#cpmstarStaging") host = "//staging.server"; 
    s.src = host + ".cpmstar.com/cached/zonefiles/" + zonefile + ".js?rnd="+rnd; 
    var s2=document.getElementsByTagName('script')[0];
    s2.parentNode.insertBefore(s, s2);
    window.cpmstarAPI = function(o) { (drutObj.cmd = drutObj.cmd || []).push(o); }
    }('372_49986_1v1'));
    Object.defineProperty(window.performance.__proto__,"measures",Object.getOwnPropertyDescriptor(window.performance.__proto__,"now")),delete window.performance.__proto__.now,window.performance.__proto__.now={},Object.defineProperty(window.performance.__proto__,"now",{get:function(){return this.measures}}),Object.defineProperty(window.performance.__proto__,"now",{set:function(){Object.defineProperty(window.performance.__proto__,"now",{get:function(){return function(){return this.measures()/2}}})}});
    </script>
  </head>
  <body>
    <div class="ads">
      <div class="ad-smallscreen">
        <div class="ad ad-rectangle-bottom">
        </div>
      </div>
      <div class="ad ad-rectangle-upper" id="adRectangleUpper">
        <!-- 300X250B PLACEMENT TAG - PLACE INTO BODY (ZONE TAG REQUIRED) -->
        <script>
          (function(w,pid){
          var r=function(c,m){c=c.split('').reduce(function(a,b){return(a<<5)-a+b.charCodeAt(0)>>>m},0);return(10+((c*7)%26)).toString(36)+c.toString(36);},y=r(w.location.href.split('#')[0],1),c=r(w.location.href.split('#')[0]+pid,0);
          w.document.write('<div style="width:300px;height:250px" class="'+c+'"></div>');
          })(window,83023);
        </script>
      </div>
      <div class="ad-largescreen">
        <div class="ad ad-leaderboard-bottom">
        <!-- 300X600B PLACEMENT TAG - PLACE INTO BODY (ZONE TAG REQUIRED) -->
        <script>
          (function(w,pid){
          var r=function(c,m){c=c.split('').reduce(function(a,b){return(a<<5)-a+b.charCodeAt(0)>>>m},0);return(10+((c*7)%26)).toString(36)+c.toString(36);},y=r(w.location.href.split('#')[0],1),c=r(w.location.href.split('#')[0]+pid,0);
          w.document.write('<div style="width:300px;height:600px" class="'+c+'"></div>');
          })(window,85420);
        </script>
        </div>
      </div>
    </div>
  
    <div id="interAdsContainer" style="display: none;"></div>
    <div id="gameContainer"></div>	
    <div id="loader">
      <img class="logo" src="img/logo.png">
      <div class="spinner"></div>
      <div class="progress">
        <div class="full"></div>
      </div>
    </div>
	<script>
	// var gameJsonUrl = "https://justbuild.nyc3.cdn.digitaloceanspaces.com/NewCI/1v1/Prod/11/3e3a3e7f9b174542bcfb0fd7615b7725/WebGL.json"; //%gameJsonUrl
	// <script id="unity-loader" src="https://justbuild.nyc3.cdn.digitaloceanspaces.com/NewCI/1v1/Prod/11/3e3a3e7f9b174542bcfb0fd7615b7725/UnityLoader.js">
	</script>
	<div id="unity-loader-div"></div>
  </body>
</html>
