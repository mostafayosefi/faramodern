@extends('mng.layout')



 

 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
<title>مدیریت لیدرها</title>
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
            <li class="breadcrumb-item active" aria-current="page">مدیریت لیدرها</li>
          </ol>
        </nav>


 
		

        <div class="row">
          <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <h6 class="card-title">مدیریت لیدرها</h6>
                <div class="table-responsive">
                
@if($admins)
                  <table id="dataTableExample" class="table">
                    <thead>
                      <tr>
     				    <th>ردیف</th>  
                        <th>نام لیدر </th>
                        <th>میزان دارایی</th>   
                        <th>ویرایش</th> 
                        <th>حذف</th> 
                      </tr>
                    </thead>
                    <tbody>
                    
<?php $i=1; ?>       
@foreach($admins as $admin)

						<tr>

<td> {{$i++}} </td>  

<td>   {{$admin->leader_name}}   </td> 
<td>   {{$admin->leader_price}}   </td> 

  <td>
  	<!-- Extra large modal -->
<button type="button" class="btn btn-primary" data-toggle="modal"    data-target="#exampleModaledit-{{$admin->leader_id}}"   >ویرایش </button>

<div class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true"   id="exampleModaledit-{{$admin->leader_id}}"   >
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
    
    
    
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title mb-4">ویرایش لیدر </h4>
 <form  method="post" action="{{env('APP_URL')}}/superadmin/editleader/{{$admin->leader_id}}"  class="repeater" enctype="multipart/form-data" action=""  data-toggle="validator"   >
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
 <input  name="name" type="text" class="form-control"   value="{{$admin->leader_name}}" required>
 </div>
  
     
 
 <div class="form-group  col-lg-11">
 <label for="code">میزان دارایی
 </label> 
 <input  name="price" type="number" class="form-control"   value="{{$admin->leader_price}}" required>
 </div>
  
     
  
   
 		
    <input type="hidden" name="dateshamsi" value="{{jDate::forge()->format('Y/m/d')}}">
              <input type="hidden" name="_token" value="{{ csrf_token() }}">	
 
  

 <div class="form-group  col-lg-11">

 <button type="submit" class="btn btn-primary btn-lg btn-block waves-effect waves-light mb-1"> 
ویرایش     </button>
 
 
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
  </td>
                        
  

  


 <td> 
 

										
 <div class="text-center">
 <button type="button" class="btn btn-danger btn-sm" data-toggle="modal"  data-target="#exampleModal-{{$admin->leader_id}}">حذف<i data-feather="trash"></i></button>
 </div>

<div class="modal fade" id="exampleModal-{{$admin->leader_id}}" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLabel-{{$admin->leader_id}}" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title" id="exampleModalLabel-{{$admin->leader_id}}"> حذف کیف پول  {{$admin->leader_name}}</h5>
 
                        </div>
                        <div class="modal-body">
                          <p>آیا شما مایل به حذف {{$admin->leader_name}} از سیستم می باشید؟</p>
                        </div>
                        <div class="modal-footer">
<a href="{{env('APP_URL')}}/superadmin/viewsleaders/delete/{{$admin->leader_id}}"  type="button" class="btn btn-success">تایید</a>
 <button type="button" class="btn btn-light" data-dismiss="modal">لغو</button>
                        </div>
                      </div>
                    </div>
                    </div>
							
 
 
 
 
 </td>
                   
 

 
						</tr>
						 
@endforeach


 
                    </tbody>
                  </table>

@endif

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