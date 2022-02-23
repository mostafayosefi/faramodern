@extends('mng.layout')


 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
<?php 
	if($page=='page'){ $namepages='صفحات';  $namepage='صفحه'; }
    if($page=='article'){ $namepages='مقالات';  $namepage='مقاله'; }
    if($page=='blog'){ $namepages='بلاگ های';  $namepage='بلاگ'; }
    if($page=='catfaq'){ $namepages='دسته بندی های پرسش پاسخ';  $namepage='دسته بندی پرسش پاسخ'; }
	if($page=='spotlite'){ $namepages='اسپوتلایت';  $namepage='اسپوتلایتها'; }
?>

@section('title')
<title>ویرایش 


@if(($page=='page')||($page=='blog'))
{{$admin->page_tit}} 
@elseif($page=='article') 
{{$admin->art_name}} 
@elseif($page=='catfaq') 
{{$admin->qstcat_name}} 
@elseif($page=='spotlite') 
اسپوتلایت {{$admin->spotlite_tit}} 
@endif




</title>
@stop
 
 <link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/vendors/core/core.css">
<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/css/persian-datepicker-0.4.5.min.css">
<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css">
<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/fonts/feather-font/css/iconfont.css">
<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/vendors/flag-icon-css/css/flag-icon.min.css">
<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/css/demo_1/style.css">
<link rel="shortcut icon" href="{{env('APP_URL')}}/build/template/assets/images/favicon.png" />
</head>

<body class="sidebar-dark rtl">


@section('body')

			<!-- partial -->

			<div class="page-content">

        <nav class="page-breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{env('APP_URL')}}/superadmin/dashboard">داشبورد مدیریت</a></li>

            
@if($page=='spotlite') 
             <li class="breadcrumb-item"><a href="{{env('APP_URL')}}/superadmin/mngspotlite">مشاهده {{$namepages}} سایت</a></li>
             
             @else
             
             
             <li class="breadcrumb-item"><a href="{{env('APP_URL')}}/superadmin/views/{{$page}}">مشاهده {{$namepages}} سایت</a></li>
@endif
            
            
            <li class="breadcrumb-item active" aria-current="page"> 

@if(($page=='page')||($page=='blog'))
{{$admin->page_tit}} 
@elseif($page=='article') 
{{$admin->art_name}} 
@elseif($page=='catfaq') 
{{$admin->qstcat_name}} 
@elseif($page=='spotlite') 
اسپوتلایت {{$admin->spotlite_tit}} 
@endif
              </li>
          </ol>
        </nav>
		 

        <div class="row">
          <div class="col-12 col-xl-12 stretch-card">
            <div class="row flex-grow">
            
            
            
              
              
              <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">

 <div class="card-header card-header-border-bottom">
 <h4>ویرایش
 
@if(($page=='page')||($page=='blog'))
{{$admin->page_tit}} 
@elseif($page=='article') 
{{$admin->art_name}} 
@elseif($page=='catfaq') 
{{$admin->qstcat_name}} 
@elseif($page=='spotlite') 
اسپوتلایت {{$admin->spotlite_tit}} 
@endif
  </h4>
 </div>

<br>

<form class="forms-sample"  method="POST" action="" enctype="multipart/form-data"  onsubmit="return Validate(this);"   >
 
<div class="row">




            
<div class="col-sm-12">         
        @if(count($errors))
			<div class="alert alert-danger">
				<strong>اخطار!</strong> لطفا اطلاعات را به درستی وارد نمایید
				<br/>
				<ul>
					@foreach($errors->all() as $error)
					<li>{{ $error }}</li>
					@endforeach
				</ul>
			</div>
		@endif
                    
			</div>



 
 
<div class="col-sm-12"> 


 

    @if(($page=='page')||($page=='blog'))

 <div class="form-group" >
<label for="exampleInputUsername1">تیتر صفحه</label>
<input type="text" class="form-control" id="exampleInputUsername1" autocomplete="off" placeholder="نام محصول" name="name"  value="{{$admin->page_tit}}"  required > 
</div>	
 
 <div class="form-group">	
 <h4 class="card-title">خلاصه </h4>
 <textarea class="form-control" name="short"  rows="6" required>{{$admin->page_kh}}</textarea>
 </div>

 <div class="form-group">	
 <h4 class="card-title">متن کامل</h4>
 <textarea class="form-control" name="des" id="tinymceExample" rows="10"  >{{$admin->page_des}}</textarea>
 </div>
			
 <hr> 
 <img src="{{env('APP_URL')}}/public/images/{{$admin->page_img}}" height="400px"  width="400px" />
 <hr>
 <div class="form-group" >
<label for="exampleInputUsername1"> آپلود عکس </label>
<input type="file"     id="exampleInputUsername1" autocomplete="off"  name="file" > 
</div>		
 
<hr>
@endif
 
@if($page=='article')

 <div class="form-group" >
<label for="exampleInputUsername1">نام مقاله</label>
<input type="text" class="form-control" id="exampleInputUsername1" autocomplete="off" placeholder="نام محصول" name="name"  value="{{$admin->art_name}}"  required > 
</div>	
 
 <div class="form-group">	
 <h4 class="card-title">خلاصه </h4>
 <textarea class="form-control" name="short"  rows="6" required>{{$admin->art_kh}}</textarea>
 </div>

 <div class="form-group">	
 <h4 class="card-title">متن کامل</h4>
 <textarea class="form-control" name="des" id="tinymceExample" rows="10"  >{{$admin->art_des}}</textarea>
 </div>
			
 <hr> 
 <img src="{{env('APP_URL')}}/public/images/{{$admin->art_img}}" height="400px"  width="400px" />
 <hr>
 <div class="form-group" >
<label for="exampleInputUsername1"> آپلود عکس </label>
<input type="file"     id="exampleInputUsername1" autocomplete="off"  name="file" > 
</div>		
 
<hr>



@endif
 
 
 
@if($page=='catfaq')

 <div class="form-group" >
<label for="exampleInputUsername1">نام دسته بندی پرسش و پاسخ</label>
<input type="text" class="form-control" id="exampleInputUsername1" autocomplete="off" placeholder="نام دسته بندی پرسش و پاسخ" name="name"  value="{{$admin->qstcat_name}}"  required > 
</div>	
 

@endif

	
 
@if($page=='spotlite')

 <div class="form-group" >
<label for="exampleInputUsername1">اسپوتلایت</label>
<input type="text" class="form-control" id="exampleInputUsername1" autocomplete="off"  disabled="" name="name"  value="{{$admin->spotlite_tit}}"  required > 
</div>


 <div class="form-group">	
 <h4 class="card-title">متن اسپوتلایت</h4>
 <textarea class="form-control" name="des" id="tinymceExample" rows="10"  >{{$admin->spotlite_des}}</textarea>
 </div>

@if($admin->spotlite_id!='2')

<br>
<hr>
	
<div class="form-group" >
<label for="file"> بک گراند {{$admin->spotlite_tit}}</label>  
<input type="file"     id="file" autocomplete="off"  name="file" > 
<br>
<span style="color: #3edcf2"> بک گراند {{$admin->spotlite_tit}}</span>
</div>		
 

<img height="200px" width="200px"  src="{{env('APP_URL')}}/public/images/{{$admin->spotlite_img}}"   />

<hr>
@endif

@endif

 <input type="hidden" name="_token" value="{{ csrf_token() }}">
                     
<div class="form-group">
<label for="exampleInputUsername1"> </label>

<button type="submit" class="btn btn-success btn-block">ویرایش </button> 
</div>		
</div>				
 
 

 	
</div>
		 
</form>








                  </div>
                </div>
              </div>
              
              
               
              
              
              
             </div>
            </div>
           </div>
		 
		 
			</div>

@stop
<!--
<script src="{{env('APP_URL')}}/build/servicepay/firealert/components.js.download"></script> 
 
    <script>
        $(document).ready(function () {
                        Swal.fire({
                text: 'باموفقیت انجام شد که شد که شد',
                type: 'success',
                confirmButtonText: 'بستن',       toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 1113000

            });
            
        });
    </script>  
-->






@if(!empty(Session::get('statust')))
<script src="{{env('APP_URL')}}/build/servicepay/firealert/components.js.download"></script> 
 
    <script>
        $(document).ready(function () {
                        Swal.fire({
                text: '<?php echo Session::get('statust'); ?>',
                type: 'success',
                confirmButtonText: 'بستن'

            });
            
        });
    </script>
@endif



</body>

</html>