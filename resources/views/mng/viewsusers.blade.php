@extends('mng.layout')


 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">


<?php if($role=='cust'){  $ruser='مشاهده کاربران'; $aro='user'; }elseif($role=='artf'){ $ruser='مشاهده بازاریاب ها';  $aro='seller'; } ?>

@section('title')
<title> {{$ruser}} </title>
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
            <li class="breadcrumb-item active" aria-current="page"> {{$ruser}}</li>
          </ol>
        </nav>

        <div class="row">
          <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <h6 class="card-title">{{$ruser}}</h6>
                <div class="table-responsive">
                
@if($admins)
                  <table id="dataTableExample" class="table">
                    <thead>
                      <tr>
                        <th>ردیف</th>
                        <th>نام کاربری</th> 
                        <th>تاریخ ایجاد</th>  
                        <th>وضعیت</th>
                        <th>حذف</th>
                        <th>ورود</th>
                      </tr>
                    </thead>
                    <tbody>
                    
<?php $i=1; ?>       
@foreach($admins as $admin)
                      <tr>
 <td>{{$i++}}</td>
 <td>
             
<span class="badge badge-success"><i data-feather="check-circle"></i> &nbsp; {{$admin->user_username}} </span> 
 </td>
 
 
 
 
 
 <td>{{jDate::forge($admin->user_createdatdate)->format('Y/m/d ساعت H:i a')}}</td> 
 
  
 <td>
<a href="{{env('APP_URL')}}/superadmin/viewsusers/edituser/{{$admin->id}}/{{$role}}"  >
 @if($admin->user_active=='1')             
<span class="badge badge-success"><i data-feather="check-circle"></i> &nbsp; فعال </span>
@elseif($admin->user_active=='0') 
<span class="badge badge-warning"><i data-feather="x-circle"></i> &nbsp; غیرفعال </span> 
@endif   
 </a> 
 </td> 
 
 <td><button type="button"  class="badge badge-danger"  data-toggle="modal" data-target="#delet{{$admin->id}}" ><i data-feather="trash"></i>  </button>
 
 
 
 
 <div class="modal fade" id="delet{{$admin->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"> حذف {{$admin->user_name}} </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       آیه شما مایل به حذف {{$admin->user_name}} از سیستم هستید؟
      </div>
      <div class="modal-footer">
        <a href="{{env('APP_URL')}}/superadmin/users/delet/{{$admin->id}}/{{$role}}" class="btn btn-danger"  >حذف</a> 
        <button type="button" class="btn btn-secondary" data-dismiss="modal">خیر</button> 
      </div>
    </div>
  </div>
</div>
 
</td>


 <td>
<a href="{{env('APP_URL')}}/superadmin/viewsusers/loginuser/{{$admin->id}}/{{$aro}}"  target="_blank" >
 
<span class="badge badge-primary"> &nbsp; ورود <i data-feather="log-in"></i></span> 
  
 </a> 
 </td> 
                      </tr>
@endforeach


 
                    </tbody>
                  </table>

@endif





<?php 
 if($link_p_page==Null){ 
$mpaglinki=$role.'/';
 }else{ 
$mpaglinki='';
 }

?>


<div class="row">
  <div class="col-sm-12 col-md-5">
    <div class="dataTables_info" id="dataTableExample_info" role="status" aria-live="polite"> 	<?php  echo 'صفحه '.$id.' از '.$pagerank.''; ?>  </div>
  </div>
    <div class="col-sm-12 col-md-7">
    <div class="dataTables_paginate paging_simple_numbers" id="dataTableExample_paginate">
      <ul class="pagination">
            
      
         <li class="paginate_button page-item previous @if($id ==1) disabled @endif " id="dataTableExample_previous"><a href="{{$mpaglinki}}{{$id-1}}" aria-controls="dataTableExample" data-dt-idx="{{$id-1}}" tabindex="{{$id-1}}" class="page-link">قبلی</a></li>  
 
              
              @for ($x = 1; $x <= $pagerank; $x++) 
              @if($x < 4)
              <li class="paginate_button page-item  @if($id==$x) active @endif  "><a href="{{$mpaglinki}}{{$x}}" aria-controls="dataTableExample" data-dt-idx="{{$x}}" tabindex="{{$x}}" class="page-link">{{$x}}</a></li>
              @endif
              

              @if(($id > 3)&&($id < $pagerank-2)) 
              @if($id==$x)

              <li class="paginate_button page-item disabled"><a href="{{$mpaglinki}}{{$x}}" aria-controls="dataTableExample" data-dt-idx="{{$x}}" tabindex="{{$x}}" class="page-link">...</a></li>
              <li class="paginate_button page-item active"><a href="{{$mpaglinki}}{{$id}}" aria-controls="dataTableExample" data-dt-idx="{{$id}}" tabindex="{{$id}}" class="page-link">{{$id}}</a></li>
              <li class="paginate_button page-item disabled"><a href="{{$mpaglinki}}{{$x}}" aria-controls="dataTableExample" data-dt-idx="{{$x}}" tabindex="{{$x}}" class="page-link">...</a></li>

              @endif 
              @endif 


              @if(($id < 4)||($id > $pagerank-3)) 
              @if($id==$x)
              <li class="paginate_button page-item disabled"><a href="{{$mpaglinki}}{{$x}}" aria-controls="dataTableExample" data-dt-idx="{{$x}}" tabindex="{{$x}}" class="page-link">...</a></li>
              @endif 
              @endif 


              @if($pagerank>3)
              @if($x > $pagerank-3) 
              <li class="paginate_button page-item @if($id==$x) active @endif "><a href="{{$mpaglinki}}{{$x}}" aria-controls="dataTableExample" data-dt-idx="{{$x}}" tabindex="{{$x}}" class="page-link">{{$x}}</a></li>
              @endif  
              @endif  




              @endfor


 
           
                    <li class="paginate_button page-item next @if($id == $pagerank) disabled @endif" id="dataTableExample_next"><a href="{{$mpaglinki}}{{$id+1}}" aria-controls="dataTableExample" data-dt-idx="{{$id+1}}" tabindex="{{$id+1}}" class="page-link">بعدی</a></li> 
          </ul>
        </div>
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