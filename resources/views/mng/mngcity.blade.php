@extends('mng.layout')


 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title') 
<title>  مشاهده شهرها </title>
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
            
            
              <div class="col-md-3 grid-margin stretch-card">
			  </div>
              
              
              
              
              <div class="col-md-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">

 <div class="card-header card-header-border-bottom">
 <h4>  انتخاب استانها </h4>
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



 
 
<div class="col-sm-12"> 


 
<script type="text/javascript">
function fetch_select(val){
	
	var val = document.getElementById("demo-select2-4").value;$.ajax({type: 'get',url: '{{env("APP_URL")}}/superadmin/fechcity/'+val+'',data: {get_option:val},success: function (response) {document.getElementById("catam").innerHTML=response;}}); 
	
	
	}
</script>
     		

 <div class="form-group">
 <label>استان</label>
 <select class="js-example-basic-single w-100" name="idmoaref"      onchange="fetch_select(this.value);"    id="demo-select2-4"    >
 
 <option value="0">لطفا استان مورد نظر خود را انتخاب نمایید</option>
 
 @foreach($provinces as $province)
 <option value="{{$province->id}}">{{$province->name}}</option>
 @endforeach
 
 </select>
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



 <div class="row flex-grow" id="catam">         
              
              
 
<div class="col-md-12 grid-margin stretch-card" >
<div class="card">
<div class="card-body">
<div class="card-header card-header-border-bottom">
<h4>  مشاهده شهرها </h4>
</div>

                <div class="table-responsive">
                
@if($citys)
                  <table id="dataTableExample" class="table">
                    <thead>
                      <tr>
     				    <th>ردیف</th>  
                        <th>نام شهر </th>
                        <th>کد پیش شماره</th>  
                        <th>وضعیت</th>  
                      </tr>
                    </thead>
                    <tbody>
                    
<?php $i=1; ?>       
@foreach($citys as $city)

						<tr>

<td> {{$i++}} </td>  

<td>   {{$city->name}} </td>
<td>   {{$city->pernumber}} </td>  
                        
  

 
  

 <td> 

@if($city->flg=='1')       
<button class="badge badge-success" type="button"   data-toggle="modal"  data-target="#exampleModal-{{$city->id}}"><i data-feather="check-square"></i> &nbsp; فعال </button>
@else 
<button class="badge badge-warning" type="button"   data-toggle="modal"  data-target="#exampleModal-{{$city->id}}"><i data-feather="x-square"></i> &nbsp; غیرفعال </button>
@endif
    
 

<div class="modal fade" id="exampleModal-{{$city->id}}" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLabel-{{$city->id}}" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
 <h5 class="modal-title" id="exampleModalLabel-{{$city->id}}"> {{$city->name}}</h5>
 
 @if($city->flg=='1')       
<span class="badge badge-success"     ><i data-feather="check-square"></i> &nbsp; فعال </span>
@else 
<span class="badge badge-warning"     ><i data-feather="x-square"></i> &nbsp; غیرفعال </span>
@endif
 
                        </div>
                        <div class="modal-body">
                          

<form method="post" action="{{env('APP_URL')}}/superadmin/editcity/{{$city->id}}">


<div class="form-group">
 <label>پیش شماره</label>
<input size="1" type="text" name="pernumber" id="form-field-name" class="form-control" placeholder="پیش شماره"   value="{{$city->pernumber}}" aria-required="true"> 
</div>

 <input type="hidden" name="_token" value="{{ csrf_token() }}">
                     
<div class="form-group">
<label for="exampleInputUsername1"> </label> 
<button type="submit" class="btn btn-success btn-block"> ویرایش  </button> 
</div>	
	
</form>

                          
                          
                        </div>
                        <div class="modal-footer">



@if($city->flg=='1')  
<a href="{{env('APP_URL')}}/superadmin/city/stat/{{$city->id}}/0"  type="button" class="btn btn-primary">    غیرفعال کردن  </a> 
@else  
<a href="{{env('APP_URL')}}/superadmin/city/stat/{{$city->id}}/1"  type="button" class="btn btn-primary">   فعال کردن   </a> 
@endif


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