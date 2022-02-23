@extends('mng.layout')


 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
<title>ویرایش امکانات @if($stat=='first') اول  @elseif($stat=='sec') دوم  @endif </title>

<link data-minify="1" rel="stylesheet" id="font-awesome-5-all-css" href="{{env('APP_URL')}}/build/telnum_files/all.min.css" type="text/css" media="all">
<link rel="stylesheet" id="font-awesome-4-shim-css" href="{{env('APP_URL')}}/build/telnum_files/v4-shims.min.css" type="text/css" media="all">

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
 <li class="breadcrumb-item"><a href="{{env('APP_URL')}}/superadmin/comid/{{$stat}}">لیست امکانات @if($stat=='first') اول  @elseif($stat=='sec') دوم  @endif </a></li>
            <li class="breadcrumb-item active" aria-current="page"> ویرایش @if($stat=='first')  امکانات اول  @elseif($stat=='sec') امکانات دوم  @elseif($stat=='thi') کامنت مشتری  @endif </li>
          </ol>
        </nav>

        <div class="row">
          <div class="col-12 col-xl-12 stretch-card">
            <div class="row flex-grow">
            
            
              <div class="col-md-3 grid-margin stretch-card">
			  </div>
              
              
              
              
              <div class="col-md-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">

 <div class="card-header card-header-border-bottom">
 <h4> ویرایش @if($stat=='first')  امکانات اول  @elseif($stat=='sec') امکانات دوم  @elseif($stat=='thi') کامنت مشتری  @endif </h4>
 </div>

<br>

<script> 
function fetch_select2(val){  
	 
	var val = document.getElementById("cat").value;$.ajax({type: 'get',url: '{{env("APP_URL")}}/superadmin/fech/'+val+'',data: {get_option:val},success: function (response) {document.getElementById("catamrc").innerHTML=response;}});
	 
	
	
	}
</script>


<form class="forms-sample"  method="POST" action="" enctype="multipart/form-data"       onsubmit="return Validate(this);" id="myform"  >
 
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


@if($stat=='first')
<div class="form-group" >
<label for="tit">نام سرویس</label>
<input type="text" class="form-control" id="tit" autocomplete="off" placeholder="نام سرویس" name="tit"  value="{{$admins->comid_tit}}"  required > 
</div>	

<div class="form-group" >
<label for="des">توضیح</label>
<input type="text" class="form-control" id="des" autocomplete="off" placeholder="توضیح" name="des"  value="{{$admins->comid_des}}"  required > 
</div>	

	
<div class="form-group" >
<label for="btn">نام دکمه</label>
<input type="text" class="form-control" id="btn" autocomplete="off" placeholder="نام دکمه" name="btn"  value="{{$admins->comid_btn}}"  required > 
</div>  
	
<div class="form-group" >
<label for="link">لینک دکمه</label>
<input type="text" class="form-control" id="link" autocomplete="off" placeholder="لینک دکمه" name="link"  value="{{$admins->comid_link}}"  required > 
</div>  
 
<div class="form-group" >
<label for="link">آیکن</label>
  
	<select  class="js-example-basic-single w-100" id="cat" name="icon"  onchange="fetch_select2(this.value);"  style="font-size: 18px;"      required >
    <option value="">لطفا آیکن مورد نظر را انتخاب نمایید</option> 
    
    <option value="fa {{$admins->comid_icon}}" selected="">{{$admins->comid_icon}}</option> 
    @foreach($fonts as $font)
    
    <option value="{{$font->font_name}}">{{$font->font_name}}</option> 
    @endforeach
    
</select>

</div>
	 
	 <div  id="catamrc">
	 	
 <div class="elementor-icon-wrapper">
<div class="elementor-icon">
<i  aria-hidden="true" class="fa {{$admins->comid_icon}}"  style="font-size:78px;color:#665CAC;"></i>	
</div>
</div>
	 	
	 </div>
 
  
 @endif
	
	 
@if($stat=='sec')

<div class="form-group" >
<label for="tit">نام سرویس</label>
<input type="text" class="form-control" id="tit" autocomplete="off" placeholder="نام سرویس" name="tit"  value="{{$admins->comid_tit}}"  required > 
</div>	

<div class="form-group" >
<label for="exampleInputUsername1">آپلود عکس   </label>
<input type="file"     id="exampleInputUsername1" autocomplete="off"  name="file" > 
</div>	


 <div class="elementor-icon-wrapper">
<div class="elementor-icon">

<img height="78px" width="78px"    src="{{env('APP_URL')}}/public/images/{{$admins->comid_img}}" />

</div>
</div>


 @endif	
 
 
 

@if($stat=='thi')


<div class="form-group" >
<label for="tit">نام مشتری</label>
<input type="text" class="form-control" id="tit" autocomplete="off" placeholder="نام مشتری" name="tit"  value="{{$admins->comid_tit}}"  required > 
</div>	


<div class="form-group" >
<label for="tit">نقش مشتری</label>
<input type="text" class="form-control" id="icon" autocomplete="off" placeholder="نقش مشتری" name="icon"  value="{{$admins->comid_icon}}"  required > 
</div>	


<div class="form-group" >
<label for="tit">کامنت مشتری</label>
<textarea class="form-control" name="des" rows="12" >{{$admins->comid_des}}</textarea>
</div>	

 
 

 @endif	
 
 


<hr>

 <input type="hidden" name="_token" value="{{ csrf_token() }}">
                     
<div class="form-group">
<label for="exampleInputUsername1"> </label>

<button type="submit" class="btn btn-success btn-block">ویرایش</button> 
</div>		
</div>				
 
 

 	
</div>
		 
</form>








                  </div>
                </div>
              </div>
              
              
              
              <div class="col-md-3 grid-margin stretch-card">
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