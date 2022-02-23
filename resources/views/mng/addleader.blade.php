@extends('mng.layout')



 

 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
<title>ثبت لیدر</title>
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

 

      <div class="page-content">
 

        <nav class="page-breadcrumb">
          <ol class="breadcrumb">
 <li class="breadcrumb-item"><a href="{{env('APP_URL')}}/superadmin/dashboard">داشبورد مدیریت</a></li>
            <li class="breadcrumb-item active" aria-current="page">ثبت لیدر</li>
          </ol>
        </nav>




        <div class="row">
          <div class="col-12 col-xl-12 stretch-card">
            <div class="row flex-grow">
            
             
              
              
              
              <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">

 <div class="card-header card-header-border-bottom">
 <h4>ثبت لیدر</h4>
 </div>

<br>













                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title mb-4">ثبت لیدر </h4>
 <form  method="post" action="{{env('APP_URL')}}/superadmin/addleader"  class="repeater" enctype="multipart/form-data" action=""  data-toggle="validator"   >
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
 <label for="code">نام لیدر
 </label> 
 <input  name="name" type="text" class="form-control"   value="" required>
 </div>
  
     
 
 <div class="form-group  col-lg-11">
 <label for="code">میزان دارایی
 </label> 
 <input  name="price" type="number" class="form-control"   value="" required>
 </div>
  
     
  
   
 		
    <input type="hidden" name="dateshamsi" value="{{jDate::forge()->format('Y/m/d')}}">
              <input type="hidden" name="_token" value="{{ csrf_token() }}">	
 
  

 <div class="form-group  col-lg-11">

 <button type="submit" class="btn btn-primary btn-lg btn-block waves-effect waves-light mb-1"> 
ثبت     </button>
 
 
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