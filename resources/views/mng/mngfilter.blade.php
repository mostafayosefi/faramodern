@extends('mng.layout')



 

 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">


<?php
if($stat=='unav'){ 
$rus='فیلتر ایمیل';
}elseif($stat=='avail'){ 
$rus='ایمیل مجاز';}
 ?>


@section('title')
<title>مدیریت {{$rus}}</title>
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
            <li class="breadcrumb-item active" aria-current="page">مدیریت {{$rus}}</li>
          </ol>
        </nav>




        <div class="row">
          <div class="col-12 col-xl-12 stretch-card">
            <div class="row flex-grow">
            
             
              
              
              
              <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">

 <div class="card-header card-header-border-bottom">
 <h4>ثبت {{$rus}}</h4>
 </div>

<br>













                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title mb-4">ثبت {{$rus}}</h4>
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
 <label for="code">نام سایت
 </label> 
 <input  name="name" type="text" class="form-control"   value="" required>
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
		 
		

        <div class="row">
          <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <h6 class="card-title">مدیریت {{$rus}}</h6>
                <div class="table-responsive">
                
@if($admins)
                  <table id="dataTableExample" class="table">
                    <thead>
                      <tr>
     				    <th>ردیف</th>  
                        <th>نام سایت </th>
                        <th>تاریخ ثبت</th>   
                        <th>حذف</th> 
                      </tr>
                    </thead>
                    <tbody>
                    
<?php $i=1; ?>       
@foreach($admins as $admin)

						<tr>

<td> {{$i++}} </td>  

<td>   {{$admin->filter_mail}}  
 
 

</td> 

 
 <td>{{jDate::forge($admin->filter_createdatdate)->format('Y/m/d ساعت h:i a ')}}</td>
                        
  

  


 <td> 
 

										
 <div class="text-center">
 <button type="button" class="btn btn-danger btn-sm" data-toggle="modal"  data-target="#exampleModal-{{$admin->filter_id}}">حذف<i data-feather="trash"></i></button>
 </div>

<div class="modal fade" id="exampleModal-{{$admin->filter_id}}" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLabel-{{$admin->filter_id}}" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title" id="exampleModalLabel-{{$admin->filter_id}}">حذف    {{$admin->filter_mail}}</h5>
 
                        </div>
                        <div class="modal-body">
                          <p>آیا شما مایل به حذف {{$admin->filter_mail}} از سیستم می باشید؟</p>
                        </div>
                        <div class="modal-footer">
<a href="{{env('APP_URL')}}/superadmin/mngfilter/delet/{{$admin->filter_id}}/{{$stat}}"  type="button" class="btn btn-success">تایید</a>
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
                type: '<?php echo Session::get('flgsts'); ?>',
                confirmButtonText: 'بستن'

            });
            
        });
    </script>
    
@endif



</body>

</html>