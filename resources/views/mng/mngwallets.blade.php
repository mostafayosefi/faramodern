@extends('mng.layout')



 

 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
<title>مشاهده کیف پولها</title>
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
            <li class="breadcrumb-item active" aria-current="page">مشاهده کیف پولها</li>
          </ol>
        </nav>


        <div class="row">
          <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <h6 class="card-title">مشاهده کیف پولها</h6>
                <div class="table-responsive">
                
@if($admins)
                  <table id="dataTableExample" class="table">
                    <thead>
                      <tr>
     				    <th>ردیف</th>  
                        <th>کیف پول </th>
                        <th>تاریخ ثبت</th>  
                        <th>مشاهده</th>  
                        <th>حذف</th> 
                      </tr>
                    </thead>
                    <tbody>
                    
<?php $i=1; ?>       
@foreach($admins as $admin)

						<tr>

<td> {{$i++}} </td>  

<td>   {{$admin->wallet_name}}  
 
 

</td> 

 
 <td>{{jDate::forge($admin->wallet_createdatdate)->format('Y/m/d ساعت h:i a ')}}</td>
                        
  

 
  

 <td>
<a href="{{env('APP_URL')}}/superadmin/mngwallets/edit/{{$admin->wallet_id}}"  >
             
<span class="badge badge-success"><i data-feather="check-circle"></i> &nbsp; مشاهده </span>
   
 </a> 
 </td> 
                   
 


 <td> 
 

										
 <div class="text-center">
 <button type="button" class="btn btn-danger btn-sm" data-toggle="modal"  data-target="#exampleModal-{{$admin->wallet_id}}">حذف<i data-feather="trash"></i></button>
 </div>

<div class="modal fade" id="exampleModal-{{$admin->wallet_id}}" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLabel-{{$admin->wallet_id}}" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title" id="exampleModalLabel-{{$admin->wallet_id}}"> حذف کیف پول  {{$admin->wallet_name}}</h5>
 
                        </div>
                        <div class="modal-body">
                          <p>آیا شما مایل به حذف کیف پول {{$admin->wallet_name}} از سیستم می باشید؟</p>
                        </div>
                        <div class="modal-footer">
<a href="{{env('APP_URL')}}/superadmin/mngwallets/delet/{{$admin->wallet_id}}"  type="button" class="btn btn-success">تایید</a>
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