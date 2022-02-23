@extends('mng.layout')


 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
<title>امکانات @if($stat=='first') اول  @elseif($stat=='sec') دوم  @endif </title>
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
            <li class="breadcrumb-item active" aria-current="page">  @if($stat=='first')  امکانات اول  @elseif($stat=='sec') امکانات دوم  @elseif($stat=='thi') کامنت مشتری  @endif </li>
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
 <h4> ثبت @if($stat=='first')  امکانات اول  @elseif($stat=='sec') امکانات دوم  @elseif($stat=='thi') کامنت مشتری  @endif </h4>
 </div>

<br>

<script> 
function fetch_select2(val){  
	 
	var val = document.getElementById("cat").value;$.ajax({type: 'get',url: '{{env("APP_URL")}}/superadmin/fech/'+val+'',data: {get_option:val},success: function (response) {document.getElementById("catamrc").innerHTML=response;}});
	 
	
	
	}
</script>


<form class="forms-sample"  method="POST" action="{{env('APP_URL')}}/superadmin/addcomid/{{$stat}}" enctype="multipart/form-data"       onsubmit="return Validate(this);" id="myform"  >
 
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
<input type="text" class="form-control" id="tit" autocomplete="off" placeholder="نام سرویس" name="tit"  value="{{old('tit')}}"  required > 
</div>	

<div class="form-group" >
<label for="des">توضیح</label>
<input type="text" class="form-control" id="des" autocomplete="off" placeholder="توضیح" name="des"  value="{{old('des')}}"  required > 
</div>	

	
<div class="form-group" >
<label for="btn">نام دکمه</label>
<input type="text" class="form-control" id="btn" autocomplete="off" placeholder="نام دکمه" name="btn"  value="{{old('btn')}}"  required > 
</div>  
	
<div class="form-group" >
<label for="link">لینک دکمه</label>
<input type="text" class="form-control" id="link" autocomplete="off" placeholder="لینک دکمه" name="link"  value="{{old('link')}}"  required > 
</div>  
 
<div class="form-group" >
<label for="link">آیکن</label>
  
	<select  class="js-example-basic-single w-100" id="cat" name="icon"  onchange="fetch_select2(this.value);"  style="font-size: 18px;"      required >
    <option value="">لطفا آیکن مورد نظر را انتخاب نمایید</option> 
     
    @foreach($fonts as $font)
    
    <option value="{{$font->font_name}}">{{$font->font_name}}</option> 
    @endforeach
    
</select>

</div>
	 
 <div  id="catamrc">
	 	
 
	 	
	 </div>
 
  
 @endif
	
	 
@if($stat=='sec')


<div class="form-group" >
<label for="tit">نام سرویس</label>
<input type="text" class="form-control" id="tit" autocomplete="off" placeholder="نام سرویس" name="tit"  value="{{old('tit')}}"  required > 
</div>	


<div class="form-group" >
<label for="exampleInputUsername1">آپلود عکس   </label>
<input type="file"     id="exampleInputUsername1" autocomplete="off"  name="file" > 
</div>	

 

 @endif	
 

@if($stat=='thi')


<div class="form-group" >
<label for="tit">نام مشتری</label>
<input type="text" class="form-control" id="tit" autocomplete="off" placeholder="نام مشتری" name="tit"  value="{{old('tit')}}"  required > 
</div>	


<div class="form-group" >
<label for="tit">نقش مشتری</label>
<input type="text" class="form-control" id="icon" autocomplete="off" placeholder="نقش مشتری" name="icon"  value="{{old('icon')}}"  required > 
</div>	


<div class="form-group" >
<label for="tit">کامنت مشتری</label>
<textarea class="form-control" name="des" rows="12" ></textarea>
</div>	

 
 

 @endif	
 


<hr>

 <input type="hidden" name="_token" value="{{ csrf_token() }}">
                     
<div class="form-group">
<label for="exampleInputUsername1"> </label>

<button type="submit" class="btn btn-success btn-block"> ثبت @if($stat=='first')  امکانات اول  @elseif($stat=='sec') امکانات دوم  @elseif($stat=='thi') کامنت مشتری  @endif </button> 
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
		 



        <div class="row">
          <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <h6 class="card-title"> لیست @if($stat=='first')  امکانات اول  @elseif($stat=='sec') امکانات دوم  @elseif($stat=='thi') کامنت مشتری  @endif </h6>
                <div class="table-responsive">
                
@if($admins)
                  <table id="dataTableExample" class="table">
                    <thead>
                      <tr>
                        <th>ردیف</th>
                        
                        @if($stat=='first')  
                        <th>امکانات</th>  
                        @elseif($stat=='sec')
                        <th>امکانات</th>  
                        @elseif($stat=='thi')
                         <th>نام مشتری</th>  @endif
                        
                        
                        
                        @if($stat=='first')  
                        <th>آیکن</th>  
                        @elseif($stat=='sec')
                        <th>عکس</th>  
                        @elseif($stat=='thi')
                         <th>نقش مشتری</th>  @endif
                        
                        
                         
                        <th>ویرایش</th>  
                        <th>حذف</th> 
                      </tr>
                    </thead>
                    <tbody>
                    
<?php $i=1; ?>       
@foreach($admins as $admin)
                      <tr>
 <td>{{$i}}</td>
 <td>{{$admin->comid_tit}}</td>
 
 
                        
                        @if($stat=='first')  
                        <td><i  aria-hidden="true" class="fa {{$admin->comid_icon}}"  style="font-size:58px;color:#665CAC;"></i></td>  
                        @elseif($stat=='sec')
<td><img height="78px" width="78px" src="{{env('APP_URL')}}/public/images/{{$admin->comid_img}}"/></td>  
                        @elseif($stat=='thi')
                         <td>{{$admin->comid_icon}}</td>  @endif
                        
                        
 
 
<td>  <a href="{{env('APP_URL')}}/superadmin/comid/{{$admin->comid_stat}}/edit/{{$admin->comid_id}}">
 <span class="btn btn-primary" >  <i data-feather="edit"></i></span> </a> </td>
 
 <td><button type="button" class="btn btn-danger  "  data-toggle="modal" data-target="#delet{{$admin->comid_id}}" ><i data-feather="trash"></i>  </button>
 
 
 
 
 <div class="modal fade" id="delet{{$admin->comid_id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"> حذف {{$admin->comid_tit}}  </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
  <p>     {{$admin->comid_tit}}  </p>
  <hr>
      
       آیا شما مایل به حذف امکانات   "{{$admin->comid_tit}}" از سیستم هستید؟
       
       
       
      </div>
      <div class="modal-footer">
        <a href="{{env('APP_URL')}}/superadmin/comid/{{$admin->comid_stat}}/delet/{{$admin->comid_id}}" class="btn btn-danger"  >حذف</a> 
        <button type="button" class="btn btn-secondary" data-dismiss="modal">خیر</button> 
      </div>
    </div>
  </div>
</div>
 
</td>

<?php $i++; ?>
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