

<!DOCTYPE html> 
<html dir="rtl" lang="fa-IR" class="js no-applicationcache geolocation history postmessage svg websockets localstorage sessionstorage websqldatabase webworkers hashchange audio canvas canvastext video webgl cssgradients multiplebgs opacity rgba srcset inlinesvg hsla supports svgclippaths smil no-touchevents fontface generatedcontent cssvhunit cssvwunit textshadow cssanimations backgroundsize borderimage borderradius boxshadow csscolumns csscolumns-width csscolumns-span csscolumns-fill csscolumns-gap csscolumns-rule csscolumns-rulecolor csscolumns-rulestyle csscolumns-rulewidth csscolumns-breakbefore csscolumns-breakafter csscolumns-breakinside flexbox flexboxlegacy cssreflections cssresize csstransforms csstransforms3d csstransitions indexeddb indexeddb-deletedatabase"><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><script>if(navigator.userAgent.match(/MSIE|Internet Explorer/i)||navigator.userAgent.match(/Trident\/7\..*?rv:11/i)){var href=document.location.href;if(!href.match(/[?&]nowprocket/)){if(href.indexOf("?")==-1){if(href.indexOf("#")==-1){document.location.href=href+"?nowprocket=1"}else{document.location.href=href.replace("#","?nowprocket=1#")}}else{if(href.indexOf("#")==-1){document.location.href=href+"&nowprocket=1"}else{document.location.href=href.replace("#","&nowprocket=1#")}}}}</script><script>class RocketLazyLoadScripts{constructor(e){this.triggerEvents=e,this.eventOptions={passive:!0},this.userEventListener=this.triggerListener.bind(this),this.delayedScripts={normal:[],async:[],defer:[]},this.allJQueries=[]}_addUserInteractionListener(e){this.triggerEvents.forEach((t=>window.addEventListener(t,e.userEventListener,e.eventOptions)))}_removeUserInteractionListener(e){this.triggerEvents.forEach((t=>window.removeEventListener(t,e.userEventListener,e.eventOptions)))}triggerListener(){this._removeUserInteractionListener(this),"loading"===document.readyState?document.addEventListener("DOMContentLoaded",this._loadEverythingNow.bind(this)):this._loadEverythingNow()}async _loadEverythingNow(){this._delayEventListeners(),this._delayJQueryReady(this),this._handleDocumentWrite(),this._registerAllDelayedScripts(),this._preloadAllScripts(),await this._loadScriptsFromList(this.delayedScripts.normal),await this._loadScriptsFromList(this.delayedScripts.defer),await this._loadScriptsFromList(this.delayedScripts.async),await this._triggerDOMContentLoaded(),await this._triggerWindowLoad(),window.dispatchEvent(new Event("rocket-allScriptsLoaded"))}_registerAllDelayedScripts(){document.querySelectorAll("script[type=rocketlazyloadscript]").forEach((e=>{e.hasAttribute("src")?e.hasAttribute("async")&&!1!==e.async?this.delayedScripts.async.push(e):e.hasAttribute("defer")&&!1!==e.defer||"module"===e.getAttribute("data-rocket-type")?this.delayedScripts.defer.push(e):this.delayedScripts.normal.push(e):this.delayedScripts.normal.push(e)}))}async _transformScript(e){return await this._requestAnimFrame(),new Promise((t=>{const n=document.createElement("script");let r;[...e.attributes].forEach((e=>{let t=e.nodeName;"type"!==t&&("data-rocket-type"===t&&(t="type",r=e.nodeValue),n.setAttribute(t,e.nodeValue))})),e.hasAttribute("src")?(n.addEventListener("load",t),n.addEventListener("error",t)):(n.text=e.text,t()),e.parentNode.replaceChild(n,e)}))}async _loadScriptsFromList(e){const t=e.shift();return t?(await this._transformScript(t),this._loadScriptsFromList(e)):Promise.resolve()}_preloadAllScripts(){var e=document.createDocumentFragment();[...this.delayedScripts.normal,...this.delayedScripts.defer,...this.delayedScripts.async].forEach((t=>{const n=t.getAttribute("src");if(n){const t=document.createElement("link");t.href=n,t.rel="preload",t.as="script",e.appendChild(t)}})),document.head.appendChild(e)}_delayEventListeners(){let e={};function t(t,n){!function(t){function n(n){return e[t].eventsToRewrite.indexOf(n)>=0?"rocket-"+n:n}e[t]||(e[t]={originalFunctions:{add:t.addEventListener,remove:t.removeEventListener},eventsToRewrite:[]},t.addEventListener=function(){arguments[0]=n(arguments[0]),e[t].originalFunctions.add.apply(t,arguments)},t.removeEventListener=function(){arguments[0]=n(arguments[0]),e[t].originalFunctions.remove.apply(t,arguments)})}(t),e[t].eventsToRewrite.push(n)}function n(e,t){let n=e[t];Object.defineProperty(e,t,{get:()=>n||function(){},set(r){e["rocket"+t]=n=r}})}t(document,"DOMContentLoaded"),t(window,"DOMContentLoaded"),t(window,"load"),t(window,"pageshow"),t(document,"readystatechange"),n(document,"onreadystatechange"),n(window,"onload"),n(window,"onpageshow")}_delayJQueryReady(e){let t=window.jQuery;Object.defineProperty(window,"jQuery",{get:()=>t,set(n){if(n&&n.fn&&!e.allJQueries.includes(n)){n.fn.ready=n.fn.init.prototype.ready=function(t){e.domReadyFired?t.bind(document)(n):document.addEventListener("rocket-DOMContentLoaded",(()=>t.bind(document)(n)))};const t=n.fn.on;n.fn.on=n.fn.init.prototype.on=function(){if(this[0]===window){function e(e){return e.split(" ").map((e=>"load"===e||0===e.indexOf("load.")?"rocket-jquery-load":e)).join(" ")}"string"==typeof arguments[0]||arguments[0]instanceof String?arguments[0]=e(arguments[0]):"object"==typeof arguments[0]&&Object.keys(arguments[0]).forEach((t=>{delete Object.assign(arguments[0],{[e(t)]:arguments[0][t]})[t]}))}return t.apply(this,arguments),this},e.allJQueries.push(n)}t=n}})}async _triggerDOMContentLoaded(){this.domReadyFired=!0,await this._requestAnimFrame(),document.dispatchEvent(new Event("rocket-DOMContentLoaded")),await this._requestAnimFrame(),window.dispatchEvent(new Event("rocket-DOMContentLoaded")),await this._requestAnimFrame(),document.dispatchEvent(new Event("rocket-readystatechange")),await this._requestAnimFrame(),document.rocketonreadystatechange&&document.rocketonreadystatechange()}async _triggerWindowLoad(){await this._requestAnimFrame(),window.dispatchEvent(new Event("rocket-load")),await this._requestAnimFrame(),window.rocketonload&&window.rocketonload(),await this._requestAnimFrame(),this.allJQueries.forEach((e=>e(window).trigger("rocket-jquery-load"))),window.dispatchEvent(new Event("rocket-pageshow")),await this._requestAnimFrame(),window.rocketonpageshow&&window.rocketonpageshow()}_handleDocumentWrite(){const e=new Map;document.write=document.writeln=function(t){const n=document.currentScript,r=document.createRange(),i=n.parentElement;let o=e.get(n);void 0===o&&(o=n.nextSibling,e.set(n,o));const a=document.createDocumentFragment();r.setStart(a,0),a.appendChild(r.createContextualFragment(t)),i.insertBefore(a,o)}}async _requestAnimFrame(){return new Promise((e=>requestAnimationFrame(e)))}static run(){const e=new RocketLazyLoadScripts(["keydown","mousemove","touchmove","touchstart","touchend","wheel"]);e._addUserInteractionListener(e)}}RocketLazyLoadScripts.run();
</script> 

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<meta name="robots" content="index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1">


<script type="text/javascript">/*<![CDATA[ */ var html = document.getElementsByTagName("html")[0]; html.className = html.className.replace("no-js", "js"); window.onerror=function(e,f){var body = document.getElementsByTagName("body")[0]; body.className = body.className.replace("rt-loading", ""); var e_file = document.createElement("a");e_file.href = f;console.log( e );console.log( e_file.pathname );}/* ]]>*/</script>
	<script type="application/ld+json" class="yoast-schema-graph">{"@context":"https://schema.org","@graph":[{"@type":"WebSite","@id":"https://www.telina.ir/#website","url":"https://www.telina.ir/","name":"\u062a\u0644\u06cc\u0646\u0627","description":"\u0645\u0642\u0627\u06cc\u0633\u0647 \u0648 \u062e\u0631\u06cc\u062f \u0622\u0646\u0644\u0627\u06cc\u0646 \u062a\u0644\u0641\u0646 \u0627\u06cc\u0646\u062a\u0631\u0646\u062a\u06cc\u060c \u0633\u06cc\u067e \u062a\u0631\u0627\u0646\u06a9 \u0648 \u062a\u0644\u0641\u0646 \u062b\u0627\u0628\u062a \u0648\u06cc\u067e \u0627\u0632 \u0645\u0639\u062a\u0628\u0631\u062a\u0631\u06cc\u0646 \u0627\u067e\u0631\u0627\u062a\u0648\u0631\u0647\u0627 \u062f\u0631 \u0633\u0631\u0627\u0633\u0631 \u06a9\u0634\u0648\u0631","potentialAction":[{"@type":"SearchAction","target":{"@type":"EntryPoint","urlTemplate":"https://www.telina.ir/?s={search_term_string}"},"query-input":"required name=search_term_string"}],"inLanguage":"fa-IR"},{"@type":"ImageObject","@id":"https://www.telina.ir/#primaryimage","inLanguage":"fa-IR","url":"https://www.telina.ir/wp-content/uploads/TelinaLogo-1.png","contentUrl":"https://www.telina.ir/wp-content/uploads/TelinaLogo-1.png","width":3000,"height":3000},{"@type":"WebPage","@id":"https://www.telina.ir/#webpage","url":"https://www.telina.ir/","name":"\u062a\u0644\u06cc\u0646\u0627 - \u0645\u0642\u0627\u06cc\u0633\u0647 \u0648 \u062e\u0631\u06cc\u062f \u062a\u0644\u0641\u0646 \u0627\u06cc\u0646\u062a\u0631\u0646\u062a\u06cc \u0648 \u0633\u06cc\u067e \u062a\u0631\u0627\u0646\u06a9","isPartOf":{"@id":"https://www.telina.ir/#website"},"primaryImageOfPage":{"@id":"https://www.telina.ir/#primaryimage"},"datePublished":"2018-06-14T18:47:34+00:00","dateModified":"2021-09-03T08:57:45+00:00","description":"\u0645\u0642\u0627\u06cc\u0633\u0647 \u0648 \u062e\u0631\u06cc\u062f \u0622\u0646\u0644\u0627\u06cc\u0646 \u062a\u0644\u0641\u0646 \u062b\u0627\u0628\u062a \u0627\u06cc\u0646\u062a\u0631\u0646\u062a\u06cc \u0648 \u0633\u06cc\u067e \u062a\u0631\u0627\u0646\u06a9 \u0627\u0632 \u0645\u0639\u062a\u0628\u0631\u062a\u0631\u06cc\u0646 \u0627\u067e\u0631\u0627\u062a\u0648\u0631\u0647\u0627\u06cc \u062a\u0644\u0641\u0646 \u062b\u0627\u0628\u062a \u062f\u0631 \u0633\u0631\u0627\u0633\u0631 \u06a9\u0634\u0648\u0631","breadcrumb":{"@id":"https://www.telina.ir/#breadcrumb"},"inLanguage":"fa-IR","potentialAction":[{"@type":"ReadAction","target":["https://www.telina.ir/"]}]},{"@type":"BreadcrumbList","@id":"https://www.telina.ir/#breadcrumb","itemListElement":[{"@type":"ListItem","position":1,"name":"\u062e\u0627\u0646\u0647"}]}]}</script>
 	<link rel="preload" as="style" href="{{env('APP_URL')}}/build/telnum_files/css">
	<link rel="stylesheet" href="{{env('APP_URL')}}/build/telnum_files/css" media="all" onload="this.media=&#39;all&#39;">
	
 <meta name="keywords" content="{{Session::get('mngindexs')->ind_key}}" />
 <meta name="description" content="{{Session::get('mngindexs')->ind_cont}}" />

 

	<title>{{Session::get('mngindexs')->ind_ftitile}}</title> 
<style type="text/css">
img.wp-smiley,
img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>
	<link data-minify="1" rel="stylesheet" id="naturalife-style-all-css" href="{{env('APP_URL')}}/build/telnum_files/app-min.css" type="text/css" media="all">
<link data-minify="1" rel="stylesheet" id="fontello-css" href="{{env('APP_URL')}}/build/telnum_files/fontello.css" type="text/css" media="all">
<link rel="stylesheet" id="naturalife-style-rtl-css" href="{{env('APP_URL')}}/build/telnum_files/rtl-min.css" type="text/css" media="all">
<link data-minify="1" rel="stylesheet" id="naturalife-theme-style-css" href="{{env('APP_URL')}}/build/telnum_files/style.css" type="text/css" media="all">
<link data-minify="1" rel="stylesheet" id="naturalife-dynamic-css" href="{{env('APP_URL')}}/build/telnum_files/dynamic-style.css" type="text/css" media="all">
<link rel="stylesheet" id="wp-block-library-rtl-css" href="{{env('APP_URL')}}/build/telnum_files/style-rtl.min.css" type="text/css" media="all">
<link data-minify="1" rel="stylesheet" id="tablepress-default-css" href="{{env('APP_URL')}}/build/telnum_files/default-rtl.min.css" type="text/css" media="all">
<link data-minify="1" rel="stylesheet" id="elementor-icons-css" href="{{env('APP_URL')}}/build/telnum_files/elementor-icons.min.css" type="text/css" media="all">
<link rel="stylesheet" id="elementor-frontend-legacy-css" href="{{env('APP_URL')}}/build/telnum_files/frontend-legacy-rtl.min.css" type="text/css" media="all">
<link rel="stylesheet" id="elementor-frontend-css" href="{{env('APP_URL')}}/build/telnum_files/frontend-rtl.min.css" type="text/css" media="all">
<style id="elementor-frontend-inline-css" type="text/css">
@font-face{font-family:eicons;src:url({{env('APP_URL')}}/build/telnum_files/fonts/eicons/eicons.eot?5.10.0);src:url({{env('APP_URL')}}/build/telnum_files/fonts/eicons/eicons.eot?5.10.0#iefix) format("embedded-opentype"),url({{env('APP_URL')}}/build/telnum_files/fonts/eicons/eicons.woff2?5.10.0) format("woff2"),url({{env('APP_URL')}}/build/telnum_files/fonts/eicons/eicons.woff?5.10.0) format("woff"),url({{env('APP_URL')}}/build/telnum_files/fonts/eicons/eicons.ttf?5.10.0) format("truetype"),url({{env('APP_URL')}}/build/telnum_files/fonts/eicons/eicons.svg?5.10.0#eicon) format("svg");font-weight:400;font-style:normal}
</style>
<link data-minify="1" rel="stylesheet" id="elementor-post-2723-css" href="{{env('APP_URL')}}/build/telnum_files/post-2723.css" type="text/css" media="all">
<link rel="stylesheet" id="elementor-pro-css" href="{{env('APP_URL')}}/build/telnum_files/frontend-rtl.min(1).css" type="text/css" media="all">
<link data-minify="1" rel="stylesheet" id="font-awesome-5-all-css" href="{{env('APP_URL')}}/build/telnum_files/all.min.css" type="text/css" media="all">
<link rel="stylesheet" id="font-awesome-4-shim-css" href="{{env('APP_URL')}}/build/telnum_files/v4-shims.min.css" type="text/css" media="all">
<link data-minify="1" rel="stylesheet" id="elementor-post-2-css" href="{{env('APP_URL')}}/build/telnum_files/post-2.css" type="text/css" media="all">
 

<link rel="stylesheet" id="elementor-icons-shared-0-css" href="{{env('APP_URL')}}/build/telnum_files/fontawesome.min.css" type="text/css" media="all">
<link data-minify="1" rel="stylesheet" id="elementor-icons-fa-brands-css" href="{{env('APP_URL')}}/build/telnum_files/brands.min.css" type="text/css" media="all">
<link data-minify="1" rel="stylesheet" id="elementor-icons-fa-solid-css" href="{{env('APP_URL')}}/build/telnum_files/solid.min.css" type="text/css" media="all">
<link data-minify="1" rel="stylesheet" id="elementor-icons-fa-regular-css" href="{{env('APP_URL')}}/build/telnum_files/regular.min.css" type="text/css" media="all">
<script type="text/javascript" src="{{env('APP_URL')}}/build/telnum_files/jquery.min.js.download" id="jquery-core-js"></script>
<script type="text/javascript" src="{{env('APP_URL')}}/build/telnum_files/jquery-migrate.min.js.download" id="jquery-migrate-js"></script>
<script type="text/javascript" src="{{env('APP_URL')}}/build/telnum_files/v4-shims.min.js.download" id="font-awesome-4-shim-js"></script>



<noscript><style id="rocket-lazyload-nojs-css">.rll-youtube-player, [data-lazy-src]{display:none !important;}</style></noscript><link href="{{env('APP_URL')}}/build/telnum_files/jquery.min.js.download" rel="preload" as="script"><link href="{{env('APP_URL')}}/build/telnum_files/jquery-migrate.min.js.download" rel="preload" as="script"><link href="{{env('APP_URL')}}/build/telnum_files/v4-shims.min.js.download" rel="preload" as="script"><link href="{{env('APP_URL')}}/build/telnum_files/app-min.js.download" rel="preload" as="script"><link href="{{env('APP_URL')}}/build/telnum_files/imagesloaded.min.js.download" rel="preload" as="script"><link href="{{env('APP_URL')}}/build/telnum_files/webpack-pro.runtime.min.js.download" rel="preload" as="script"><link href="{{env('APP_URL')}}/build/telnum_files/webpack.runtime.min.js.download" rel="preload" as="script"><link href="{{env('APP_URL')}}/build/telnum_files/frontend-modules.min.js.download" rel="preload" as="script"><link href="{{env('APP_URL')}}/build/telnum_files/frontend.min.js.download" rel="preload" as="script"><link href="{{env('APP_URL')}}/build/telnum_files/waypoints.min.js.download" rel="preload" as="script"><link href="{{env('APP_URL')}}/build/telnum_files/core.min.js.download" rel="preload" as="script"><link href="{{env('APP_URL')}}/build/telnum_files/swiper.min.js.download" rel="preload" as="script"><link href="{{env('APP_URL')}}/build/telnum_files/share-link.min.js.download" rel="preload" as="script"><link href="{{env('APP_URL')}}/build/telnum_files/dialog.min.js.download" rel="preload" as="script"><link href="{{env('APP_URL')}}/build/telnum_files/frontend.min.js(1).download" rel="preload" as="script"><link href="{{env('APP_URL')}}/build/telnum_files/preloaded-elements-handlers.min.js.download" rel="preload" as="script"><link href="{{env('APP_URL')}}/build/telnum_files/preloaded-modules.min.js.download" rel="preload" as="script"><link href="{{env('APP_URL')}}/build/telnum_files/jquery.sticky.min.js.download" rel="preload" as="script"> 
<style>.naturalife-panel-on  #content-overlay{ cursor: url("https://www.telina.ir/wp-content/themes/naturalife/images/close.cur"), pointer;}</style>
 
 

</head>
<body class="rtl home page-template-default page page-id-2 sticky-header sticky-header-style-2 sticky-logo header-style-1 header-sidepanel-mobile header-search-button naturalife-default-header-width naturalife-fullwidth-sticky-header-width naturalife-default-footer-width has-sub-header sticky-mobile-header elementor-default elementor-kit-2723 elementor-page elementor-page-2 e--ua-blink e--ua-chrome e--ua-webkit" data-elementor-device-mode="desktop"> 
<!-- background wrapper -->
<div id="container">
 

<div class="naturalife-top-bar">
	<div class="top-bar-inner d-flex align-items-center">
		<div class="top-bar-left d-flex align-items-center">
			<div id="nav_menu-5" class="topbar-widget widget widget_nav_menu"><div class="menu-sub-header-container"><ul id="menu-sub-header" class="menu"><li id="menu-item-2220" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2220"><a href="">درباره ما</a></li>
<li id="menu-item-888" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-888"><a href="#/blog/">بلاگ</a></li>
</ul></div></div>		</div>
		<div class="top-bar-right d-flex align-items-center">
			<div id="social_media_icons-2" class="topbar-widget widget widget_social_media_icons"><div class="naturalife-social-media-widget">
<ul class="social_media inline-list"><li class="instagram"><a class="ui-icon-instagram" target="_blank" href="https://www.instagram.com" title="Instagram" rel="nofollow"><span>اینستاگرام {{Session::get('mngindexs')->ind_ftitile}} </span></a></li><li class="linkedin"><a class="ui-icon-linkedin" target="_blank" href="https://www.linkedin.com" title="Linkedin" rel="nofollow"><span>لینکدین {{Session::get('mngindexs')->ind_ftitile}}</span></a></li><li class="telegram"><a class="ui-icon-telegram" target="_blank" href="https://t.me" title="Telegram" rel="nofollow"><span>تلگرام {{Session::get('mngindexs')->ind_ftitile}} </span></a></li></ul></div>
</div>		</div>
	</div>
</div>
 
 

<header class="top-header" data-color="dark">
				<div class="main-header-holder naturalife-dark-header dynamic-skin">
			<div class="header-elements">

				<div class="header-row first">
					<div class="header-col left">
							
			<div id="logo" class="site-logo"> 
			 <a href="" title="{{Session::get('mngindexs')->ind_ftitile}}"><img width="6657" height="2639" src="{{env('APP_URL')}}/build/telnum_files/Telina-fa-ham.png" alt="{{Session::get('mngindexs')->ind_ftitile}}" class="dark-logo logo-image lazyloaded" data-ll-status="loaded"><noscript><img width="6657" height="2639" src="{{env('APP_URL')}}/build/telnum_files/Telina-fa-همرنگ.png" alt="{{Session::get('mngindexs')->ind_ftitile}}" class="dark-logo logo-image" /></noscript><img width="6657" height="2639" src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%206657%202639&#39;%3E%3C/svg%3E" alt="{{Session::get('mngindexs')->ind_ftitile}}" class="light-logo logo-image" data-lazy-src="{{env('APP_URL')}}/build/telnum_files/Telina-fa-ham.png"><noscript><img width="6657" height="2639" src="{{env('APP_URL')}}/build/telnum_files/Telina-fa-ham.png" alt="{{Session::get('mngindexs')->ind_ftitile}}" class="light-logo logo-image" /></noscript></a> 		
			</div><!-- / end #logo -->
						
			    
					
			<nav class="main-menu-wrapper">
			<ul class="main-menu">
			
			<li id="menu-item-799" data-col-size="2" data-depth="0" class="multicolumn-2 menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children multicolumn submenu-loaded"><a href="#/#"><span>خدمات و سرویس‌ها</span></a> 

<ul class="sub-menu multicolumn-holder" style="width: 620px;">
<li>
<ul class="sub-menu">
<li id="menu-item-2648" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="#">تلفن اینترنتی و سیپ ترانک</a> </li>

</ul>
</li>

<li>
<ul class="sub-menu">
<li id="menu-item-2648" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="#">تلفن اینترنتی و سیپ ترانک</a> </li>

</ul>
</li></ul></li>



<li id="menu-item-876" data-col-size="2" data-depth="0" class="multicolumn-2 menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children multicolumn submenu-loaded"><a href="#"><span>اپراتورهای تلفن ثابت</span></a> 

<ul class="sub-menu multicolumn-holder" style="width: 620px;"><li>

<ul class="sub-menu">
<li id="menu-item-2648" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="#">تلفن اینترنتی و سیپ ترانک</a> </li>

</ul>

</li><li>
	<ul class="sub-menu">
<li id="menu-item-2648" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="#">تلفن اینترنتی و سیپ ترانک</a> </li>

</ul>
</li></ul></li>
<li id="menu-item-289" data-depth="0" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="#"><span>سوالات متداول</span></a> </li>
<li id="menu-item-287" data-depth="0" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children submenu-loaded"><a href="#"><span>ارتباط با ما</span></a> 
<ul class="sub-menu">
<li id="menu-item-1040" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="#">تماس با ما</a> </li>
<li id="menu-item-291" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="#">همکاری با ما</a> </li>
<li id="menu-item-802" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="#">صدای مشتری</a> </li>
</ul>
</li>
</ul></nav> 
				
		
			 
					</div>

					
					<div class="header-col right">
						<div id="custom_html-2" class="widget_text header-widget widget widget_custom_html"><div class="textwidget custom-html-widget"><div class="button_wrapper">
<a href="tel:+982191099000" class="button_  style-1">
<span style="font-size:18px;padding:8px 15px 8px 15px">000 000 021</span>
<span style="font-size:18px;padding:8px 15px 8px 15px">000 000 021</span></a></div>

<div class="button_wrapper">
<a href="" class="button_  style-1">
<span style="font-size:18px;padding:8px 15px 8px 15px">مشاوره رایگان</span>
<span style="font-size:18px;padding:8px 15px 8px 15px">مشاوره رایگان</span></a></div>

</div></div>			<div class="header-tools">
				<ul>
					<li class="search-button tools-icon"><a href="#/#" class="naturalife-search-button" title="جستجو"><span class="ui-icon-top-search"></span></a></li>
<li class="naturalife-sidepanel-button-holder"><a href="#/#" class="naturalife-sidepanel-button"><span></span><span></span><span></span></a></li>
				</ul>
			</div><!-- / end .nav-buttons -->
				
					</div>
				</div><!-- / .header-row.first -->


			</div><!-- / .header-elements -->
		</div><!-- / .main-header-header -->
		
				<div class="sticky-header-holder">
			<div class="header-elements">
				<div class="header-row naturalife-dark-header">
					<div class="header-col left">
							

		<div id="sticky-logo" class="site-logo">
			 <a href="#" title="{{Session::get('mngindexs')->ind_ftitile}}"><img width="4657" height="1847" src="{{env('APP_URL')}}/build/telnum_files/Telina-fa-ham-2.png" alt="{{Session::get('mngindexs')->ind_ftitile}}" class="sticky-logo lazyloaded" data-ll-status="loaded"><noscript><img width="4657" height="1847" src="{{env('APP_URL')}}/build/telnum_files/Telina-fa-ham-2.png" alt="" class="sticky-logo" /></noscript></a> 		
		</div><!-- / end #sticky-logo -->

			
					</div>

										<div class="header-col center">
											
			    
					
			<nav class="main-menu-wrapper"><ul class="main-menu"><li id="sticky-menu-item-799" data-col-size="2" data-depth="0" class="multicolumn-2 menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children multicolumn submenu-loaded"><a href="#/#"><span>خدمات و سرویس‌ها</span></a> 

<ul class="sub-menu multicolumn-holder" style="width: 620px;">
<li><ul class="sub-menu">
<li   data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="#">تلفن اینترنتی و سیپ ترانک</a> </li>

 

</ul></li><li><ul class="sub-menu"><li   data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="#">شماره 4 رقمی</a> </li>


</ul></li></ul>

</li>
<li   data-col-size="2" data-depth="0" class="multicolumn-2 menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children multicolumn submenu-loaded"><a href="#"><span>اپراتورهای تلفن ثابت</span></a> 

<ul class="sub-menu multicolumn-holder" style="width: 620px;">
<li><ul class="sub-menu">
<li   data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="#

</ul></li><li><ul class="sub-menu"><li  data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="#">شماره 4 رقمی</a> </li> 

</ul></li></ul>
</li>
<li id="sticky-menu-item-289" data-depth="0" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="#"><span>سوالات متداول</span></a> </li>
<li id="sticky-menu-item-287" data-depth="0" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children submenu-loaded"><a href="#"><span>ارتباط با ما</span></a> 
<ul class="sub-menu">
<li id="sticky-menu-item-1040" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="#">تماس با ما</a> </li>
<li id="sticky-menu-item-291" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="#">همکاری با ما</a> </li>
<li id="sticky-menu-item-802" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="#">صدای مشتری</a> </li>
</ul>
</li>
</ul></nav> 
				
		
			
					</div>
					
					<div class="header-col right">
									<div class="header-tools">
				<ul>
					<li class="search-button tools-icon"><a href="#/#" class="naturalife-search-button" title="جستجو"><span class="ui-icon-top-search"></span></a></li>
<li class="naturalife-sidepanel-button-holder"><a href="#/#" class="naturalife-sidepanel-button"><span></span><span></span><span></span></a></li>
				</ul>
			</div><!-- / end .nav-buttons -->
				
					</div>
				</div><!-- / .header-row.first --> 
			</div>
		</div><!-- / .sticky-header-header -->
			</header>


<header class="mobile-header">
	<div class="mobile-header-holder">
		<div class="header-elements">
			<div class="header-row naturalife-dark-header">
				<div class="header-col left">
						

		<div id="mobile-logo" class="mobile-logo-holder">
			 <a href="#/" title="{{Session::get('mngindexs')->ind_ftitile}}"><img width="6657" height="2639" src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%206657%202639&#39;%3E%3C/svg%3E" alt="{{Session::get('mngindexs')->ind_ftitile}}" class="mobile-logo logo-auto-height" data-lazy-src="{{env('APP_URL')}}/build/telnum_files/Telina-fa-ham.png"><noscript><img width="6657" height="2639" src="{{env('APP_URL')}}/build/telnum_files/Telina-fa-ham.png" alt="" class="mobile-logo logo-auto-height" /></noscript></a> 		
		</div><!-- / end #mobile-logo -->

 
			 
				</div>
 
				<div class="header-col right">
								<div class="header-tools">
				<ul>
					<li class="search-button tools-icon"><a href="#/#" class="naturalife-search-button" title="جستجو"><span class="ui-icon-top-search"></span></a></li>
<li class="naturalife-sidepanel-button-holder"><a href="#/#" class="naturalife-sidepanel-button"><span></span><span></span><span></span></a></li>
				</ul>
			</div><!-- / end .nav-buttons -->
				
				</div>
			</div><!-- / .header-row -->
		</div>
	</div><!-- / .mobile-header-header -->
</header>
			 

<div id="main-content">

	 

						
			
								
						<div data-elementor-type="wp-page" data-elementor-id="2" class="elementor elementor-2" data-elementor-settings="[]">
						<div class="elementor-inner">
							<div class="elementor-section-wrap">
							<section class="elementor-section elementor-top-section elementor-element elementor-element-3b00ce0 elementor-section-height-min-height elementor-section-boxed elementor-section-height-default elementor-section-items-middle default-style" data-id="3b00ce0" data-element_type="section" data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-9745646" data-id="9745646" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-50ec6af elementor-widget elementor-widget-heading" data-id="50ec6af" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h1 class="elementor-heading-title elementor-size-large">مقایسه و خرید هوشمندانه تلفن اینترنتی و مرکز تلفن ابری</h1>		</div>
				</div>
				<div class="elementor-element elementor-element-691454d elementor-widget elementor-widget-heading" data-id="691454d" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-small">خط تلفن اینترنتی و مرکز تلفن اینترنتی {{Session::get('mngindexs')->ind_ftitile}} را بررسی کنید و هوشمندانه، بهترین ها را انتخاب کنید.</h2>		</div>
				</div>
				<div class="elementor-element elementor-element-8e63824 elementor-align-center elementor-widget__width-auto elementor-widget elementor-widget-button" data-id="8e63824" data-element_type="widget" data-widget_type="button.default">
				<div class="elementor-widget-container">
					<div class="elementor-button-wrapper">
			<a href="#" class="elementor-button-link elementor-button elementor-size-sm" role="button">
						<span class="elementor-button-content-wrapper">
						<span class="elementor-button-text">خط تلفن اینترنتی</span>
		</span>
					</a>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-e0c764c elementor-align-center elementor-widget__width-auto elementor-widget elementor-widget-button" data-id="e0c764c" data-element_type="widget" data-widget_type="button.default">
				<div class="elementor-widget-container">
					<div class="elementor-button-wrapper">
			<a href="#" class="elementor-button-link elementor-button elementor-size-sm" role="button">
						<span class="elementor-button-content-wrapper">
						<span class="elementor-button-text">مرکز تلفن ابری</span>
		</span>
					</a>
		</div>
				</div>
				</div>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>
				<section class="elementor-section elementor-top-section elementor-element elementor-element-2d9e1a9 elementor-section-content-middle elementor-section-boxed elementor-section-height-default elementor-section-height-default default-style" data-id="2d9e1a9" data-element_type="section" data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-66 elementor-top-column elementor-element elementor-element-8316992" data-id="8316992" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-6f93a2c elementor-widget elementor-widget-heading" data-id="6f93a2c" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-medium">چرا باید مرکز تلفن ابری، تلفن اینترنتی و سیپ ترانک را از  {{Session::get('mngindexs')->ind_ftitile}} خریداری کنیم؟</h2>		</div>
				</div>
				<div class="elementor-element elementor-element-50b4fbf elementor-widget elementor-widget-text-editor" data-id="50b4fbf" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
								<div class="elementor-text-editor elementor-clearfix">
				<p> به عنوان اولین {{Session::get('mngindexs')->ind_ftitile}}&nbsp;ارائه دهنده تخصصی سرویس های مخابراتی نسل جدید در سراسر کشور شروع به فعالیت کرد و در همین راستا اقدام به واگذاری سرویس هایی از جمله تلفن اینترنتی، سیپ ترانک، سیپ یوزر و سرویس های ارزش افزوده مخابراتی نمود.</p><p> مرجعی {{Session::get('mngindexs')->ind_ftitile}} جهت معرفی و خرید سرویس‌های تلفنی نسل جدید می‌باشد. با کمک  {{Session::get('mngindexs')->ind_ftitile}} می‌توانید تمامی اطلاعات مورد نیازتان از جمله قیمت‌ها، نحوه سرویس‌دهی‌، مزایا، معایب و … هر اپراتور تلفن ثابت را بررسی و مقایسه نموده و هوشمندانه خرید کنید.</p>     <p>در نهایت در  {{Session::get('mngindexs')->ind_ftitile}} می‌توانید اقدام به انتخاب و خرید سرویس مورد نظر نمایید. ما با بیش از 7 هفت سال تجربه و سابقه در حوزه فنی و بازرگانی اپراتورهای ویپ کشور کنار شما هستیم تا تجربه خوشایندی از خرید و سرویس خود داشته باشید.</p>					</div>
						</div>
				</div>
				<div class="elementor-element elementor-element-5dea45e elementor-align-center elementor-widget elementor-widget-button" data-id="5dea45e" data-element_type="widget" data-widget_type="button.default">
				<div class="elementor-widget-container">
					<div class="elementor-button-wrapper">
			<a href="#" class="elementor-button-link elementor-button elementor-size-sm" role="button">
						<span class="elementor-button-content-wrapper">
						<span class="elementor-button-text">درباره {{Session::get('mngindexs')->ind_ftitile}} بیشتر بدانید</span>
		</span>
					</a>
		</div>
				</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-33 elementor-top-column elementor-element elementor-element-8464647" data-id="8464647" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-0152cb0 elementor-widget elementor-widget-image" data-id="0152cb0" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
								<div class="elementor-image">
												<img width="300" height="300" src="{{env('APP_URL')}}/build/telnum_files/TelinaLogo-1-300x300.png" class="attachment-medium size-medium lazyloaded" alt="" sizes="(max-width: 300px) 100vw, 300px" srcset="{{env('APP_URL')}}/build/telnum_files/TelinaLogo-1-300x300.png 300w, {{env('APP_URL')}}/build/telnum_files 1024w, {{env('APP_URL')}}/build/telnum_files 150w, {{env('APP_URL')}}/build/telnum_files 768w, {{env('APP_URL')}}/build/telnum_files 1536w, {{env('APP_URL')}}/build/telnum_files 2048w, {{env('APP_URL')}}/build/telnum_files 1500w, {{env('APP_URL')}}/build/telnum_files 1220w, {{env('APP_URL')}}/build/telnum_files 915w, {{env('APP_URL')}}/build/telnum_files 600w, {{env('APP_URL')}}/build/telnum_files 393w, {{env('APP_URL')}}/build/telnum_files 290w" data-ll-status="loaded"><noscript><img width="300" height="300" src="{{env('APP_URL')}}/build/telnum_files/TelinaLogo-1-300x300.png" class="attachment-medium size-medium" alt="" srcset="{{env('APP_URL')}}/build/telnum_files/TelinaLogo-1-300x300.png 300w, {{env('APP_URL')}}/build/telnum_files 1024w, {{env('APP_URL')}}/build/telnum_files 150w, {{env('APP_URL')}}/build/telnum_files 768w, {{env('APP_URL')}}/build/telnum_files 1536w, {{env('APP_URL')}}/build/telnum_files 2048w, {{env('APP_URL')}}/build/telnum_files 1500w, {{env('APP_URL')}}/build/telnum_files 1220w, {{env('APP_URL')}}/build/telnum_files 915w, {{env('APP_URL')}}/build/telnum_files 600w, {{env('APP_URL')}}/build/telnum_files 393w, {{env('APP_URL')}}/build/telnum_files 290w" sizes="(max-width: 300px) 100vw, 300px" /></noscript>														</div>
						</div>
				</div>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>
		
		
				<section class="elementor-section elementor-top-section elementor-element elementor-element-31bcef7 elementor-section-boxed elementor-section-height-default elementor-section-height-default default-style" data-id="31bcef7" data-element_type="section" data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-d650453" data-id="d650453" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-88a32d8 elementor-widget elementor-widget-heading" data-id="88a32d8" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-medium">خدمات و سرویس‌های </h2>		</div>
				</div>
				<section class="elementor-section elementor-inner-section elementor-element elementor-element-b01aaa0 elementor-section-boxed elementor-section-height-default elementor-section-height-default default-style" data-id="b01aaa0" data-element_type="section" data-settings="{&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-33 elementor-inner-column elementor-element elementor-element-55e0228" data-id="55e0228" data-element_type="column" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-fd74f54 elementor-view-default elementor-widget elementor-widget-icon" data-id="fd74f54" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="fab fa-mixcloud"></i>			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-8ca1bc4 elementor-widget elementor-widget-rt-heading" data-id="8ca1bc4" data-element_type="widget" data-widget_type="rt-heading.default">
				<div class="elementor-widget-container">
			<div class="rt-heading-wrapper text-center">
						<a href="#" target="_self"><h2 class="   rt-heading">مرکز تلفن ابری</h2></a>
					</div>		</div>
				</div>
				<div class="elementor-element elementor-element-a4e999a elementor-widget elementor-widget-text-editor" data-id="a4e999a" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
								<div class="elementor-text-editor elementor-clearfix">
				<p>بدون نیاز به سخت افزار و نرم افزار</p>					</div>
						</div>
				</div>
				<div class="elementor-element elementor-element-eb0c080 elementor-align-center elementor-widget elementor-widget-button" data-id="eb0c080" data-element_type="widget" data-widget_type="button.default">
				<div class="elementor-widget-container">
					<div class="elementor-button-wrapper">
			<a href="#" class="elementor-button-link elementor-button elementor-size-sm" role="button">
						<span class="elementor-button-content-wrapper">
						<span class="elementor-button-text">خرید مرکز تلفن</span>
		</span>
					</a>
		</div>
				</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-33 elementor-inner-column elementor-element elementor-element-e1d410d" data-id="e1d410d" data-element_type="column" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-4d44902 elementor-view-default elementor-widget elementor-widget-icon" data-id="4d44902" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="fas fa-link"></i>			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-bd8ec63 elementor-widget elementor-widget-rt-heading" data-id="bd8ec63" data-element_type="widget" data-widget_type="rt-heading.default">
				<div class="elementor-widget-container">
			<div class="rt-heading-wrapper text-center">
						<a href="#" target="_self"><h2 class="   rt-heading">خط تلفن اینترنتی</h2></a>
					</div>		</div>
				</div>
				<div class="elementor-element elementor-element-d4c8dc5 elementor-widget elementor-widget-text-editor" data-id="d4c8dc5" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
								<div class="elementor-text-editor elementor-clearfix">
				<p>خرید شماره تلفن رند بصورت آنلاین</p>					</div>
						</div>
				</div>
				<div class="elementor-element elementor-element-1c3b68e elementor-align-center elementor-widget elementor-widget-button" data-id="1c3b68e" data-element_type="widget" data-widget_type="button.default">
				<div class="elementor-widget-container">
					<div class="elementor-button-wrapper">
			<a href="#" class="elementor-button-link elementor-button elementor-size-sm" role="button">
						<span class="elementor-button-content-wrapper">
						<span class="elementor-button-text">خرید سیپ ترانک</span>
		</span>
					</a>
		</div>
				</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-33 elementor-inner-column elementor-element elementor-element-d13d127" data-id="d13d127" data-element_type="column" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-ef9a95c elementor-view-default elementor-widget elementor-widget-icon" data-id="ef9a95c" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="fas fa-assistive-listening-systems"></i>			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-77fbc09 elementor-widget elementor-widget-rt-heading" data-id="77fbc09" data-element_type="widget" data-widget_type="rt-heading.default">
				<div class="elementor-widget-container">
			<div class="rt-heading-wrapper text-center">
						<a href="#" target="_self"><h2 class="   rt-heading">پیام صوتی</h2></a>
					</div>		</div>
				</div>
				<div class="elementor-element elementor-element-f8d2ecc elementor-widget elementor-widget-text-editor" data-id="f8d2ecc" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
								<div class="elementor-text-editor elementor-clearfix">
				<p>صدای کسب و کار خود را به دیگران برسانید</p>					</div>
						</div>
				</div>
				<div class="elementor-element elementor-element-69ff25c elementor-align-center elementor-widget elementor-widget-button" data-id="69ff25c" data-element_type="widget" data-widget_type="button.default">
				<div class="elementor-widget-container">
					<div class="elementor-button-wrapper">
			<a href="#" class="elementor-button-link elementor-button elementor-size-sm" role="button">
						<span class="elementor-button-content-wrapper">
						<span class="elementor-button-text">خرید پیام صوتی</span>
		</span>
					</a>
		</div>
				</div>
				</div>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>
				<section class="elementor-section elementor-inner-section elementor-element elementor-element-94709bf elementor-section-boxed elementor-section-height-default elementor-section-height-default default-style" data-id="94709bf" data-element_type="section" data-settings="{&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-33 elementor-inner-column elementor-element elementor-element-d2ca49f" data-id="d2ca49f" data-element_type="column" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-b64022f elementor-view-default elementor-widget elementor-widget-icon" data-id="b64022f" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="fas fa-globe-asia"></i>			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-15802b1 elementor-widget elementor-widget-rt-heading" data-id="15802b1" data-element_type="widget" data-widget_type="rt-heading.default">
				<div class="elementor-widget-container">
			<div class="rt-heading-wrapper text-center">
						<a href="#" target="_self"><h2 class="   rt-heading">شماره ملی و استانی</h2></a>
					</div>		</div>
				</div>
				<div class="elementor-element elementor-element-ab1a572 elementor-widget elementor-widget-text-editor" data-id="ab1a572" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
								<div class="elementor-text-editor elementor-clearfix">
				<p>شماره چهار رقمی بدون کد شهر و استان</p>					</div>
						</div>
				</div>
				<div class="elementor-element elementor-element-82f81dd elementor-align-center elementor-widget elementor-widget-button" data-id="82f81dd" data-element_type="widget" data-widget_type="button.default">
				<div class="elementor-widget-container">
					<div class="elementor-button-wrapper">
			<a href="#" class="elementor-button-link elementor-button elementor-size-sm" role="button">
						<span class="elementor-button-content-wrapper">
						<span class="elementor-button-text">خرید شماره ملی</span>
		</span>
					</a>
		</div>
				</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-33 elementor-inner-column elementor-element elementor-element-f78379b" data-id="f78379b" data-element_type="column" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-fcc9191 elementor-view-default elementor-widget elementor-widget-icon" data-id="fcc9191" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="far fa-star"></i>			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-84ac6b1 elementor-widget elementor-widget-rt-heading" data-id="84ac6b1" data-element_type="widget" data-widget_type="rt-heading.default">
				<div class="elementor-widget-container">
			<div class="rt-heading-wrapper text-center">
						<a href="#" target="_self"><h2 class="   rt-heading">شماره تول فری</h2></a>
					</div>		</div>
				</div>
				<div class="elementor-element elementor-element-c85e8d6 elementor-widget elementor-widget-text-editor" data-id="c85e8d6" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
								<div class="elementor-text-editor elementor-clearfix">
				<p>میزبان هزینه تماس مشتریانتان باشید</p>					</div>
						</div>
				</div>
				<div class="elementor-element elementor-element-1d0a82b elementor-align-center elementor-widget elementor-widget-button" data-id="1d0a82b" data-element_type="widget" data-widget_type="button.default">
				<div class="elementor-widget-container">
					<div class="elementor-button-wrapper">
			<a href="#" class="elementor-button-link elementor-button elementor-size-sm" role="button">
						<span class="elementor-button-content-wrapper">
						<span class="elementor-button-text">خرید شماره تول فری</span>
		</span>
					</a>
		</div>
				</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-33 elementor-inner-column elementor-element elementor-element-0c0c5fa" data-id="0c0c5fa" data-element_type="column" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-78bd866 elementor-view-default elementor-widget elementor-widget-icon" data-id="78bd866" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="fas fa-search-dollar"></i>			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-2e85a67 elementor-widget elementor-widget-rt-heading" data-id="2e85a67" data-element_type="widget" data-widget_type="rt-heading.default">
				<div class="elementor-widget-container">
			<div class="rt-heading-wrapper text-center">
						<a href="#" target="_self"><h2 class="   rt-heading">شماره هوشمند IN</h2></a>
					</div>		</div>
				</div>
				<div class="elementor-element elementor-element-1f20a1d elementor-widget elementor-widget-text-editor" data-id="1f20a1d" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
								<div class="elementor-text-editor elementor-clearfix">
				<p>با خط تلفن کسب درآمد کنید</p>					</div>
						</div>
				</div>
				<div class="elementor-element elementor-element-fc7c16d elementor-align-center elementor-widget elementor-widget-button" data-id="fc7c16d" data-element_type="widget" data-widget_type="button.default">
				<div class="elementor-widget-container">
					<div class="elementor-button-wrapper">
			<a href="#" class="elementor-button-link elementor-button elementor-size-sm" role="button">
						<span class="elementor-button-content-wrapper">
						<span class="elementor-button-text">خرید شماره هوشمند</span>
		</span>
					</a>
		</div>
				</div>
				</div>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>
				<section class="elementor-section elementor-top-section elementor-element elementor-element-c1cf406 elementor-section-boxed elementor-section-height-default elementor-section-height-default default-style" data-id="c1cf406" data-element_type="section" data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-6f4c4b1" data-id="6f4c4b1" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<section class="elementor-section elementor-inner-section elementor-element elementor-element-f77402b elementor-section-boxed elementor-section-height-default elementor-section-height-default default-style" data-id="f77402b" data-element_type="section" data-settings="{&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-20 elementor-inner-column elementor-element elementor-element-5cbcb18" data-id="5cbcb18" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-c4d10e7 elementor-position-top elementor-vertical-align-top elementor-widget elementor-widget-image-box" data-id="c4d10e7" data-element_type="widget" data-widget_type="image-box.default">
				<div class="elementor-widget-container">
			<div class="elementor-image-box-wrapper"><figure class="elementor-image-box-img"><img width="128" height="128" src="{{env('APP_URL')}}/build/telnum_files/dollar.png" class="elementor-animation-float attachment-full size-full lazyloaded" alt="مکالمه ارزان درون شبکه و برون شبکه" data-ll-status="loaded"><noscript><img width="128" height="128" src="{{env('APP_URL')}}/build/telnum_files/dollar.png" class="elementor-animation-float attachment-full size-full" alt="مکالمه ارزان درون شبکه و برون شبکه" /></noscript></figure><div class="elementor-image-box-content"><h3 class="elementor-image-box-title">مکالمات ارزان</h3></div></div>		</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-20 elementor-inner-column elementor-element elementor-element-68971b1" data-id="68971b1" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-588283b elementor-position-top elementor-vertical-align-top elementor-widget elementor-widget-image-box" data-id="588283b" data-element_type="widget" data-widget_type="image-box.default">
				<div class="elementor-widget-container">
			<div class="elementor-image-box-wrapper"><figure class="elementor-image-box-img"><img width="128" height="128" src="{{env('APP_URL')}}/build/telnum_files/clock.png" class="elementor-animation-float attachment-full size-full lazyloaded" alt="تحویل در کمترین زمان" data-ll-status="loaded"><noscript><img width="128" height="128" src="{{env('APP_URL')}}/build/telnum_files/clock.png" class="elementor-animation-float attachment-full size-full" alt="تحویل در کمترین زمان" /></noscript></figure><div class="elementor-image-box-content"><h3 class="elementor-image-box-title">تحویل در سریعترین زمان</h3></div></div>		</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-20 elementor-inner-column elementor-element elementor-element-a8d2280" data-id="a8d2280" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-4a519a0 elementor-position-top elementor-vertical-align-top elementor-widget elementor-widget-image-box" data-id="4a519a0" data-element_type="widget" data-widget_type="image-box.default">
				<div class="elementor-widget-container">
			<div class="elementor-image-box-wrapper"><figure class="elementor-image-box-img"><img width="128" height="128" src="{{env('APP_URL')}}/build/telnum_files/iran.png" class="elementor-animation-float attachment-full size-full lazyloaded" alt="ارائه سرویس در سراسر کشور" data-ll-status="loaded"><noscript><img width="128" height="128" src="{{env('APP_URL')}}/build/telnum_files/iran.png" class="elementor-animation-float attachment-full size-full" alt="ارائه سرویس در سراسر کشور" /></noscript></figure><div class="elementor-image-box-content"><h3 class="elementor-image-box-title">ارائه در سراسر کشور</h3></div></div>		</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-20 elementor-inner-column elementor-element elementor-element-f94af8a" data-id="f94af8a" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-df3cec3 elementor-position-top elementor-vertical-align-top elementor-widget elementor-widget-image-box" data-id="df3cec3" data-element_type="widget" data-widget_type="image-box.default">
				<div class="elementor-widget-container">
			<div class="elementor-image-box-wrapper"><figure class="elementor-image-box-img"><img width="128" height="128" src="{{env('APP_URL')}}/build/telnum_files/maps.png" class="elementor-animation-float attachment-full size-full lazyloaded" alt="امکان جابجایی جغرافیایی" data-ll-status="loaded"><noscript><img width="128" height="128" src="{{env('APP_URL')}}/build/telnum_files/maps.png" class="elementor-animation-float attachment-full size-full" alt="امکان جابجایی جغرافیایی" /></noscript></figure><div class="elementor-image-box-content"><h3 class="elementor-image-box-title">امکان جایجایی در لحظه</h3></div></div>		</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-20 elementor-inner-column elementor-element elementor-element-f844728" data-id="f844728" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-06e9b93 elementor-position-top elementor-vertical-align-top elementor-widget elementor-widget-image-box" data-id="06e9b93" data-element_type="widget" data-widget_type="image-box.default">
				<div class="elementor-widget-container">
			<div class="elementor-image-box-wrapper"><figure class="elementor-image-box-img"><img width="128" height="128" src="{{env('APP_URL')}}/build/telnum_files/number.png" class="elementor-animation-float attachment-full size-full lazyloaded" alt="شماره اختصاصی و تحت مالکیت" data-ll-status="loaded"><noscript><img width="128" height="128" src="{{env('APP_URL')}}/build/telnum_files/number.png" class="elementor-animation-float attachment-full size-full" alt="شماره اختصاصی و تحت مالکیت" /></noscript></figure><div class="elementor-image-box-content"><h3 class="elementor-image-box-title">مالکیت دائمی شماره</h3></div></div>		</div>
				</div>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>
				<section class="elementor-section elementor-inner-section elementor-element elementor-element-6e6a03e elementor-section-boxed elementor-section-height-default elementor-section-height-default default-style" data-id="6e6a03e" data-element_type="section" data-settings="{&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-20 elementor-inner-column elementor-element elementor-element-c36c68e" data-id="c36c68e" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-b741b6d elementor-position-top elementor-vertical-align-top elementor-widget elementor-widget-image-box" data-id="b741b6d" data-element_type="widget" data-widget_type="image-box.default">
				<div class="elementor-widget-container">
			<div class="elementor-image-box-wrapper"><figure class="elementor-image-box-img"><img width="128" height="128" src="{{env('APP_URL')}}/build/telnum_files/call.png" class="elementor-animation-float attachment-full size-full lazyloaded" alt="تماس با کلیه خطوط مخابراتی دنیا" data-ll-status="loaded"><noscript><img width="128" height="128" src="{{env('APP_URL')}}/build/telnum_files/call.png" class="elementor-animation-float attachment-full size-full" alt="تماس با کلیه خطوط مخابراتی دنیا" /></noscript></figure><div class="elementor-image-box-content"><h3 class="elementor-image-box-title">تماس با همه خطوط مخابراتی</h3></div></div>		</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-20 elementor-inner-column elementor-element elementor-element-6bd83d7" data-id="6bd83d7" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-87664cd elementor-position-top elementor-vertical-align-top elementor-widget elementor-widget-image-box" data-id="87664cd" data-element_type="widget" data-widget_type="image-box.default">
				<div class="elementor-widget-container">
			<div class="elementor-image-box-wrapper"><figure class="elementor-image-box-img"><img width="128" height="128" src="{{env('APP_URL')}}/build/telnum_files/pc.png" class="elementor-animation-float attachment-full size-full lazyloaded" alt="بدون نیاز به سخت افزار" data-ll-status="loaded"><noscript><img width="128" height="128" src="{{env('APP_URL')}}/build/telnum_files/pc.png" class="elementor-animation-float attachment-full size-full" alt="بدون نیاز به سخت افزار" /></noscript></figure><div class="elementor-image-box-content"><h3 class="elementor-image-box-title">عدم نیازمندی سخت افزاری</h3></div></div>		</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-20 elementor-inner-column elementor-element elementor-element-94404dd" data-id="94404dd" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-cfb44df elementor-position-top elementor-vertical-align-top elementor-widget elementor-widget-image-box" data-id="cfb44df" data-element_type="widget" data-widget_type="image-box.default">
				<div class="elementor-widget-container">
			<div class="elementor-image-box-wrapper"><figure class="elementor-image-box-img"><img width="128" height="128" src="{{env('APP_URL')}}/build/telnum_files/business.png" class="elementor-animation-float attachment-full size-full lazyloaded" alt="راهکارهای سازمانی و یکپارچه" data-ll-status="loaded"><noscript><img width="128" height="128" src="{{env('APP_URL')}}/build/telnum_files/business.png" class="elementor-animation-float attachment-full size-full" alt="راهکارهای سازمانی و یکپارچه" /></noscript></figure><div class="elementor-image-box-content"><h3 class="elementor-image-box-title">راهکارهای یکپارچه و سازمانی</h3></div></div>		</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-20 elementor-inner-column elementor-element elementor-element-405cc3b" data-id="405cc3b" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-6024276 elementor-position-top elementor-vertical-align-top elementor-widget elementor-widget-image-box" data-id="6024276" data-element_type="widget" data-widget_type="image-box.default">
				<div class="elementor-widget-container">
			<div class="elementor-image-box-wrapper"><figure class="elementor-image-box-img"><img width="128" height="128" src="{{env('APP_URL')}}/build/telnum_files/24.png" class="elementor-animation-float attachment-full size-full lazyloaded" alt="پشتیبانی شبانه روزی" data-ll-status="loaded"><noscript><img width="128" height="128" src="{{env('APP_URL')}}/build/telnum_files/uploads/24.png" class="elementor-animation-float attachment-full size-full" alt="پشتیبانی شبانه روزی" /></noscript></figure><div class="elementor-image-box-content"><h3 class="elementor-image-box-title">پشتیبانی شبانه روزی</h3></div></div>		</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-20 elementor-inner-column elementor-element elementor-element-58a0d59" data-id="58a0d59" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-4b4766e elementor-position-top elementor-vertical-align-top elementor-widget elementor-widget-image-box" data-id="4b4766e" data-element_type="widget" data-widget_type="image-box.default">
				<div class="elementor-widget-container">
			<div class="elementor-image-box-wrapper"><figure class="elementor-image-box-img"><img width="128" height="128" src="{{env('APP_URL')}}/build/telnum_files/payment.png" class="elementor-animation-float attachment-full size-full lazyloaded" alt="قابلیت شارژ آنلاین" data-ll-status="loaded"><noscript><img width="128" height="128" src="{{env('APP_URL')}}/build/telnum_files/payment.png" class="elementor-animation-float attachment-full size-full" alt="قابلیت شارژ آنلاین" /></noscript></figure><div class="elementor-image-box-content"><h3 class="elementor-image-box-title">قابلیت شارژ آنلاین</h3></div></div>		</div>
				</div>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>
				<section class="elementor-section elementor-top-section elementor-element elementor-element-9b6d849 elementor-section-height-min-height elementor-section-boxed elementor-section-height-default elementor-section-items-middle default-style" data-id="9b6d849" data-element_type="section" data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
							<div class="elementor-background-overlay"></div>
							<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-a7ac1f8" data-id="a7ac1f8" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-c456c1e elementor-widget elementor-widget-heading" data-id="c456c1e" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-medium">بهبود ارتباطات کسب و کار شما بزرگترین دستاورد  {{Session::get('mngindexs')->ind_ftitile}} خواهد بود.</h2>		</div>
				</div>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>
				<section class="elementor-section elementor-top-section elementor-element elementor-element-7abfddc elementor-section-boxed elementor-section-height-default elementor-section-height-default default-style" data-id="7abfddc" data-element_type="section" data-settings="{&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-a400470" data-id="a400470" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-1f76cd5 elementor-widget elementor-widget-heading" data-id="1f76cd5" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-medium">مقایسه تعرفه خطوط تلفن ثابت</h2>		</div>
				</div>
				<section class="elementor-section elementor-inner-section elementor-element elementor-element-2e18ad5 elementor-hidden-tablet elementor-hidden-phone elementor-section-boxed elementor-section-height-default elementor-section-height-default default-style" data-id="2e18ad5" data-element_type="section" data-settings="{&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-100 elementor-inner-column elementor-element elementor-element-466420c" data-id="466420c" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-2a66796 elementor-widget elementor-widget-spacer" data-id="2a66796" data-element_type="widget" data-widget_type="spacer.default">
				<div class="elementor-widget-container">
					<div class="elementor-spacer">
			<div class="elementor-spacer-inner"></div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-ccf6641 elementor-widget elementor-widget-rt-pricing-table" data-id="ccf6641" data-element_type="widget" data-widget_type="rt-pricing-table.default">
				<div class="elementor-widget-container">
			<div id="" class="pricing_table compare " data-rt-animation-group="group"><div id="" class="table_wrap features " data-rt-animate="animate" data-rt-animation-type="fadeInDown"><ul style="top: 89px;"><li class="caption empty"></li><li class="price empty"></li><li class="features_start_position">شماره معمولی</li><li>داخل شبکه</li><li>ثابت داخل استان</li><li>ثابت خارج استان</li><li>موبایل</li></ul></div><div id="" class="table_wrap highlight " data-rt-animate="animate" data-rt-animation-type="fadeInDown"><ul>
		<li class="caption"><div class="d-lg-none"></div>
			<div class="title">پیشگامان
	<small>
		سرشماره 9109 
	</small>
	</div>
		</li>
		
		<li class="price"><div class="d-lg-none"></div>
			<div>
				<span> </span>
			</div>
		</li>
		<li class="start_position"><div class="d-lg-none">شماره معمولی</div>100,000</li><li><div class="d-lg-none">داخل شبکه</div>3,5</li><li><div class="d-lg-none">ثابت داخل استان</div>4,5</li><li><div class="d-lg-none">ثابت خارج استان</div>33</li><li><div class="d-lg-none">موبایل</div>62,5</li></ul></div><div id="" class="table_wrap  " data-rt-animate="animate" data-rt-animation-type="fadeInDown"><ul>
		<li class="caption"><div class="d-lg-none"></div>
			<div class="title">شاتل
	<small>
		سرشماره 9100 و 9132 
	</small>
	</div>
		</li>
		
		<li class="price"><div class="d-lg-none"></div>
			<div>
				<span> </span>
			</div>
		</li>
		<li class="start_position"><div class="d-lg-none">شماره معمولی</div>200,000</li><li><div class="d-lg-none">داخل شبکه</div>30</li><li><div class="d-lg-none">ثابت داخل استان</div>4</li><li><div class="d-lg-none">ثابت خارج استان</div>30</li><li><div class="d-lg-none">موبایل</div>57</li></ul></div><div id="" class="table_wrap highlight " data-rt-animate="animate" data-rt-animation-type="fadeInDown"><ul>
		<li class="caption"><div class="d-lg-none"></div>
			<div class="title">آسیاتک
	<small>
		سرشماره 9101 و 9130 
	</small>
	</div>
		</li>
		
		<li class="price"><div class="d-lg-none"></div>
			<div>
				<span> </span>
			</div>
		</li>
		<li class="start_position"><div class="d-lg-none">شماره معمولی</div>200,000</li><li><div class="d-lg-none">داخل شبکه</div>0</li><li><div class="d-lg-none">ثابت داخل استان</div>4,5</li><li><div class="d-lg-none">ثابت خارج استان</div>33</li><li><div class="d-lg-none">موبایل</div>62,5</li></ul></div><div id="" class="table_wrap  " data-rt-animate="animate" data-rt-animation-type="fadeInDown"><ul>
		<li class="caption"><div class="d-lg-none"></div>
			<div class="title">صبانت
	<small>
		سرشماره 9102 
	</small>
	</div>
		</li>
		
		<li class="price"><div class="d-lg-none"></div>
			<div>
				<span> </span>
			</div>
		</li>
		<li class="start_position"><div class="d-lg-none">شماره معمولی</div>59,900</li><li><div class="d-lg-none">داخل شبکه</div>2</li><li><div class="d-lg-none">ثابت داخل استان</div>3,9</li><li><div class="d-lg-none">ثابت خارج استان</div>29,9</li><li><div class="d-lg-none">موبایل</div>40</li></ul></div></div>		</div>
				</div>
				<div class="elementor-element elementor-element-809726d elementor-widget elementor-widget-spacer" data-id="809726d" data-element_type="widget" data-widget_type="spacer.default">
				<div class="elementor-widget-container">
					<div class="elementor-spacer">
			<div class="elementor-spacer-inner"></div>
		</div>
				</div>
				</div>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>
				<div class="elementor-element elementor-element-9fd790b elementor-align-center elementor-widget elementor-widget-button" data-id="9fd790b" data-element_type="widget" data-widget_type="button.default">
				<div class="elementor-widget-container">
					<div class="elementor-button-wrapper">
			<a href="#" class="elementor-button-link elementor-button elementor-size-sm" role="button">
						<span class="elementor-button-content-wrapper">
						<span class="elementor-button-text">جزئیات بیشتر و خرید</span>
		</span>
					</a>
		</div>
				</div>
				</div>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>
				<section class="elementor-section elementor-top-section elementor-element elementor-element-f8222a4 elementor-section-boxed elementor-section-height-default elementor-section-height-default default-style" data-id="f8222a4" data-element_type="section" data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-93177b1" data-id="93177b1" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-5af7228 elementor-widget elementor-widget-heading" data-id="5af7228" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-medium">مشتریان ما چه می‌گویند؟</h2>		</div>
				</div>
				<div class="elementor-element elementor-element-71d179e elementor-widget elementor-widget-rt-testimonial-carousel" data-id="71d179e" data-element_type="widget" data-widget_type="rt-testimonial-carousel.default">
				<div class="elementor-widget-container">
			
				<div id="testimonial-dynamicID-203248" class="rt-carousel carousel-holder testimonial-carousel testimonials center boxed-carousel rt_lightbox_gallery rt-carousel-loaded" data-item-width="3" data-nav="true" data-dots="" data-margin="15" data-autoplay="" data-timeout="" data-thumbnails="false" data-boxed="true" data-min-height="" data-padding="0" data-loop="true" data-tablet-item-width="" data-mobile-item-width="">
					<div class="owl-carousel owl-rtl owl-loaded owl-drag">
						
					<div class="owl-stage-outer owl-height" style="height: 277px;"><div class="owl-stage" style="transform: translate3d(1086px, 0px, 0px); transition: all 0s ease 0s; width: 3256px;"><div class="owl-item cloned" style="width: 346.667px; margin-left: 15px;"><div class="boxed"><div class="testimonial item">

<div class="text">
	<span class="quote">“</span>
		<p> باعث شد هزینه تماس های خروجی ما تا 30 درصد کاهش داشته باشد. همچنین هزینه های سخت افزار پروژه ما بسیار کاهش یافت.</p>
	
</div>



	<div class="client-info">
			<h6>دکتر پوست فروشان</h6>
					
							
			<span>آزمایشگاه پردیس</span>	
	</div>
</div>
</div></div><div class="owl-item cloned" style="width: 346.667px; margin-left: 15px;"><div class="boxed"><div class="testimonial item">

<div class="text">
	<span class="quote">“</span>
		<p>   به من کمک کرد بهترین سرویس را با بهترین قیمت تهیه کنم{{Session::get('mngindexs')->ind_ftitile}}. بابت پشتیبانی هم خیالمون راحته و خیلی راحت از سرویس ها استفاده می کنیم.</p>
	
</div>



	<div class="client-info">
			<h6>رضا رویایی</h6>
					
							
			<span>پول تیکت</span>	
	</div>
</div>
</div></div><div class="owl-item cloned" style="width: 346.667px; margin-left: 15px;"><div class="boxed"><div class="testimonial item">

<div class="text">
	<span class="quote">“</span>
		<p>یک اتفاق مهم در  {{Session::get('mngindexs')->ind_ftitile}} عدم تاکید بر استفاده از یک اپراتور خاص بود و این باعث شد ما با چشم باز همه اپراتورها را مقایسه کنیم و در نهایت بهترین را انتخاب کنیم.</p>
	
</div>



	<div class="client-info">
			<h6>سید هادی ملک</h6>
					
							
			<span>اقامت 24</span>	
	</div>
</div>
</div></div><div class="owl-item active" style="width: 346.667px; margin-left: 15px;"><div class="boxed"><div class="testimonial item">

<div class="text">
	<span class="quote">“</span>
		<p>  باعث شد هزینه تماس های خروجی ما تا 30 درصد کاهش داشته باشد. همچنین هزینه های سخت افزار پروژه ما بسیار کاهش یافت.</p>
	
</div>



	<div class="client-info">
			<h6>دکتر پوست فروشان</h6>
					
							
			<span>آزمایشگاه پردیس</span>	
	</div>
</div>
</div></div><div class="owl-item active" style="width: 346.667px; margin-left: 15px;"><div class="boxed"><div class="testimonial item">

<div class="text">
	<span class="quote">“</span>
		<p> به من کمک کرد بهترین سرویس را با بهترین قیمت تهیه کنم {{Session::get('mngindexs')->ind_ftitile}}. بابت پشتیبانی هم خیالمون راحته و خیلی راحت از سرویس ها استفاده می کنیم.</p>
	
</div>



	<div class="client-info">
			<h6>رضا رویایی</h6>
					
							
			<span>پول تیکت</span>	
	</div>
</div>
</div></div><div class="owl-item active" style="width: 346.667px; margin-left: 15px;"><div class="boxed"><div class="testimonial item">

<div class="text">
	<span class="quote">“</span>
		<p>یک اتفاق مهم در  {{Session::get('mngindexs')->ind_ftitile}} عدم تاکید بر استفاده از یک اپراتور خاص بود و این باعث شد ما با چشم باز همه اپراتورها را مقایسه کنیم و در نهایت بهترین را انتخاب کنیم.</p>
	
</div>



	<div class="client-info">
			<h6>سید هادی ملک</h6>
					
							
			<span>اقامت 24</span>	
	</div>
</div>
</div></div><div class="owl-item cloned active" style="width: 346.667px; margin-left: 15px;"><div class="boxed"><div class="testimonial item">

<div class="text">
	<span class="quote">“</span>
		<p>  باعث شد هزینه تماس های خروجی ما تا 30 درصد کاهش داشته باشد. همچنین هزینه های سخت افزار پروژه ما بسیار کاهش یافت.</p>
	
</div>



	<div class="client-info">
			<h6>دکتر پوست فروشان</h6>
					
							
			<span>آزمایشگاه پردیس</span>	
	</div>
</div>
</div></div><div class="owl-item cloned" style="width: 346.667px; margin-left: 15px;"><div class="boxed"><div class="testimonial item">

<div class="text">
	<span class="quote">“</span>
		<p>   {{Session::get('mngindexs')->ind_ftitile}}ا به من کمک کرد بهترین سرویس را با بهترین قیمت تهیه کنم. بابت پشتیبانی هم خیالمون راحته و خیلی راحت از سرویس ها استفاده می کنیم.</p>
	
</div>



	<div class="client-info">
			<h6>رضا رویایی</h6>
					
							
			<span>پول تیکت</span>	
	</div>
</div>
</div></div><div class="owl-item cloned" style="width: 346.667px; margin-left: 15px;"><div class="boxed"><div class="testimonial item">

<div class="text">
	<span class="quote">“</span>
		<p>یک اتفاق مهم در  {{Session::get('mngindexs')->ind_ftitile}} عدم تاکید بر استفاده از یک اپراتور خاص بود و این باعث شد ما با چشم باز همه اپراتورها را مقایسه کنیم و در نهایت بهترین را انتخاب کنیم.</p>
	
</div>



	<div class="client-info">
			<h6>سید هادی ملک</h6>
					
							
			<span>اقامت 24</span>	
	</div>
</div>
</div></div></div></div><div class="owl-nav disabled"><div class="owl-prev"><span class="ui-icon-angle-right"></span></div><div class="owl-next"><span class="ui-icon-angle-left"></span></div></div></div>
					
					
				</div>
					</div>
				</div>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>
				<section class="elementor-section elementor-top-section elementor-element elementor-element-de356aa elementor-section-height-min-height elementor-section-content-middle elementor-section-boxed elementor-section-height-default elementor-section-items-middle default-style" data-id="de356aa" data-element_type="section" data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
							<div class="elementor-background-overlay"></div>
							<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-16 elementor-top-column elementor-element elementor-element-799063e" data-id="799063e" data-element_type="column">
			<div class="elementor-column-wrap">
							<div class="elementor-widget-wrap">
								</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-66 elementor-top-column elementor-element elementor-element-ab5a9ad" data-id="ab5a9ad" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-13d3493 elementor-widget elementor-widget-heading" data-id="13d3493" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-medium">چرا تلینا؟</h2>		</div>
				</div>
				<div class="elementor-element elementor-element-28f8e0b elementor-widget elementor-widget-text-editor" data-id="28f8e0b" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
								<div class="elementor-text-editor elementor-clearfix">
				<p style="text-align: justify;">بدون شک این مهم غیر قابل چشم پوشی است که شماره تلفن باید یکبار انتخاب شود، تغییر شماره تلفن یا سرویس‌دهنده ضعف بزرگی برای کسب و کارها می‌باشد. پس بایستی اولین انتخاب، آخرین و بهترین انتخابتان باشد.</p><p style="text-align: justify;">مجموعه {{Session::get('mngindexs')->ind_ftitile}} تا کنون به چند صد کسب و کار مختلف سرویس ارائه نموده است بنابراین می تواند مشاور خوبی برای شما و انتخاب هایتان باشد. رضایتمندی و گسترش کسب و کار شما بزرگترین دستاورد ما خواهد بود. ما همواره آماده ارائه مشاوره به شما هستیم.</p>					</div>
						</div>
				</div>
				<div class="elementor-element elementor-element-355241a elementor-align-center elementor-widget elementor-widget-button" data-id="355241a" data-element_type="widget" data-widget_type="button.default">
				<div class="elementor-widget-container">
					<div class="elementor-button-wrapper">
			<a href="#" class="elementor-button-link elementor-button elementor-size-sm" role="button">
						<span class="elementor-button-content-wrapper">
						<span class="elementor-button-text">تماس با ما</span>
		</span>
					</a>
		</div>
				</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-16 elementor-top-column elementor-element elementor-element-fe1fd4b" data-id="fe1fd4b" data-element_type="column">
			<div class="elementor-column-wrap">
							<div class="elementor-widget-wrap">
								</div>
					</div>
		</div>
								</div>
					</div>
		</section>
			  
				<section class="elementor-section elementor-top-section elementor-element elementor-element-222e89b elementor-section-content-middle elementor-section-boxed elementor-section-height-default elementor-section-height-default default-style" data-id="222e89b" data-element_type="section" id="123" data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-25 elementor-top-column elementor-element elementor-element-0262d47" data-id="0262d47" data-element_type="column">
			<div class="elementor-column-wrap">
							<div class="elementor-widget-wrap">
								</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-25 elementor-top-column elementor-element elementor-element-8fe7bb5" data-id="8fe7bb5" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-17a0193 elementor-widget elementor-widget-rt-heading" data-id="17a0193" data-element_type="widget" data-widget_type="rt-heading.default">
				<div class="elementor-widget-container">
			<div class="rt-heading-wrapper text-center">
						<h4 class="   rt-heading">درخواست مشاوره و خرید</h4>
					</div>		</div>
				</div>
				<div class="elementor-element elementor-element-ab01b86 elementor-widget elementor-widget-text-editor" data-id="ab01b86" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
								<div class="elementor-text-editor elementor-clearfix">
				<p style="text-align: center;">جهت کسب اطلاعات بیشتر و درخواست خرید، فرم روبرو را تکمیل نمایید.<br>همکاران ما در اسرع وقت با شما تماس خواهند گرفت.</p>					</div>
						</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-25 elementor-top-column elementor-element elementor-element-dd64e4c" data-id="dd64e4c" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-17db1ec elementor-button-align-stretch elementor-widget elementor-widget-form" data-id="17db1ec" data-element_type="widget" data-settings="{&quot;step_next_label&quot;:&quot;Next&quot;,&quot;step_previous_label&quot;:&quot;Previous&quot;,&quot;button_width&quot;:&quot;100&quot;,&quot;step_type&quot;:&quot;number_text&quot;,&quot;step_icon_shape&quot;:&quot;circle&quot;}" data-widget_type="form.default">
				<div class="elementor-widget-container">
					<form class="elementor-form" action="{{env('APP_URL')}}/" method="post"  >
	 
			 
 <input type="hidden" name="_token" value="{{ csrf_token() }}">

							<input type="hidden" name="queried_id" value="2">
			
			<div class="elementor-form-fields-wrapper elementor-labels-above">
								<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-100 elementor-field-required">
					<input size="1" type="text" name="form_fields[name]" id="form-field-name" class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="نام و نام خانوادگی" required="required" aria-required="true">				</div>
								<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-100">
					<input size="1" type="email" name="form_fields[email]" id="form-field-email" class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="ایمیل">				</div>
								<div class="elementor-field-type-tel elementor-field-group elementor-column elementor-field-group-tel elementor-col-100 elementor-field-required">
					<input size="1" type="tel" name="form_fields[tel]" id="form-field-tel" class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="شماره تماس" required="required" aria-required="true" pattern="[0-9()#&amp;+*-=.]+" title="Only numbers and phone characters (#, -, *, etc) are accepted.">				</div>
								<div class="elementor-field-type-textarea elementor-field-group elementor-column elementor-field-group-message elementor-col-100 elementor-field-required">
					<textarea class="elementor-field-textual elementor-field  elementor-size-sm" name="form_fields[message]" id="form-field-message" rows="4" placeholder="پیام شما" required="required" aria-required="true"></textarea>				</div>
								<div class="elementor-field-group elementor-column elementor-field-type-submit elementor-col-100 e-form__buttons">
					<button type="submit" class="elementor-button elementor-size-sm">
						<span>
															<span class=" elementor-button-icon">
																										</span>
																						<span class="elementor-button-text">ثبت درخواست</span>
													</span>
					</button>
				</div>
			</div>
		</form>
				</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-25 elementor-top-column elementor-element elementor-element-966b88b" data-id="966b88b" data-element_type="column">
			<div class="elementor-column-wrap">
							<div class="elementor-widget-wrap">
								</div>
					</div>
		</div>
								</div>
					</div>
		</section>
						</div>
						</div>
					</div>
									

				

				

	 
 
</div> 
 
 
 
<!-- footer -->
<footer id="footer" class="footer">
	<div class="footer-contents"><section class="footer-widgets content-row footer footer_contents fullwidth"><div class="content-row-wrapper row default">
	<div id="footer-column-1" class="col col-12 col-lg-6 col-sm-6 featured-col widgets_holder">
		<div class="column-inner">
<div id="text-2" class="footer_widget widget widget_text">			<div class="textwidget"><p><img class="aligncenter wp-image-284 size-full" src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%20176%20100&#39;%3E%3C/svg%3E" alt="{{Session::get('mngindexs')->ind_ftitile}}" width="176" height="100" data-lazy-src="{{env('APP_URL')}}/build/telnum_files/Telina_Logo.png"><noscript><img class="aligncenter wp-image-284 size-full" src="{{env('APP_URL')}}/build/telnum_files/Telina_Logo.png" alt="{{Session::get('mngindexs')->ind_ftitile}}" width="176" height="100" /></noscript></p>
<p style="text-align: justify;"> مرجعی جهت معرفی و خرید سرویس {{Session::get('mngindexs')->ind_ftitile}} ‌های تلفنی نسل جدید می‌باشد. با کمک {{Session::get('mngindexs')->ind_ftitile}} می‌توانید تمامی اطلاعات مورد نیازتان از جمله قیمت‌، نحوه سرویس‌دهی‌، مزایا، معایب و … هر اپراتور تلفن ثابت را بررسی و مقایسه نموده و هوشمندانه خرید کنید.</p>
</div>
		</div>		</div>
	</div>
	<div id="footer-column-2" class="col col-12 col-lg-2 col-sm-2 widgets_holder">
		<div class="column-inner">
<div id="nav_menu-4" class="footer_widget widget widget_nav_menu"><h5>دسترسی سریع</h5><div class="menu-%d9%85%d9%86%d9%88%db%8c-%d9%81%d9%88%d8%aa%d8%b1-container"><ul id="menu-%d9%85%d9%86%d9%88%db%8c-%d9%81%d9%88%d8%aa%d8%b1" class="menu"><li id="menu-item-1791" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-1791"><a href="#">بلاگ {{Session::get('mngindexs')->ind_ftitile}} </a></li>
<li id="menu-item-807" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-807"><a href="#">سوالات متداول</a></li>
<li id="menu-item-806" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-806"><a href="#">درباره ما</a></li>
<li id="menu-item-2201" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2201"><a href="#">همکاری با ما</a></li>
<li id="menu-item-3247" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3247"><a href="#">صدای مشتری</a></li>
</ul></div></div>		</div>
	</div>
	<div id="footer-column-3" class="col col-12 col-lg-4 col-sm-4 widgets_holder">
		<div class="column-inner">
<div id="popular_posts-4" class="footer_widget widget widget_popular_posts"><h5>مطالب پربازدید</h5>
				<div>
					
						<a class="title" href="#" title="پیش شماره 9100 و 9132 متعلق به کجاست؟" rel="bookmark">پیش شماره 9100 و 9132 متعلق به کجاست؟</a>
						<span class="meta">1398/07/05  | <span class="comment_number"><span class="icon-comment-empty"></span><a href="#" title="179 دیدگاه‌" class="comment_link">179</a></span></span>
					
				</div>
			
				<div>
					
						<a class="title" href="#" title="پیش شماره 9 تهران کجاست؟" rel="bookmark">پیش شماره 9 تهران کجاست؟</a>
						<span class="meta">1398/09/19  | <span class="comment_number"><span class="icon-comment-empty"></span><a href="#" title="66 دیدگاه‌" class="comment_link">66</a></span></span>
					
				</div>
			
				<div>
					
						<a class="title" href="#" title="تلفن ثابت و سیپ ترانک آریان رسانه پارس – آرین رسانه" rel="bookmark">تلفن ثابت و سیپ ترانک آریان رسانه پارس – آرین رسانه</a>
						<span class="meta">1398/03/12  | <span class="comment_number"><span class="icon-comment-empty"></span><a href="#" title="20 دیدگاه‌" class="comment_link">20</a></span></span>
					
				</div>
			</div>		</div>
	</div>
</div></section>
<div class="content-row footer_contents footer-info-bar fullwidth"><div class="content-row-wrapper d-lg-flex align-items-center default text-sm-center default"><div class="copyright"> {{Session::get('mngindexs')->ind_fcopy}} </div><div class="footer-info-right"><ul class="social_media inline-list"><li class="instagram"><a class="ui-icon-instagram" target="_blank" href="https://www.instagram.com/" title="Instagram" rel="nofollow"><span>اینستاگرام {{Session::get('mngindexs')->ind_ftitile}} </span></a></li><li class="linkedin"><a class="ui-icon-linkedin" target="_blank" href="https://www.linkedin.com/" title="Linkedin" rel="nofollow"><span>لینکدین {{Session::get('mngindexs')->ind_ftitile}} </span></a></li><li class="telegram"><a class="ui-icon-telegram" target="_blank" href="https://t.me/" title="Telegram" rel="nofollow"><span>تلگرام {{Session::get('mngindexs')->ind_ftitile}} </span></a></li></ul></div></div></div></div></footer><!-- / end #footer -->  
   
</div><!-- / end #container --> 


<div class="rt-popup rt-popup-search">
	<div class="rt-popup-content-wrapper d-flex align-items-center">
		<button class="rt-popup-close ui-icon-exit"></button>
		<div class="rt-popup-content default-style">

			<form method="get" action="#" class="wp-search-form rt_form">
				<ul>
					<li><input type="text" class="search showtextback" placeholder="کلیدواژه خود را تایپ کنید..." name="s"><span class="search-icon ui-icon-search-1"></span></li>
				</ul>
							</form>

		</div>
	</div>
</div>	


	<div class="rt-popup rt-popup-share">
		<div class="rt-popup-content-wrapper d-flex align-items-center">
			<button class="rt-popup-close ui-icon-exit"></button>
			<div class="rt-popup-content default-style">
				<div class="naturalife-share-content">				
					<ul></ul>
				</div>
			</div>
		</div>
	</div>
	
	
	 

<div class="naturalife-panel-holder ps-container ps-theme-default" data-ps-id="3c23f3b3-57bc-c2c5-2725-6765d6556e4f">
	<div class="naturalife-panel-wrapper">
		<div class="naturalife-panel-contents">
		 
						
	
				<nav class="mobile-nav">
					<ul id="mobile-navigation" class="menu"><li id="mobile-menu-item-799" data-col-size="2" data-depth="0" class="multicolumn-2 menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children multicolumn"><a href="https://www.telina.ir/#"><span>خدمات و سرویس‌ها</span></a> 
<ul class="sub-menu">
<li id="mobile-menu-item-2648" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/fixed-line/">تلفن اینترنتی و سیپ ترانک</a> </li>
<li id="mobile-menu-item-1759" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/cloud-pbx/">مرکز تلفن ابری</a> </li>
<li id="mobile-menu-item-2267" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/telephone-counseling/">پلتفرم مشاوره تلفنی</a> </li>
<li id="mobile-menu-item-1825" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/cloud-crm/">سی آر ام ابری</a> </li>
<li id="mobile-menu-item-1995" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/phone-web/">تماس رایگان وب</a> </li>
<li id="mobile-menu-item-1754" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/voice-broadcast/">ارسال پیام صوتی</a> </li>
<li id="mobile-menu-item-2033" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/softphone/">سافت فون رایگان</a> </li>
<li id="mobile-menu-item-1757" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/national-line/">شماره 4 رقمی</a> </li>
<li id="mobile-menu-item-1758" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/toll-free/">شماره تول فری</a> </li>
<li id="mobile-menu-item-1761" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/in-line/">شماره هوشمند آی ان</a> </li>
<li id="mobile-menu-item-2397" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/voice-recording/">ضبط تلفن گویا</a> </li>
<li id="mobile-menu-item-2419" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/fax/">فکس اینترنتی</a> </li>
<li id="mobile-menu-item-2804" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/ivr-payment/">درگاه پرداخت تلفنی</a> </li>
<li id="mobile-menu-item-2965" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/secure-call/">تماس امن</a> </li>
</ul>
</li>
<li id="mobile-menu-item-876" data-col-size="2" data-depth="0" class="multicolumn-2 menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children multicolumn"><a href="https://www.telina.ir/operators/"><span>اپراتورهای تلفن ثابت</span></a> 
<ul class="sub-menu">
<li id="mobile-menu-item-1039" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/compare/">مقایسه همه اپراتورها</a> </li>
<li id="mobile-menu-item-1113" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/tci/">مخابرات ایران</a> </li>
<li id="mobile-menu-item-878" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/pishgaman/">پیشگامان</a> </li>
<li id="mobile-menu-item-877" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/asiatech/">آسیاتک</a> </li>
<li id="mobile-menu-item-884" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/fanava/">فن آوا</a> </li>
<li id="mobile-menu-item-880" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/shatel/">شاتل</a> </li>
<li id="mobile-menu-item-2101" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/parsian/">ارتباطات ثابت پارسیان</a> </li>
<li id="mobile-menu-item-885" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/laser/">لایزر</a> </li>
<li id="mobile-menu-item-881" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/sabanet/">صبانت</a> </li>
<li id="mobile-menu-item-886" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/mobinnet/">مبین نت</a> </li>
<li id="mobile-menu-item-883" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/fanap/">فناپ تلکام</a> </li>
<li id="mobile-menu-item-2093" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/mabna/">مبنا تلکام</a> </li>
<li id="mobile-menu-item-879" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/respina/">رسپینا (نکسفون)</a> </li>
<li id="mobile-menu-item-882" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/farzanegan/">فرزانگان (وینکس)</a> </li>
</ul>
</li>
<li id="mobile-menu-item-289" data-depth="0" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/faq/"><span>سوالات متداول</span></a> </li>
<li id="mobile-menu-item-287" data-depth="0" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children"><a href="https://www.telina.ir/contact/"><span>ارتباط با ما</span></a> 
<ul class="sub-menu">
<li id="mobile-menu-item-1040" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/contact/">تماس با ما</a> </li>
<li id="mobile-menu-item-291" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/cooperation/">همکاری با ما</a> </li>
<li id="mobile-menu-item-802" data-depth="1" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="https://www.telina.ir/voc/">صدای مشتری</a> </li>
</ul>
</li>
</ul>    
				</nav>

						
		<div class="side-panel-widgets-desktop">
</div>
<div class="side-panel-widgets-mobile">
</div>
<div class="side-panel-widgets-global">
</div>
		</div>
	</div>
<div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 0px;"><div class="ps-scrollbar-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps-scrollbar-y-rail" style="top: 0px; right: 400px;"><div class="ps-scrollbar-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div>

<div id="content-overlay"></div>
<div class="naturalife-panel-background"></div>
<div class="naturalife-panel-close ui-icon-exit"></div>
<link rel="stylesheet" id="e-animations-css" href="{{env('APP_URL')}}/build/telnum_files/animations.min.css" type="text/css" media="all">
<script type="text/javascript" id="rocket-browser-checker-js-after">
"use strict";var _createClass=function(){function defineProperties(target,props){for(var i=0;i<props.length;i++){var descriptor=props[i];descriptor.enumerable=descriptor.enumerable||!1,descriptor.configurable=!0,"value"in descriptor&&(descriptor.writable=!0),Object.defineProperty(target,descriptor.key,descriptor)}}return function(Constructor,protoProps,staticProps){return protoProps&&defineProperties(Constructor.prototype,protoProps),staticProps&&defineProperties(Constructor,staticProps),Constructor}}();function _classCallCheck(instance,Constructor){if(!(instance instanceof Constructor))throw new TypeError("Cannot call a class as a function")}var RocketBrowserCompatibilityChecker=function(){function RocketBrowserCompatibilityChecker(options){_classCallCheck(this,RocketBrowserCompatibilityChecker),this.passiveSupported=!1,this._checkPassiveOption(this),this.options=!!this.passiveSupported&&options}return _createClass(RocketBrowserCompatibilityChecker,[{key:"_checkPassiveOption",value:function(self){try{var options={get passive(){return!(self.passiveSupported=!0)}};window.addEventListener("test",null,options),window.removeEventListener("test",null,options)}catch(err){self.passiveSupported=!1}}},{key:"initRequestIdleCallback",value:function(){!1 in window&&(window.requestIdleCallback=function(cb){var start=Date.now();return setTimeout(function(){cb({didTimeout:!1,timeRemaining:function(){return Math.max(0,50-(Date.now()-start))}})},1)}),!1 in window&&(window.cancelIdleCallback=function(id){return clearTimeout(id)})}},{key:"isDataSaverModeOn",value:function(){return"connection"in navigator&&!0===navigator.connection.saveData}},{key:"supportsLinkPrefetch",value:function(){var elem=document.createElement("link");return elem.relList&&elem.relList.supports&&elem.relList.supports("prefetch")&&window.IntersectionObserver&&"isIntersecting"in IntersectionObserverEntry.prototype}},{key:"isSlowConnection",value:function(){return"connection"in navigator&&"effectiveType"in navigator.connection&&("2g"===navigator.connection.effectiveType||"slow-2g"===navigator.connection.effectiveType)}}]),RocketBrowserCompatibilityChecker}();
</script>
<script type="text/javascript" id="rocket-preload-links-js-extra">
/* <![CDATA[ */
var RocketPreloadLinksConfig = {"excludeUris":"\/(.+\/)?feed\/?.+\/?|\/(?:.+\/)?embed\/|\/(index\\.php\/)?wp\\-json(\/.*|$)|\/wp-admin\/|\/logout\/|\/wp-login.php","usesTrailingSlash":"1","imageExt":"jpg|jpeg|gif|png|tiff|bmp|webp|avif","fileExt":"jpg|jpeg|gif|png|tiff|bmp|webp|avif|php|pdf|html|htm","siteUrl":"https:\/\/www.telina.ir","onHoverDelay":"100","rateThrottle":"3"};
/* ]]> */
</script>
<script type="text/javascript" id="rocket-preload-links-js-after">
(function() {
"use strict";var r="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(e){return typeof e}:function(e){return e&&"function"==typeof Symbol&&e.constructor===Symbol&&e!==Symbol.prototype?"symbol":typeof e},e=function(){function i(e,t){for(var n=0;n<t.length;n++){var i=t[n];i.enumerable=i.enumerable||!1,i.configurable=!0,"value"in i&&(i.writable=!0),Object.defineProperty(e,i.key,i)}}return function(e,t,n){return t&&i(e.prototype,t),n&&i(e,n),e}}();function i(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}var t=function(){function n(e,t){i(this,n),this.browser=e,this.config=t,this.options=this.browser.options,this.prefetched=new Set,this.eventTime=null,this.threshold=1111,this.numOnHover=0}return e(n,[{key:"init",value:function(){!this.browser.supportsLinkPrefetch()||this.browser.isDataSaverModeOn()||this.browser.isSlowConnection()||(this.regex={excludeUris:RegExp(this.config.excludeUris,"i"),images:RegExp(".("+this.config.imageExt+")$","i"),fileExt:RegExp(".("+this.config.fileExt+")$","i")},this._initListeners(this))}},{key:"_initListeners",value:function(e){-1<this.config.onHoverDelay&&document.addEventListener("mouseover",e.listener.bind(e),e.listenerOptions),document.addEventListener("mousedown",e.listener.bind(e),e.listenerOptions),document.addEventListener("touchstart",e.listener.bind(e),e.listenerOptions)}},{key:"listener",value:function(e){var t=e.target.closest("a"),n=this._prepareUrl(t);if(null!==n)switch(e.type){case"mousedown":case"touchstart":this._addPrefetchLink(n);break;case"mouseover":this._earlyPrefetch(t,n,"mouseout")}}},{key:"_earlyPrefetch",value:function(t,e,n){var i=this,r=setTimeout(function(){if(r=null,0===i.numOnHover)setTimeout(function(){return i.numOnHover=0},1e3);else if(i.numOnHover>i.config.rateThrottle)return;i.numOnHover++,i._addPrefetchLink(e)},this.config.onHoverDelay);t.addEventListener(n,function e(){t.removeEventListener(n,e,{passive:!0}),null!==r&&(clearTimeout(r),r=null)},{passive:!0})}},{key:"_addPrefetchLink",value:function(i){return this.prefetched.add(i.href),new Promise(function(e,t){var n=document.createElement("link");n.rel="prefetch",n.href=i.href,n.onload=e,n.onerror=t,document.head.appendChild(n)}).catch(function(){})}},{key:"_prepareUrl",value:function(e){if(null===e||"object"!==(void 0===e?"undefined":r(e))||!1 in e||-1===["http:","https:"].indexOf(e.protocol))return null;var t=e.href.substring(0,this.config.siteUrl.length),n=this._getPathname(e.href,t),i={original:e.href,protocol:e.protocol,origin:t,pathname:n,href:t+n};return this._isLinkOk(i)?i:null}},{key:"_getPathname",value:function(e,t){var n=t?e.substring(this.config.siteUrl.length):e;return n.startsWith("/")||(n="/"+n),this._shouldAddTrailingSlash(n)?n+"/":n}},{key:"_shouldAddTrailingSlash",value:function(e){return this.config.usesTrailingSlash&&!e.endsWith("/")&&!this.regex.fileExt.test(e)}},{key:"_isLinkOk",value:function(e){return null!==e&&"object"===(void 0===e?"undefined":r(e))&&(!this.prefetched.has(e.href)&&e.origin===this.config.siteUrl&&-1===e.href.indexOf("?")&&-1===e.href.indexOf("#")&&!this.regex.excludeUris.test(e.href)&&!this.regex.images.test(e.href))}}],[{key:"run",value:function(){"undefined"!=typeof RocketPreloadLinksConfig&&new n(new RocketBrowserCompatibilityChecker({capture:!0,passive:!0}),RocketPreloadLinksConfig).init()}}]),n}();t.run();
}());
</script>
<script type="text/javascript" id="naturalife-scripts-js-extra">
/* <![CDATA[ */
var rtframework_params = {"ajax_url":"https:\/\/www.telina.ir\/wp-admin\/admin-ajax.php","rttheme_template_dir":"https:\/\/www.telina.ir\/wp-content\/themes\/naturalife","popup_blocker_message":"\u0644\u0637\u0641\u0627 \u0628\u0644\u0627\u06a9 \u06a9\u0646\u0646\u062f\u0647 \u067e\u0627\u067e \u0622\u067e \u062e\u0648\u062f \u0631\u0627 \u063a\u06cc\u0631 \u0641\u0639\u0627\u0644 \u0648 \u0631\u0648\u06cc \u0628\u0627\u0632 \u06a9\u0631\u062f\u0646 \u0644\u06cc\u0646\u06a9 \u062f\u0648\u0628\u0627\u0631\u0647 \u06a9\u0644\u06cc\u06a9 \u06a9\u0646\u06cc\u062f.","wpml_lang":"","theme_slug":"naturalife","home_url":"https:\/\/www.telina.ir"};
/* ]]> */
</script>
<script type="text/javascript" src="{{env('APP_URL')}}/build/telnum_files/app-min.js.download" id="naturalife-scripts-js"></script>
<script type="text/javascript" src="{{env('APP_URL')}}/build/telnum_files/wp-embed.min.js.download" id="wp-embed-js"></script>
<script type="text/javascript" src="{{env('APP_URL')}}/build/telnum_files/imagesloaded.min.js.download" id="imagesloaded-js"></script>
<script type="text/javascript" src="{{env('APP_URL')}}/build/telnum_files/webpack-pro.runtime.min.js.download" id="elementor-pro-webpack-runtime-js"></script>
<script type="text/javascript" src="{{env('APP_URL')}}/build/telnum_files/webpack.runtime.min.js.download" id="elementor-webpack-runtime-js"></script>
<script type="text/javascript" src="{{env('APP_URL')}}/build/telnum_files/frontend-modules.min.js.download" id="elementor-frontend-modules-js"></script>
<script type="text/javascript" id="elementor-pro-frontend-js-before">
var ElementorProFrontendConfig = {"ajaxurl":"https:\/\/www.telina.ir\/wp-admin\/admin-ajax.php","nonce":"c24c9d056b","urls":{"assets":"https:\/\/www.telina.ir\/wp-content\/plugins\/elementor-pro\/assets\/","rest":"https:\/\/www.telina.ir\/wp-json\/"},"i18n":{"toc_no_headings_found":"No headings were found on this page."},"shareButtonsNetworks":{"facebook":{"title":"Facebook","has_counter":true},"twitter":{"title":"Twitter"},"google":{"title":"Google+","has_counter":true},"linkedin":{"title":"LinkedIn","has_counter":true},"pinterest":{"title":"Pinterest","has_counter":true},"reddit":{"title":"Reddit","has_counter":true},"vk":{"title":"VK","has_counter":true},"odnoklassniki":{"title":"OK","has_counter":true},"tumblr":{"title":"Tumblr"},"digg":{"title":"Digg"},"skype":{"title":"Skype"},"stumbleupon":{"title":"StumbleUpon","has_counter":true},"mix":{"title":"Mix"},"telegram":{"title":"Telegram"},"pocket":{"title":"Pocket","has_counter":true},"xing":{"title":"XING","has_counter":true},"whatsapp":{"title":"WhatsApp"},"email":{"title":"Email"},"print":{"title":"Print"}},"facebook_sdk":{"lang":"fa_IR","app_id":""},"lottie":{"defaultAnimationUrl":"https:\/\/www.telina.ir\/wp-content\/plugins\/elementor-pro\/modules\/lottie\/assets\/animations\/default.json"}};
</script>
<script type="text/javascript" src="{{env('APP_URL')}}/build/telnum_files/frontend.min.js.download" id="elementor-pro-frontend-js"></script>
<script type="text/javascript" src="{{env('APP_URL')}}/build/telnum_files/waypoints.min.js.download" id="elementor-waypoints-js"></script>
<script type="text/javascript" src="{{env('APP_URL')}}/build/telnum_files/core.min.js.download" id="jquery-ui-core-js"></script>
<script type="text/javascript" src="{{env('APP_URL')}}/build/telnum_files/swiper.min.js.download" id="swiper-js"></script>
<script type="text/javascript" src="{{env('APP_URL')}}/build/telnum_files/share-link.min.js.download" id="share-link-js"></script>
<script type="text/javascript" src="{{env('APP_URL')}}/build/telnum_files/dialog.min.js.download" id="elementor-dialog-js"></script>
<script type="text/javascript" id="elementor-frontend-js-before">
var elementorFrontendConfig = {"environmentMode":{"edit":false,"wpPreview":false,"isScriptDebug":false},"i18n":{"shareOnFacebook":"\u0627\u0634\u062a\u0631\u0627\u06a9 \u06af\u0630\u0627\u0631\u06cc \u062f\u0631 Facebook","shareOnTwitter":"\u0627\u0634\u062a\u0631\u0627\u06a9 \u06af\u0630\u0627\u0631\u06cc \u062f\u0631 Twitter","pinIt":"\u067e\u06cc\u0646 \u06a9\u0646\u06cc\u062f","download":"\u062f\u0627\u0646\u0644\u0648\u062f","downloadImage":"\u062f\u0627\u0646\u0644\u0648\u062f \u062a\u0635\u0648\u06cc\u0631","fullscreen":"\u062a\u0645\u0627\u0645\u200c\u0635\u0641\u062d\u0647","zoom":"\u0628\u0632\u0631\u06af\u0646\u0645\u0627\u06cc\u06cc","share":"\u0627\u0634\u062a\u0631\u0627\u06a9 \u06af\u0630\u0627\u0631\u06cc","playVideo":"\u067e\u062e\u0634 \u0648\u06cc\u062f\u06cc\u0648","previous":"\u0642\u0628\u0644\u06cc","next":"\u0628\u0639\u062f\u06cc","close":"\u0628\u0633\u062a\u0646"},"is_rtl":true,"breakpoints":{"xs":0,"sm":480,"md":768,"lg":1025,"xl":1440,"xxl":1600},"responsive":{"breakpoints":{"mobile":{"label":"\u0645\u0648\u0628\u0627\u06cc\u0644","value":767,"default_value":767,"direction":"max","is_enabled":true},"mobile_extra":{"label":"Mobile Extra","value":880,"default_value":880,"direction":"max","is_enabled":false},"tablet":{"label":"\u062a\u0628\u0644\u062a","value":1024,"default_value":1024,"direction":"max","is_enabled":true},"tablet_extra":{"label":"Tablet Extra","value":1200,"default_value":1200,"direction":"max","is_enabled":false},"laptop":{"label":"\u0644\u067e \u062a\u0627\u067e","value":1366,"default_value":1366,"direction":"max","is_enabled":false},"widescreen":{"label":"\u0635\u0641\u062d\u0647 \u0639\u0631\u06cc\u0636 (Widescreen)","value":2400,"default_value":2400,"direction":"min","is_enabled":false}}},"version":"3.4.4","is_static":false,"experimentalFeatures":{"e_import_export":true,"landing-pages":true,"elements-color-picker":true,"admin-top-bar":true,"form-submissions":true},"urls":{"assets":"https:\/\/www.telina.ir\/wp-content\/plugins\/elementor\/assets\/"},"settings":{"page":[],"editorPreferences":[]},"kit":{"active_breakpoints":["viewport_mobile","viewport_tablet"],"global_image_lightbox":"yes","lightbox_enable_counter":"yes","lightbox_enable_fullscreen":"yes","lightbox_enable_zoom":"yes","lightbox_enable_share":"yes","lightbox_title_src":"title","lightbox_description_src":"description"},"post":{"id":2,"title":"%D8%AA%D9%84%DB%8C%D9%86%D8%A7%20%E2%80%93%20%D9%85%D9%82%D8%A7%DB%8C%D8%B3%D9%87%20%D9%88%20%D8%AE%D8%B1%DB%8C%D8%AF%20%D8%A2%D9%86%D9%84%D8%A7%DB%8C%D9%86%20%D8%AA%D9%84%D9%81%D9%86%20%D8%A7%DB%8C%D9%86%D8%AA%D8%B1%D9%86%D8%AA%DB%8C%D8%8C%20%D8%B3%DB%8C%D9%BE%20%D8%AA%D8%B1%D8%A7%D9%86%DA%A9%20%D9%88%20%D8%AA%D9%84%D9%81%D9%86%20%D8%AB%D8%A7%D8%A8%D8%AA%20%D9%88%DB%8C%D9%BE%20%D8%A7%D8%B2%20%D9%85%D8%B9%D8%AA%D8%A8%D8%B1%D8%AA%D8%B1%DB%8C%D9%86%20%D8%A7%D9%BE%D8%B1%D8%A7%D8%AA%D9%88%D8%B1%D9%87%D8%A7%20%D8%AF%D8%B1%20%D8%B3%D8%B1%D8%A7%D8%B3%D8%B1%20%DA%A9%D8%B4%D9%88%D8%B1","excerpt":"","featuredImage":false}};
</script>
<script type="text/javascript" src="{{env('APP_URL')}}/build/telnum_files/frontend.min.js(1).download" id="elementor-frontend-js"></script>
<script type="text/javascript" src="{{env('APP_URL')}}/build/telnum_files/preloaded-elements-handlers.min.js.download" id="pro-preloaded-elements-handlers-js"></script>
<script type="text/javascript" src="{{env('APP_URL')}}/build/telnum_files/preloaded-modules.min.js.download" id="preloaded-modules-js"></script>
<script type="text/javascript" src="{{env('APP_URL')}}/build/telnum_files/jquery.sticky.min.js.download" id="e-sticky-js"></script>
 
<!-- This website is like a Rocket, isn't it? Performance optimized by WP Rocket. Learn more: https://wp-rocket.me - Debug: cached@1631954140 --><span id="elementor-device-mode" class="elementor-screen-only"></span><span id="elementor-device-mode" class="elementor-screen-only"></span><svg style="display: none;" class="e-font-icon-svg-symbols"></svg></body></html>