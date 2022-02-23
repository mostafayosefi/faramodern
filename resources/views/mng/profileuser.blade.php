@extends('mng.layout')


 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
<title>پروفایل</title>
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


 






				<div class="profile-page tx-13">
					<div class="row">
						<div class="col-12 grid-margin">
							<div class="profile-header">
								<div class="cover">
									<div class="gray-shade"></div>
									<figure>
										<img src="{{env('APP_URL')}}/build/template/assets/images/profile-cover.jpg" class="img-fluid"
											alt="profile cover">
									</figure>
									<div class="cover-body d-flex justify-content-between align-items-center">
										<div>

<img class="profile-pic" src="{{env('APP_URL')}}/public/images/{{$admin->user_img}}"
												alt="profile">
 <span class="profile-name">{{$admin->user_name}}</span>
										</div>
										<div class="d-none d-md-block">
											<button class="btn btn-primary btn-icon-text btn-edit-profile">
												<i data-feather="edit" class="btn-icon-prepend"></i> ویرایش پروفایل
											</button>
										</div>
									</div>
								</div>
								<div class="header-links">
									 
								</div>
							</div>
						</div>
					</div>
					<div class="row profile-body">
						<!-- left wrapper start -->
		<div class="col-md-4 col-xl-3 left-wrapper">
							<div class="card rounded">
								<div class="card-body">

<div class="d-flex align-items-center justify-content-between mb-2">

<h6 class="card-title mb-0">اطلاعات پروفایل</h6>

<div class="dropdown">
 <button class="btn p-0" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="icon-lg text-muted pb-3px" data-feather="more-horizontal"></i> </button>
 <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton">
 <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="edit-2" class="icon-sm ml-2"></i> <span class="">ویرایش پروفایل</span></a>
 <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="git-branch" class="icon-sm ml-2"></i> <span class="">به روز رسانی</span></a>
 <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="eye" class="icon-sm ml-2"></i> <span class="">مشاهده همه</span></a>
											</div>
										</div>
									</div>


 

 <div class="mt-3">
 <label class="tx-11 font-weight-bold mb-0 text-uppercase">نقش کاربری : </label>
 <p class="text-muted">
 	 <h4>
 @if($admin->user_role=='1')             
<span class="badge badge-pill  badge-primary"><i data-feather="user"></i> &nbsp;  کاربر معمولی </span>
@elseif($admin->user_role=='2')  
<span class="badge badge-pill badge-info"><i data-feather="users"></i> &nbsp; بازاریاب  </span> 
@endif  
 </h4>
 </p> 
 </div>
 

 <div class="mt-3">
 <label class="tx-11 font-weight-bold mb-0 text-uppercase">نام و نام خانوادگی : </label>
 <p class="text-muted">
 	 
 @if($admin->user_name)             
<span class="badge badge-success"><i data-feather="check-circle"></i> &nbsp; {{$admin->user_name}} </span>
@else 
<span class="badge badge-warning"><i data-feather="x-circle"></i> &nbsp; {{$admin->user_name}} </span> 
@endif  
 
 </p> 
 </div>
 


 <div class="mt-3">
 <label class="tx-11 font-weight-bold mb-0 text-uppercase">ایمیل : </label>
 <p class="text-muted">
 	
 @if($admin->user_email)             
<span class="badge badge-success"><i data-feather="check-circle"></i> &nbsp; {{$admin->user_email}} </span>
@else 
<span class="badge badge-warning"><i data-feather="x-circle"></i> &nbsp; {{$admin->user_email}} </span> 
@endif
 </p> 
 </div>
 
  <div class="mt-3">
 <label class="tx-11 font-weight-bold mb-0 text-uppercase">تلفن : </label>
 <p class="text-muted">
 @if($admin->user_tell)             
<span class="badge badge-success"><i data-feather="check-circle"></i> &nbsp; {{$admin->user_tell}} </span>
@else 
<span class="badge badge-warning"><i data-feather="x-circle"></i> &nbsp; {{$admin->user_tell}} </span> 
@endif  
 </p> 
 </div>
 

<div class="mt-3">
<label class="tx-11 font-weight-bold mb-0 text-uppercase">آدرس : </label>
<p class="text-muted">{{$admin->user_adres}}</p></div>


@if($sarshakhes)
<hr>
<div class="mt-3">
<label class="tx-11 font-weight-bold mb-0 text-uppercase">کاربر دعوت کننده : </label> 
<span class="badge badge-success">  &nbsp; {{$sarshakhes->user_username}} </span>
</div>
<hr>
@endif


<div class="mt-3">
<label class="tx-11 font-weight-bold mb-0 text-uppercase">تاریخ ثبت نام : </label>
<p class="text-muted">{{jDate::forge($admin->user_createdatdate)->format('Y/m/d ساعت H:i a')}}</p></div>



<div class="mt-3">
<label class="tx-11 font-weight-bold mb-0 text-uppercase">تاریخ آخرین ورود : </label>
<p class="text-muted">{{jDate::forge($admin->user_loginatdate)->format('Y/m/d ساعت H:i a')}}</p></div>


<div class="mt-3">
<label class="tx-11 font-weight-bold mb-0 text-uppercase">آی پی : </label>
<p class="text-muted">{{$admin->user_ip}}</p></div>

 

 <div class="mt-3">
 <label class="tx-11 font-weight-bold mb-0 text-uppercase">وضعیت اکانت : </label>
 <p class="text-muted">
 	
 @if($admin->user_active=='1')             
 

<button type="button"  class="badge badge-success"  data-toggle="modal" data-target="#delet{{$admin->id}}" > 
 <i data-feather="check-circle"></i> &nbsp; فعال  
 </button>
 
 
 
 
 <div class="modal fade" id="delet{{$admin->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"> غیرفعال کردن اکانت {{$admin->user_name}} </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      آیا شما مایل به غیرفعال کردن اکانت  {{$admin->user_name}}  هستید؟ 
      </div>
      <div class="modal-footer">
 <a href="{{env('APP_URL')}}/superadmin/mnguser/0/{{$admin->id}}" class="btn btn-warning"  > غیرفعال کردن اکانت </a> 
        <button type="button" class="btn btn-secondary" data-dismiss="modal">خیر</button> 
      </div>
    </div>
  </div>
</div>
 


@elseif($admin->user_active=='0')   


<button type="button"  class="badge badge-warning"  data-toggle="modal" data-target="#delet{{$admin->id}}" > 
 <i data-feather="x-circle"></i> &nbsp; غیرفعال  
 </button>
 
 
 
 
 <div class="modal fade" id="delet{{$admin->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"> فعال کردن اکانت {{$admin->user_name}} </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      آیا شما مایل به فعال کردن اکانت  {{$admin->user_name}}  هستید؟ 
      </div>
      <div class="modal-footer">
 <a href="{{env('APP_URL')}}/superadmin/mnguser/1/{{$admin->id}}" class="btn btn-success"  >فعال کردن اکانت</a> 
        <button type="button" class="btn btn-secondary" data-dismiss="modal">خیر</button> 
      </div>
    </div>
  </div>
</div>
 




@endif
 </p> 
 </div>
 
 
									<div class="mt-3 d-flex social-links">
										<a href="javascript:;"
											class="btn d-flex align-items-center justify-content-center border ml-2 btn-icon github">
											<i data-feather="github" data-toggle="tooltip"
												title="github.com/example"></i>
										</a>
										<a href="javascript:;"
											class="btn d-flex align-items-center justify-content-center border ml-2 btn-icon twitter">
											<i data-feather="twitter" data-toggle="tooltip"
												title="twitter.com/example"></i>
										</a>
										<a href="javascript:;"
											class="btn d-flex align-items-center justify-content-center border ml-2 btn-icon instagram">
											<i data-feather="instagram" data-toggle="tooltip"
												title="instagram.com/example"></i>
										</a>
									</div>
								</div>
							</div>
						</div>


<div class="col-md-8  col-xl-9  ">
						 
							
							
							
									<div class="card card-default">
										<div class="card-header card-header-border-bottom">
 <h4>پروفایل کاربر    </h4>
										</div>
										<div class="card-body">
 <ul class="nav nav-tabs" id="myTab" role="tablist">
 <li class="nav-item">
 <a class="nav-link  @if(empty(Session::get('err')))  active @endif" id="icon-home-tab" data-toggle="tab" href="#icon-home" role="tab" aria-controls="icon-home" aria-selected="@if(empty(Session::get('err')))  true @else false  @endif"> <i data-feather="edit-2"></i>ویرایش پروفایل </a>
 </li>
 <li class="nav-item">
 <a class="nav-link @if(Session::get('err')=='1')  active @endif " id="icon-secret-tab" data-toggle="tab" href="#icon-secret" role="tab" aria-controls="icon-secret" aria-selected="@if(Session::get('err')=='1')   true @else false  @endif"> <i data-feather="lock"></i> تنظیمات رمزعبور</a>
 </li>
 <li class="nav-item">
 <a class="nav-link @if(Session::get('err')=='7')  active @endif " id="icon-auth-tab" data-toggle="tab" href="#icon-auth" role="tab" aria-controls="icon-auth" aria-selected="@if(Session::get('err')=='1')   true @else false  @endif"> <i data-feather="user"></i>جزییات</a>
 </li>
 <li class="nav-item">
 <a class="nav-link @if(Session::get('err')=='8')  active @endif " id="icon-allusers-tab" data-toggle="tab" href="#icon-allusers" role="tab" aria-controls="icon-allusers" aria-selected="@if(Session::get('err')=='1')   true @else false  @endif"> <i data-feather="users"></i>کاربران زیرمجموعه</a>
 </li>
 </ul>


<div class="tab-content" id="myTabContent2">

<div class="tab-pane pt-3 fade   @if(empty(Session::get('err'))) show active @endif" id="icon-home" role="tabpanel" aria-labelledby="icon-home-tab">

<div class="row">
<div class="col-xl-12"> 


<form class="forms-sample"  method="POST" action="" enctype="multipart/form-data"  onsubmit="return Validate(this);"   >
 
<div class="row">



  @if(empty(Session::get('err'))) 


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



 @endif
            


<div class="col-sm-6"> 
<div class="form-group" >
<label for="exampleInputUsername1">نام و نام خانوادگی</label>
<input type="text" class="form-control" id="exampleInputUsername1" autocomplete="off" placeholder="نام و نام خانوادگی" name="name" @if ($admin->user_name) value="{{$admin->user_name}}"@else value="{{ old('name') }}" @endif   > 
</div>		
 


<div class="form-group" >
<label for="exampleInputUsername1">ایمیل</label>
<input type="email" class="form-control" id="exampleInputUsername1" autocomplete="off" placeholder="ایمیل" name="email" @if ($admin->user_email) value="{{$admin->user_email}}"@else value="{{ old('email') }}" @endif > 
</div>		



<div class="form-group" >
<label for="exampleInputUsername1">تلفن</label>
<input type="text"    class="form-control" id="exampleInputUsername1" autocomplete="off" placeholder="تلفن" name="tell" @if ($admin->user_tell) value="{{$admin->user_tell}}"@else value="{{ old('tell') }}" @endif > 
</div>		

</div>			
 
 
<div class="col-sm-6"> 


<div class="form-group" >
<label for="exampleInputUsername1">نام کاربری</label>
<input type="text" class="form-control" id="exampleInputUsername1" autocomplete="off" placeholder="نام کاربری" name="username" @if ($admin->user_username) value="{{$admin->user_username}}"@else value="{{ old('username') }}" @endif required > 
</div>	

	


<div class="form-group" >
<label for="adres">آدرس</label>

<textarea class="form-control"  placeholder="آدرس" id="adres" name="adres" rows="3" >@if ($admin->user_username) {{$admin->user_adres}} @else {{old('adres')}} @endif</textarea>
 
</div>	

	


<div class="form-group" >
<label for="exampleInputUsername1"> تصویر پروفایل</label>
<input type="file"     id="exampleInputUsername1" autocomplete="off"  name="file" > 
</div>		
 
 
                     <input type="hidden" name="_token" value="{{ csrf_token() }}">
                     
<div class="form-group">
<label for="exampleInputUsername1"> </label>

<button type="submit" class="btn btn-primary btn-block">ویرایش</button> 
</div>		
</div>				
 
 

 	
</div>
		 
</form>


							 
					</div>
		</div>									
											
												</div>

<div class="tab-pane pt-3 fade  @if(Session::get('err')=='1') show active @endif" id="icon-secret" role="tabpanel" aria-labelledby="icon-secret-tab">
	
<form method="post" action="{{env('APP_URL')}}/superadmin/viewsusers/secret/{{$admin->id}}/{{$role}}" >

<div class="row">





<div class="col-sm-8"> 



@if(Session::get('err')=='1')
    
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
                
 @endif
           


	<div class="form-group row">
	<label for="nowpass" class="col-sm-2 col-form-label">رمزعبور فعلی</label>
	<div class="col-sm-10">
	<input type="text" class="form-control" name="nowpass" id="nowpass" autocomplete="off" placeholder="رمزعبور فعلی"   value="{{$decryptedPassword}}" required> 
	</div>
	</div>
	
 <div class="form-group row">
 <label for="userpassword" class="col-sm-2 col-form-label">رمزعبور جدید</label>
 <div class="col-sm-10">
 <input type="password" class="form-control"  id="userpassword"  name="userpassword" autocomplete="off"    value="{{old('userpassword')}}" required> 
 </div>
 </div>
	
 <div class="form-group row">
 <label for="userpassword_confirmation" class="col-sm-2 col-form-label">تکرار رمزعبور</label>
 <div class="col-sm-10">
 <input type="password" class="form-control" id="userpassword_confirmation"  name="userpassword_confirmation" autocomplete="off"    value="{{old('userpassword_confirmation')}}" required> 
 </div>
 </div>
	
	<div class="form-group">
<label for="exampleInputUsername1"> </label>

<button type="submit" class="btn btn-primary btn-block">ویرایش رمزعبور</button> 
</div>	
	
	</div>
<div class="col-sm-4"> 
	</div>
	
	
                     <input type="hidden" name="_token" value="{{ csrf_token() }}">
	
		</div>
	
</form>
	
	
	
	
	
	
	
	
</div>



<div class="tab-pane pt-3 fade  @if(Session::get('err')=='7') show active @endif" id="icon-auth" role="tabpanel" aria-labelledby="icon-auth-tab">

 
 
 
<div class="row">  
<div class="col-md-12 grid-margin">
 <div class="card rounded">
 <div class="card-body">
 <h6 class="card-title">جزییات </h6>
 
 
 
 

 </div>
 
 
 

 <div class="card-body">
 

		<div class="row">
		 
 @if ($admin->user_uploadpassport)
 
<br>
 

 @if ($admin->user_autactive=='0')
 
<div class="col-md-6"> 

<br>
<a href="{{env('APP_URL')}}/superadmin/viewsusers/edituser/accdoc/{{$admin->id}}">
<button type="button" class="btn btn-primary btn-block btn-icon-text">
	<i class="btn-icon-prepend" data-feather="check-square"></i>
	تایید مدارک
</button>
</a> 

  
 
 <button type="button" class="btn btn-danger  btn-block btn-icon-text" data-toggle="modal" data-target="#exampleModal">
 عدم تایید مدارک
</button>
  
 
</div>
@elseif ($admin->user_autactive=='1')
 
 
<div class="col-lg-6"> 
 <button type="button" class="btn btn-danger   btn-block btn-icon-text" data-toggle="modal" data-target="#exampleModal">
 عدم تایید مدارک
</button>
 
 

</div>

@elseif ($admin->user_autactive=='2')
 

@endif


@else
 
@endif
</div> 
 </div> 
 </div>
										
										
										
 





</div>										

</div>

										</div>

<div class="tab-pane pt-3 fade  @if(Session::get('err')=='8') show active @endif" id="icon-allusers" role="tabpanel" aria-labelledby="icon-allusers-tab">

 
 
 
<div class="row">  
<div class="col-md-12 grid-margin">
 <div class="card rounded">
 <div class="card-body">
 <h6 class="card-title">لیست کاربران زیرمجموعه </h6>
 
 
 
 

 </div>
 
 
 


    <div class="card-body">
                <h6 class="card-title">لیست کاربران زیرمجموعه</h6>
                <div class="table-responsive">
                
@if($refralusers)
                  <table id="dataTableExample" class="table">
                    <thead>
                      <tr>
                        <th>ردیف</th>
                        <th>نام کاربری</th> 
                        <th>تاریخ ایجاد</th>  
                      </tr>
                    </thead>
                    <tbody>
                    
<?php $i=1; ?>       
@foreach($refralusers as $admin)
                      <tr>
 <td>{{$i++}}</td>
 <td>
             
<span class="badge badge-success"><i data-feather="check-circle"></i> &nbsp; {{$admin->user_username}} </span> 
 </td>
 
 
 
 
 
 <td>{{jDate::forge($admin->user_createdatdate)->format('Y/m/d ساعت H:i a')}}</td> 
 
   
  
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
                text: '<?php echo Session::get('statust'); ?>',
                type: 'success',
                confirmButtonText: 'بستن',       toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 1113000

            });
            
        });
    </script>  
-->


 <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">عدم تایید مدارک</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
  <form method="post" action="rejdoc/{{$admin->id}}">
  
      <div class="modal-body">


<div class="col-md-12"> 
<img src="{{env('APP_URL')}}/public/images/{{$admin->user_uploadpassport}}" width="240"  height="160"  />  
 </div>
 
 

<div class="form-group" >
<label for="adres">توضیحات</label>

<textarea class="form-control"  placeholder="توضیحات"  id="des" name="des"    rows="5" ></textarea>
 
</div>	



      <input type="hidden" name="_token" value="{{ csrf_token() }}">



      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">بستن</button>
        <button type="submit" class="btn btn-primary">ارسال</button>
      </div>
      
      </form>
      
    </div>
  </div>
</div>




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