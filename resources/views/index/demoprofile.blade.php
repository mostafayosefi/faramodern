
 @extends('index.layout')


@section('title')

	<title>{{Session::get('mngindexs')->ind_ftitile}} | دمو پروفایل</title> 
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
 
<link data-minify="1" rel='stylesheet' id='elementor-post-52-css'  href='{{env('APP_URL')}}/build/telnum_files/post-52.css?ver=1631767702' type='text/css' media='all' />

<link rel="stylesheet" id="elementor-icons-shared-0-css" href="{{env('APP_URL')}}/build/telnum_files/fontawesome.min.css" type="text/css" media="all">
<link data-minify="1" rel="stylesheet" id="elementor-icons-fa-brands-css" href="{{env('APP_URL')}}/build/telnum_files/brands.min.css" type="text/css" media="all">
<link data-minify="1" rel="stylesheet" id="elementor-icons-fa-solid-css" href="{{env('APP_URL')}}/build/telnum_files/solid.min.css" type="text/css" media="all">
<link data-minify="1" rel="stylesheet" id="elementor-icons-fa-regular-css" href="{{env('APP_URL')}}/build/telnum_files/regular.min.css" type="text/css" media="all">
<script type="text/javascript" src="{{env('APP_URL')}}/build/telnum_files/jquery.min.js.download" id="jquery-core-js"></script>
<script type="text/javascript" src="{{env('APP_URL')}}/build/telnum_files/jquery-migrate.min.js.download" id="jquery-migrate-js"></script>
<script type="text/javascript" src="{{env('APP_URL')}}/build/telnum_files/v4-shims.min.js.download" id="font-awesome-4-shim-js"></script>



<link data-minify="1" rel='stylesheet' id='elementor-post-2723-css'  href='{{env('APP_URL')}}/build/telnum_files/post-2723.css?ver=1631722801' type='text/css' media='all' />

<link data-minify="1" rel='stylesheet' id='elementor-post-2792-css'  href='{{env('APP_URL')}}/build/telnum_files/post-2792.css?ver=1631770344' type='text/css' media='all' />




<link data-minify="1" rel='stylesheet' id='elementor-post-245-css'  href='{{env('APP_URL')}}/build/telnum_files/post-245.css?ver=1631732859' type='text/css' media='all' />


@stop





@section('body') 
 
 
 
 

<!-- main contents -->
<div id="main-content">

	 

						
			
								
						<div data-elementor-type="wp-page" data-elementor-id="2792" class="elementor elementor-2792" data-elementor-settings="[]">
						<div class="elementor-inner">
							<div class="elementor-section-wrap">
							<section class="elementor-section elementor-top-section elementor-element elementor-element-5bfeff3 elementor-section-content-middle elementor-section-boxed elementor-section-height-default elementor-section-height-default default-style" data-id="5bfeff3" data-element_type="section" data-settings="{&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-591d897" data-id="591d897" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-7bb751b elementor-widget elementor-widget-rt-heading" data-id="7bb751b" data-element_type="widget" data-widget_type="rt-heading.default">
				<div class="elementor-widget-container">
			<div class="rt-heading-wrapper">
						<H1 class="   rt-heading" >درگاه پرداخت تلفنی (تله پرداخت)</H1>
					</div>		</div>
				</div>
				<div class="elementor-element elementor-element-3944c67 elementor-widget elementor-widget-text-editor" data-id="3944c67" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
								<div class="elementor-text-editor elementor-clearfix">
				<p>در سامانه پرداخت تلفنی مبتنی بر IVR دیگر نیازی نیست تا از شعب بانک و یا POS فروشگاهی استفاده نمائید؛ فقط با یک شماره کارت 16 رقمی (عضوشتاب) و رمز دوم اینترنتی می توانید با هر شماره تلفنی پرداخت انجام دهید.</p><p>تصور کنید چقدر از افرادی که تمایل به پرداخت و خرید از محصولات شما را دارند دسترسی به بانک، اینترنت و ATM ندارند! راهکار چیست؟ بصورت معمول تلفن (موبایل و ثابت) در دسترس همگان قرار دارد و شما بدین ترتیب می توانید محصولات و خدمات خود را فروخته و از طریق سیستم پرداخت تلفنی دریافت وجه نمایید.</p><p>به عبارت دیگر تله پرداخت ابزار پرداخت تلفنی کسب و کار شماست.</p>					</div>
						</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-e484d50" data-id="e484d50" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-1e4d158 elementor-widget elementor-widget-image" data-id="1e4d158" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
								<div class="elementor-image">
												<img width="626" height="469" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20626%20469'%3E%3C/svg%3E" class="attachment-large size-large" alt="درگاه پرداخت تلفنی" data-lazy-srcset="https://www.telina.ir/wp-content/uploads/ivr-payment.jpg 626w, https://www.telina.ir/wp-content/uploads/ivr-payment-300x225.jpg 300w, https://www.telina.ir/wp-content/uploads/ivr-payment-313x234.jpg 313w, https://www.telina.ir/wp-content/uploads/ivr-payment-600x450.jpg 600w, https://www.telina.ir/wp-content/uploads/ivr-payment-393x294.jpg 393w, https://www.telina.ir/wp-content/uploads/ivr-payment-290x217.jpg 290w" data-lazy-sizes="(max-width: 626px) 100vw, 626px" data-lazy-src="https://www.telina.ir/wp-content/uploads/ivr-payment.jpg" /><noscript><img width="626" height="469" src="https://www.telina.ir/wp-content/uploads/ivr-payment.jpg" class="attachment-large size-large" alt="درگاه پرداخت تلفنی" srcset="https://www.telina.ir/wp-content/uploads/ivr-payment.jpg 626w, https://www.telina.ir/wp-content/uploads/ivr-payment-300x225.jpg 300w, https://www.telina.ir/wp-content/uploads/ivr-payment-313x234.jpg 313w, https://www.telina.ir/wp-content/uploads/ivr-payment-600x450.jpg 600w, https://www.telina.ir/wp-content/uploads/ivr-payment-393x294.jpg 393w, https://www.telina.ir/wp-content/uploads/ivr-payment-290x217.jpg 290w" sizes="(max-width: 626px) 100vw, 626px" /></noscript>														</div>
						</div>
				</div>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>


				<section class="elementor-section elementor-top-section elementor-element elementor-element-a45e332 elementor-section-boxed elementor-section-height-default elementor-section-height-default default-style" data-id="a45e332" data-element_type="section" data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;shape_divider_bottom&quot;:&quot;mountains&quot;,&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
					<div class="elementor-shape elementor-shape-bottom" data-negative="false">
			<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1000 100" preserveAspectRatio="none">
	<path class="elementor-shape-fill" opacity="0.33" d="M473,67.3c-203.9,88.3-263.1-34-320.3,0C66,119.1,0,59.7,0,59.7V0h1000v59.7 c0,0-62.1,26.1-94.9,29.3c-32.8,3.3-62.8-12.3-75.8-22.1C806,49.6,745.3,8.7,694.9,4.7S492.4,59,473,67.3z"/>
	<path class="elementor-shape-fill" opacity="0.66" d="M734,67.3c-45.5,0-77.2-23.2-129.1-39.1c-28.6-8.7-150.3-10.1-254,39.1 s-91.7-34.4-149.2,0C115.7,118.3,0,39.8,0,39.8V0h1000v36.5c0,0-28.2-18.5-92.1-18.5C810.2,18.1,775.7,67.3,734,67.3z"/>
	<path class="elementor-shape-fill" d="M766.1,28.9c-200-57.5-266,65.5-395.1,19.5C242,1.8,242,5.4,184.8,20.6C128,35.8,132.3,44.9,89.9,52.5C28.6,63.7,0,0,0,0 h1000c0,0-9.9,40.9-83.6,48.1S829.6,47,766.1,28.9z"/>
</svg>		</div>
					<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-71c294d" data-id="71c294d" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-70ca113 elementor-widget elementor-widget-rt-heading" data-id="70ca113" data-element_type="widget" data-widget_type="rt-heading.default">
				<div class="elementor-widget-container">
			<div class="rt-heading-wrapper text-center">
						<H5 class="   rt-heading" >در ادامه تعرفه سرویس‌های ارائه شده توسط اپراتورهای تلفن ثابت کشور با یکدیگر مقایسه شده‌اند.</H5>
					</div>		</div>
				</div>
				<div class="elementor-element elementor-element-bbab38b elementor-widget elementor-widget-spacer" data-id="bbab38b" data-element_type="widget" data-widget_type="spacer.default">
				<div class="elementor-widget-container">
					<div class="elementor-spacer">
			<div class="elementor-spacer-inner"></div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-28201d8 elementor-widget elementor-widget-rt-heading" data-id="28201d8" data-element_type="widget" data-widget_type="rt-heading.default">
				<div class="elementor-widget-container">
			<div class="rt-heading-wrapper style-3 text-center">
						<H2 class="   rt-heading style-3" >تلفن ثابت استانی</H2>
					</div>		</div>
				</div>
				<div class="elementor-element elementor-element-60258a7 elementor-widget elementor-widget-rt-pricing-table" data-id="60258a7" data-element_type="widget" data-widget_type="rt-pricing-table.default">
				<div class="elementor-widget-container">
			<div id="" class="pricing_table compare " data-rt-animation-group="group"><div id="" class="table_wrap features " data-rt-animate="animate" data-rt-animation-type="fadeInDown"><ul><li class="caption empty"></li><li class="price empty"></li>
 	<li class="features_start_position">شماره معمولی</li>
 	<li>داخل شبکه</li>
 	<li>ثابت داخل استان</li>
 	<li>ثابت خارج استان</li>
 	<li>موبایل</li>
</ul>
</div><div id="" class="table_wrap highlight " data-rt-animate="animate" data-rt-animation-type="fadeInDown"><ul>
		<li class="caption">
			<div class="title">مخابرات
	<small>
		سرشماره 2 تا 8 
	</small>
	</div>
		</li>
		
		<li class="price">
			<div>
				<span> </span>
			</div>
		</li>
		<li class="start_position">200,000</li><li>4,5</li><li>4,5</li><li>33</li><li>62,5</li></ul></div><div id="" class="table_wrap  " data-rt-animate="animate" data-rt-animation-type="fadeInDown"><ul>
		<li class="caption">
			<div class="title">پیشگامان
	<small>
		سرشماره 9109 
	</small>
	</div>
		</li>
		
		<li class="price">
			<div>
				<span> </span>
			</div>
		</li>
		<li class="start_position">100,000</li><li>3,5</li><li>4,5</li><li>33</li><li>62,5</li></ul></div><div id="" class="table_wrap highlight " data-rt-animate="animate" data-rt-animation-type="fadeInDown"><ul>
		<li class="caption">
			<div class="title">آسیاتک
	<small>
		9101 و 9130 
	</small>
	</div>
		</li>
		
		<li class="price">
			<div>
				<span> </span>
			</div>
		</li>
		<li class="start_position">200,000</li><li>0</li><li>4,5</li><li>33</li><li>62,5</li></ul></div><div id="" class="table_wrap  " data-rt-animate="animate" data-rt-animation-type="fadeInDown"><ul>
		<li class="caption">
			<div class="title">فناوا
	<small>
		سرشماره 9108 
	</small>
	</div>
		</li>
		
		<li class="price">
			<div>
				<span> </span>
			</div>
		</li>
		<li class="start_position">200,000</li><li>0</li><li>4,5</li><li>30</li><li>60</li></ul></div><div id="" class="table_wrap highlight " data-rt-animate="animate" data-rt-animation-type="fadeInDown"><ul>
		<li class="caption">
			<div class="title">رسپینا
	<small>
		سرشماره 9107 
	</small>
	</div>
		</li>
		
		<li class="price">
			<div>
				<span> </span>
			</div>
		</li>
		<li class="start_position">100,000</li><li>0</li><li>2,9</li><li>29,9</li><li>29,9</li></ul></div><div id="" class="table_wrap  " data-rt-animate="animate" data-rt-animation-type="fadeInDown"><ul>
		<li class="caption">
			<div class="title">صبانت
	<small>
		سرشماره 9102 
	</small>
	</div>
		</li>
		
		<li class="price">
			<div>
				<span> </span>
			</div>
		</li>
		<li class="start_position">59,900</li><li>2</li><li>3,9</li><li>29,9</li><li>40</li></ul></div><div id="" class="table_wrap highlight " data-rt-animate="animate" data-rt-animation-type="fadeInDown"><ul>
		<li class="caption">
			<div class="title">شاتل
	<small>
		9100 و 9132 
	</small>
	</div>
		</li>
		
		<li class="price">
			<div>
				<span> </span>
			</div>
		</li>
		<li class="start_position">200,000</li><li>30</li><li>4</li><li>30</li><li>57</li></ul></div><div id="" class="table_wrap  " data-rt-animate="animate" data-rt-animation-type="fadeInDown"><ul>
		<li class="caption">
			<div class="title">لایزر
	<small>
		سرشماره 9131 
	</small>
	</div>
		</li>
		
		<li class="price">
			<div>
				<span> </span>
			</div>
		</li>
		<li class="start_position">200,000</li><li>3,9</li><li>3,9</li><li>29,9</li><li>53,3</li></ul></div><div id="" class="table_wrap highlight " data-rt-animate="animate" data-rt-animation-type="fadeInDown"><ul>
		<li class="caption">
			<div class="title">فناپ تلکام
	<small>
		سرشماره 9103 
	</small>
	</div>
		</li>
		
		<li class="price">
			<div>
				<span> </span>
			</div>
		</li>
		<li class="start_position">200,000</li><li>3,9</li><li>4,5</li><li>33</li><li>62,5</li></ul></div><div id="" class="table_wrap  " data-rt-animate="animate" data-rt-animation-type="fadeInDown"><ul>
		<li class="caption">
			<div class="title">فرزانگان
	<small>
		سرشماره 9311 
	</small>
	</div>
		</li>
		
		<li class="price">
			<div>
				<span> </span>
			</div>
		</li>
		<li class="start_position">200,000</li><li>0</li><li>3,9</li><li>33</li><li>56,5</li></ul></div></div>		</div>
				</div>
				<div class="elementor-element elementor-element-db82b8e elementor-widget elementor-widget-spacer" data-id="db82b8e" data-element_type="widget" data-widget_type="spacer.default">
				<div class="elementor-widget-container">
					<div class="elementor-spacer">
			<div class="elementor-spacer-inner"></div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-c438a9c elementor-widget elementor-widget-rt-heading" data-id="c438a9c" data-element_type="widget" data-widget_type="rt-heading.default">
				<div class="elementor-widget-container">
			<div class="rt-heading-wrapper style-3 text-center">
						<H2 class="   rt-heading style-3" >تلفن ثابت کشوری</H2>
					</div>		</div>
				</div>
				<div class="elementor-element elementor-element-412944a elementor-widget elementor-widget-rt-pricing-table" data-id="412944a" data-element_type="widget" data-widget_type="rt-pricing-table.default">
				<div class="elementor-widget-container">
			<div id="" class="pricing_table compare " data-rt-animation-group="group"><div id="" class="table_wrap features " data-rt-animate="animate" data-rt-animation-type="fadeInDown"><ul><li class="caption empty"></li><li class="price empty"></li><li class="features_start_position">شماره معمولی</li><li>داخل شبکه</li><li>ثابت داخل استان</li><li>ثابت خارج استان</li><li>موبایل</li></ul></div><div id="" class="table_wrap highlight " data-rt-animate="animate" data-rt-animation-type="fadeInDown"><ul>
		<li class="caption">
			<div class="title">آسیاتک
	<small>
		سرشماره 094220 
	</small>
	</div>
		</li>
		
		<li class="price">
			<div>
				<span> </span>
			</div>
		</li>
		<li class="start_position">200,000</li><li>0</li><li>10</li><li>10</li><li>62,5</li></ul></div><div id="" class="table_wrap  " data-rt-animate="animate" data-rt-animation-type="fadeInDown"><ul>
		<li class="caption">
			<div class="title">رسپینا
	<small>
		سرشماره 094260 
	</small>
	</div>
		</li>
		
		<li class="price">
			<div>
				<span> </span>
			</div>
		</li>
		<li class="start_position">100,000</li><li>0</li><li>9,9</li><li>9,9</li><li>29,9</li></ul></div><div id="" class="table_wrap highlight " data-rt-animate="animate" data-rt-animation-type="fadeInDown"><ul>
		<li class="caption">
			<div class="title">مبین نت
	<small>
		سرشماره 094440 
	</small>
	</div>
		</li>
		
		<li class="price">
			<div>
				<span> </span>
			</div>
		</li>
		<li class="start_position">180,000</li><li>1</li><li>10</li><li>10</li><li>62,5</li></ul></div></div>		</div>
				</div>
				<div class="elementor-element elementor-element-7b795bb elementor-widget elementor-widget-text-editor" data-id="7b795bb" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
								<div class="elementor-text-editor elementor-clearfix">
				<p>* تمامی قیمت‌ها به تومان می‌باشد.<br />* به تمامی قیمت‌ها مالیات بر ارزش افزوده اضافه می‌شود.<br />* مکالمات بر حسب دقیقه محاسبه می‌‌گردد.<br />* در تمامی اپراتورها مکالمات بین المللی بر مبنای قیمت مصوب زیرساخت محاسبه می‌گردد.<br />* مرجع قیمت‌ها، اپراتور سرویس‌دهنده می‌باشد.</p>					</div>
						</div>
				</div>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>
				<section class="elementor-section elementor-top-section elementor-element elementor-element-803bb3a elementor-section-height-min-height elementor-section-boxed elementor-section-height-default elementor-section-items-middle default-style" data-id="803bb3a" data-element_type="section" data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-eaab53e" data-id="eaab53e" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-4335e05 elementor-widget elementor-widget-rt-heading" data-id="4335e05" data-element_type="widget" data-widget_type="rt-heading.default">
				<div class="elementor-widget-container">
			<div class="rt-heading-wrapper text-center">
						<h4 class="   rt-heading" >تاکنون چند صد کسب و کار، تلینا را برای خرید سرویس تلفن ثابت انتخاب کرده‌اند.</h4>
					</div>		</div>
				</div>
				<div class="elementor-element elementor-element-a3c6c21 elementor-widget elementor-widget-rt-heading" data-id="a3c6c21" data-element_type="widget" data-widget_type="rt-heading.default">
				<div class="elementor-widget-container">
			<div class="rt-heading-wrapper text-center">
						<h4 class="   rt-heading" >امیدواریم انتخاب شما هم باشیم.</h4>
					</div>		</div>
				</div>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>




				<section class="elementor-section elementor-top-section elementor-element elementor-element-836a8d2 elementor-section-boxed elementor-section-height-default elementor-section-height-default default-style" data-id="836a8d2" data-element_type="section" data-settings="{&quot;background_background&quot;:&quot;gradient&quot;,&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-18363f2" data-id="18363f2" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-1f97a17 elementor-widget elementor-widget-heading" data-id="1f97a17" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-default">چگونه اطلاعات بیشتری درباره سامانه پرداخت تلفنی کسب کنیم؟</h2>		</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-c20b56b" data-id="c20b56b" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-3c969be elementor-widget elementor-widget-text-editor" data-id="3c969be" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
								<div class="elementor-text-editor elementor-clearfix">
				<p style="text-align: center;">کافیست با تلینا تماس برقرار کنید تا کارشناسان ما با جزئیات بیشتری سامانه پرداخت تلفنی را برای شما توضیح دهند. ما درصدد آنیم تا مقرون به صرفه ترین راه را به شما نشان دهیم.</p>					</div>
						</div>
				</div>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>
				<section class="elementor-section elementor-top-section elementor-element elementor-element-5dcd909 elementor-section-boxed elementor-section-height-default elementor-section-height-default default-style" data-id="5dcd909" data-element_type="section" data-settings="{&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-5c7646a" data-id="5c7646a" data-element_type="column" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-2dbba84 elementor-widget elementor-widget-heading" data-id="2dbba84" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-default">پرداخت سریع و بی دردسر</h2>		</div>
				</div>
				<div class="elementor-element elementor-element-bddb514 elementor-widget elementor-widget-text-editor" data-id="bddb514" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
								<div class="elementor-text-editor elementor-clearfix">
				<p>دربسیاری از مواقع پس از پخش صحبت های نیرو های پشتیبانی یا بخش IVR همراه با پرداخت مبلغی است، ولی به دلیل نداشتن دسترسی به سایت شما یا نداشتن اینترنت، خرید را به زمان دیگری موکول می کنند و این وقفه باعث می شود در بسیاری از موارد موضوع را فراموش کنند و یا مجددا به دنبال محصول یا خدمات خاص شما بگردند که در این صورت ممکن است هنگام جست و جو با رقیب شما مواجه شده و از همان شرکت خریداری نماید.</p>					</div>
						</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-e8e43dd" data-id="e8e43dd" data-element_type="column" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-3c99275 elementor-widget elementor-widget-heading" data-id="3c99275" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-default">پرداخت های زیر صد هزارتومان، همین حالا</h2>		</div>
				</div>
				<div class="elementor-element elementor-element-6862a44 elementor-widget elementor-widget-text-editor" data-id="6862a44" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
								<div class="elementor-text-editor elementor-clearfix">
				<p>برای پرداخت های بالای صد هزار تومن با توجه با قانون رمز پویا باید از رمز یکبار مصرف پویا استفاده شود. اما اگر خدمات یا محصولاتی دارید که پایین تر از مبلغ صد هزرا تومن است می توانید همان لحظه که مشتری تماس می گیرد تا به او مشاوره دهید پس از به پایان رسیدن تماس، ایشان را به درگاه پرداخت اینترنتی متصل نموده و یک فروش موفق را تنها در دقایقی کوتاه ثبت کنید.</p>					</div>
						</div>
				</div>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>
				<section class="elementor-section elementor-top-section elementor-element elementor-element-c76dc40 elementor-section-boxed elementor-section-height-default elementor-section-height-default default-style" data-id="c76dc40" data-element_type="section" data-settings="{&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-65ad7ed" data-id="65ad7ed" data-element_type="column" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-7c2acf6 elementor-widget elementor-widget-heading" data-id="7c2acf6" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-default">مشتریان میانسال و ناآشنا را حفظ کنید</h2>		</div>
				</div>
				<div class="elementor-element elementor-element-d9e654d elementor-widget elementor-widget-text-editor" data-id="d9e654d" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
								<div class="elementor-text-editor elementor-clearfix">
				<p>شاید از نظر شما پرداخت با چند کلیک ساده باشد، اما افردای هستند که به دلیل اقتضای سن یا شرایط کاری خود از هرگونه کار اینترنتی فراری هستند. می توانیم به جای از دست دادن این گروه قابل توجه به فکر راه جایگزینی برایش باشیم. با پرداخت تلفنی تلینا می توانید به مشتریانتان کمک کنید تا در کنار دیگر افراد از خدمات و کالای ارائه شده شما لذت ببرند و تجربه خرید تلفنی خوشایند را کسب کنند.</p>					</div>
						</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-520b978" data-id="520b978" data-element_type="column" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-394b662 elementor-widget elementor-widget-heading" data-id="394b662" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-default">هوشمندی در فروش، سرعت در پرداخت</h2>		</div>
				</div>
				<div class="elementor-element elementor-element-2973da8 elementor-widget elementor-widget-text-editor" data-id="2973da8" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
								<div class="elementor-text-editor elementor-clearfix">
				<p>در اصول اولیه فروش این نکنه بسیار مهم است که در سریع ترین زمان ممکن و بدون فوت وقت مشتری را مجاب به پرداخت و خرید کنید. سیستم نلفنی تلینا اینجاست تا این امکان را برای شما فراهم کند.</p>					</div>
						</div>
				</div>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>
				<section class="elementor-section elementor-top-section elementor-element elementor-element-bb6f082 elementor-section-boxed elementor-section-height-default elementor-section-height-default default-style" data-id="bb6f082" data-element_type="section" data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-e476bf9" data-id="e476bf9" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-67faba9 elementor-widget elementor-widget-heading" data-id="67faba9" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-default">امروزه همه به دنبال آسان ترین و سریع ترین روش برای پرداخت می باشند.</h2>		</div>
				</div>
				<div class="elementor-element elementor-element-0a2c070 elementor-widget elementor-widget-text-editor" data-id="0a2c070" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
								<div class="elementor-text-editor elementor-clearfix">
				<p>برای کسب اطلاعات بیشتر با تلینا در تماس باشید.</p>					</div>
						</div>
				</div>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>
				<section class="elementor-section elementor-top-section elementor-element elementor-element-2279b4e elementor-section-boxed elementor-section-height-default elementor-section-height-default default-style" data-id="2279b4e" data-element_type="section" data-settings="{&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-25 elementor-top-column elementor-element elementor-element-c5ec86c" data-id="c5ec86c" data-element_type="column" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-f464a19 elementor-view-stacked elementor-shape-circle elementor-widget elementor-widget-icon" data-id="f464a19" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="fas fa-phone-alt"></i>			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-3dad55e elementor-widget elementor-widget-heading" data-id="3dad55e" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-default">پرداخت با تلفن ثابت </h2>		</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-25 elementor-top-column elementor-element elementor-element-57fe2cd" data-id="57fe2cd" data-element_type="column" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-80f813d elementor-view-stacked elementor-shape-circle elementor-widget elementor-widget-icon" data-id="80f813d" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="fas fa-mobile-alt"></i>			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-eef83e7 elementor-widget elementor-widget-heading" data-id="eef83e7" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-default">پرداخت با تلفن همراه</h2>		</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-25 elementor-top-column elementor-element elementor-element-1981deb" data-id="1981deb" data-element_type="column" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-b9b2bac elementor-view-stacked elementor-shape-circle elementor-widget elementor-widget-icon" data-id="b9b2bac" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="fa  fa-sign-out"></i>			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-e55da08 elementor-widget elementor-widget-heading" data-id="e55da08" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-default">پرداخت بدون اینترنت</h2>		</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-25 elementor-top-column elementor-element elementor-element-f90550a" data-id="f90550a" data-element_type="column" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-b84700c elementor-view-stacked elementor-shape-circle elementor-widget elementor-widget-icon" data-id="b84700c" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="fas fa-shield-alt"></i>			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-275962c elementor-widget elementor-widget-heading" data-id="275962c" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-default">پرداخت امنیت بالا</h2>		</div>
				</div>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>
				<section class="elementor-section elementor-top-section elementor-element elementor-element-09c360a elementor-section-boxed elementor-section-height-default elementor-section-height-default default-style" data-id="09c360a" data-element_type="section" data-settings="{&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-25 elementor-top-column elementor-element elementor-element-68c89c1" data-id="68c89c1" data-element_type="column" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-8c604dd elementor-view-stacked elementor-shape-circle elementor-widget elementor-widget-icon" data-id="8c604dd" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="fas fa-code"></i>			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-2842af9 elementor-widget elementor-widget-heading" data-id="2842af9" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-default">وب سرویس</h2>		</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-25 elementor-top-column elementor-element elementor-element-9577fe6" data-id="9577fe6" data-element_type="column" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-643b63b elementor-view-stacked elementor-shape-circle elementor-widget elementor-widget-icon" data-id="643b63b" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="far fa-credit-card"></i>			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-e2e1f02 elementor-widget elementor-widget-heading" data-id="e2e1f02" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-default">بدون نیاز به CVV2</h2>		</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-25 elementor-top-column elementor-element elementor-element-292de75" data-id="292de75" data-element_type="column" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-076b099 elementor-view-stacked elementor-shape-circle elementor-widget elementor-widget-icon" data-id="076b099" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="fas fa-desktop"></i>			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-8c7c6d4 elementor-widget elementor-widget-heading" data-id="8c7c6d4" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-default">پرداخت با سرعت بالا</h2>		</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-25 elementor-top-column elementor-element elementor-element-85f81e1" data-id="85f81e1" data-element_type="column" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-8cf3b10 elementor-view-stacked elementor-shape-circle elementor-widget elementor-widget-icon" data-id="8cf3b10" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="fas fa-hourglass-end"></i>			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-1664483 elementor-widget elementor-widget-heading" data-id="1664483" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-default">عدم نیاز تاریخ انقضا</h2>		</div>
				</div>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>
				<section class="elementor-section elementor-top-section elementor-element elementor-element-6ecd033 elementor-section-content-middle elementor-section-boxed elementor-section-height-default elementor-section-height-default default-style" data-id="6ecd033" data-element_type="section" id="123" data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-25 elementor-top-column elementor-element elementor-element-34f1176" data-id="34f1176" data-element_type="column">
			<div class="elementor-column-wrap">
							<div class="elementor-widget-wrap">
								</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-25 elementor-top-column elementor-element elementor-element-03fcf0b" data-id="03fcf0b" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-57dc8ec elementor-widget elementor-widget-rt-heading" data-id="57dc8ec" data-element_type="widget" data-widget_type="rt-heading.default">
				<div class="elementor-widget-container">
			<div class="rt-heading-wrapper text-center">
						<h4 class="   rt-heading" >درخواست مشاوره و خرید</h4>
					</div>		</div>
				</div>
				<div class="elementor-element elementor-element-c813233 elementor-widget elementor-widget-text-editor" data-id="c813233" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
								<div class="elementor-text-editor elementor-clearfix">
				<p style="text-align: center;">جهت کسب اطلاعات بیشتر و درخواست خرید، فرم روبرو را تکمیل نمایید.<br />همکاران ما در اسرع وقت با شما تماس خواهند گرفت.</p>					</div>
						</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-25 elementor-top-column elementor-element elementor-element-d550889" data-id="d550889" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-c86467a elementor-button-align-stretch elementor-widget elementor-widget-form" data-id="c86467a" data-element_type="widget" data-settings="{&quot;step_next_label&quot;:&quot;Next&quot;,&quot;step_previous_label&quot;:&quot;Previous&quot;,&quot;button_width&quot;:&quot;100&quot;,&quot;step_type&quot;:&quot;number_text&quot;,&quot;step_icon_shape&quot;:&quot;circle&quot;}" data-widget_type="form.default">
				<div class="elementor-widget-container">
					<form class="elementor-form" method="post" name="contact">
			<input type="hidden" name="post_id" value="2792"/>
			<input type="hidden" name="form_id" value="c86467a"/>
			<input type="hidden" name="referer_title" value="درگاه پرداخت تلفنی - تله پرداخت - تلینا" />

							<input type="hidden" name="queried_id" value="2792"/>
			
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
						<span >
															<span class=" elementor-button-icon">
																										</span>
																						<span class="elementor-button-text">ارسال پیام</span>
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
				<div class="elementor-column elementor-col-25 elementor-top-column elementor-element elementor-element-5a43208" data-id="5a43208" data-element_type="column">
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
									

				

				

	 
 
</div><!-- / end #main-content -->
 

 
@if(!empty(Session::get('statust')))
<script src="{{env('APP_URL')}}/build/servicepay/firealert/components.js.download"></script> 
 
 
    
    <script>
        $(document).ready(function () {
                        Swal.fire({
                text: '<?php echo Session::get('statust'); ?>',
                type: '{{Session::get('flgstatus')}}',
                confirmButtonText: 'بستن'

            });
            
        });
    </script>
    
@endif


    
@stop

