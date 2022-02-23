@extends('mng.layout')


 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
<title>ثبت کیف پول</title>
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
 <li class="breadcrumb-item"><a href="{{env('APP_URL')}}/client/{{Session::get('role')}}/panel">داشبورد </a></li>
            <li class="breadcrumb-item active" aria-current="page">ثبت کیف پول</li>
          </ol>
        </nav>

		 

        <div class="row">
          <div class="col-12 col-xl-12 stretch-card">
            <div class="row flex-grow">
            
             
              
              
              
              <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">

 <div class="card-header card-header-border-bottom">
 <h4>ثبت کیف پول من</h4>
 </div>

<br>













                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title mb-4">ثبت کیف پول من </h4>
 <form  method="post" action=""  class="repeater" enctype="multipart/form-data" action=""  data-toggle="validator"   >
                                        <div data-repeater-list="group-a">
                                            <div data-repeater-item class="row">
                                                 
 		
			
@if(count($errors))				
<div class="alert alert-danger alert-dismissible fade show" role="alert">
<p>لطفا اطلاعات را به درستی وارد نمایید</p>

@foreach($errors->all() as $error)	
<i class="mdi mdi-alert-outline mr-2"></i>  {{$error}}<br>
@endforeach

<button type="button" class="close" data-dismiss="alert" aria-label="Close">
<span aria-hidden="true">×</span>
</button>
</div>
@endif


 

 



 <div class="col-lg-12">
 
   
 
   
   
    
 
 <div class="form-group  col-lg-11">
 <label for="code">نام کیف پول
 </label> 
 <input  name="name" type="text" class="form-control"   value="" required>
 </div>
 
 <div class="form-group  col-lg-11">
 <label for="input-mask">آیدی کیف پول</label> 
 <input  name="secret" type="text" class="form-control"  value="" required>
 </div>
      
 

<hr>
<div class="form-group" >
<label for="exampleInputUsername1"> لوگو   </label>  
<input type="file"     id="exampleInputUsername1" autocomplete="off"  name="file" required > 
<br>
<span style="color: #3edcf2">   لطفا لوگو مربوطه را آپلود فرمایید</span>
</div>		
 
   
 		
    <input type="hidden" name="dateshamsi" value="{{jDate::forge()->format('Y/m/d')}}">
              <input type="hidden" name="_token" value="{{ csrf_token() }}">	
 
  

 <div class="form-group  col-lg-11">

 <button type="submit" class="btn btn-primary btn-lg btn-block waves-effect waves-light mb-1"> 
ثبت کیف پول     </button>
 
 
 </div> 
                                         


 
 
 
 </div>


 
 
 

 
 
 
 
 
 <input type="hidden" name="dateshamsi" value="{{jDate::forge()->format('Y/m/d')}}">
 <input type="hidden" name="_token" value="{{ csrf_token() }}">	


</div>
</div>
 </form>
 </div>
 </div>
</div>



                            
                     
                              
                    
                    
                    <!-- end row -->

                </div>








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