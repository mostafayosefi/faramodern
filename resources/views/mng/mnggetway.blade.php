@extends('mng.layout')


 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
<title>تنظیمات درگاه پرداخت</title>
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

		 

        <div class="row">
          <div class="col-12 col-xl-12 stretch-card">
            <div class="row flex-grow">
            
             
              
              
              
              <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">

 <div class="card-header card-header-border-bottom">
 <h4>تنظیمات درگاه پرداخت</h4>
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



 
  
 
<div class="col-sm-2"> 

 
			</div>

 
<div class="col-sm-8"> 

 

				<div class="row">
					<div class="col-md-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
							
							
							
							
 <div class="form-group">
 <h4 class="card-title">نام درگاه پرداخت </h4>
<input type="text" disabled="" class="form-control" id="exampleInputUsername1" autocomplete="off" placeholder="عنوان سایت" name="getway_name"  value="{{$getwaypay->getway_name}}"  required > 
 </div>
 
 <hr>
   
  
@if($getwaypay->id=='1')							
							
 <div class="form-group">
 <h4 class="card-title">کد درگاه </h4>
<input type="text" class="form-control" id="exampleInputUsername1" autocomplete="off" placeholder="کد درگاه" name="getway_merchent"  value="{{$getwaypay->getway_merchent}}"  required > 
 </div>
 <hr>
 
 @elseif($getwaypay->id=='2')	
							
 <div class="form-group">
 <h4 class="card-title">UID </h4>
<input type="text" class="form-control" id="exampleInputUsername1" autocomplete="off" placeholder="UID" name="getway_uid"  value="{{$getwaypay->getway_uid}}"  required > 
 </div>
 
 <hr>
		 
 
 <div class="form-group">	
 <h4 class="card-title">Token </h4>
 <textarea class="form-control" name="getway_token"  rows="6" required>{{$getwaypay->getway_token}}</textarea>
 </div>

 <hr>
 
 
 @elseif($getwaypay->id=='3')	
 
 				
 <div class="form-group">
 <h4 class="card-title">توکن </h4>
<input type="text" class="form-control" id="exampleInputUsername1" autocomplete="off" placeholder="توکن" name="getway_token"  value="{{$getwaypay->getway_token}}"  required > 
 </div>
 <hr>
 	
 <div class="form-group">
 <h4 class="card-title">Api Key </h4>
<input type="text" class="form-control" id="exampleInputUsername1" autocomplete="off" placeholder="Api Key" name="getway_apikey"  value="{{$getwaypay->getway_apikey}}"  required > 
 </div>
 <hr>
 	
 <div class="form-group">
 <h4 class="card-title">Terminal ID </h4>
<input type="text" class="form-control" id="exampleInputUsername1" autocomplete="off" placeholder="Terminal ID" name="getway_terminalid"  value="{{$getwaypay->getway_terminalid}}"  required > 
 </div>
 <hr>

@endif
 
   
  
	

 <input type="hidden" name="_token" value="{{ csrf_token() }}">
                     
<div class="form-group">
<label for="exampleInputUsername1"> </label>

<button type="submit" class="btn btn-success btn-block">ویرایش</button> 
</div>		
</div>				
  

 	
</div>
 	
</div>
 	
</div>
 	
 	
 	
			</div>

 
<div class="col-sm-2"> 

 
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