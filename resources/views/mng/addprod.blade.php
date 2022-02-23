@extends('mng.layout')


 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
<title>ثبت محصول جدید</title>
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
 <h4>ثبت محصول جدید</h4>
 </div>

<br>

<form class="forms-sample"  method="POST" action="" enctype="multipart/form-data"   >
 
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




 <div class="form-group">	
 <label>گروه محصول</label>
 <select name="catid" class="form-control mb-3" required>

<option value="" >لطفا انتخاب نمایید</option>

@foreach($cats as $cat)
 <option value="{{$cat->cat_id}}">{{$cat->cat_name}}</option>
@endforeach
										
 </select>
 </div>



<div class="form-group" >
<label for="exampleInputUsername1">نام محصول</label>
<input type="text" class="form-control" id="exampleInputUsername1" autocomplete="off" placeholder="نام محصول" name="name"  value="{{ old('name') }}"  required > 
</div>	




 <div class="form-group">	
 <h4 class="card-title">خلاصه ای از محصول </h4>
 <textarea class="form-control" name="short"  rows="6" required>{{old('short')}}</textarea>
 </div>

 <div class="form-group">	
 <h4 class="card-title"> توضیحات کامل محصول</h4>
 <textarea class="form-control" name="des" id="tinymceExample" rows="10"  ></textarea>
 </div>
			

 
 
  <hr>
  
   <div class="form-group  col-lg-11">
 <label for="name"> اپلود عکس محصول</label> 
 
 
<table width="100%" id="multi_file_uploader" class="table table-bordered dt-responsive nowrap" >
	<tbody>
		<tr class="imageSelectorContainer">
			<td valign="top" align="right">
			 <input type="button" value="اضافه کردن فایل" title="Add" class="btn btn-success btn-sm" style="" onclick="add_new_file_uploader(this)"> 
				<input type="button" value="حذف فایل" title="Remove" class="btn btn-danger btn-sm" style="display:none;  "   onclick="remove_file_uploader(this)">
					 
				</input></td>
			<td valign="top">
				<input type="file" name="image_uploader_multiple[]" value="" class="multipleImageFileInput"   onchange="show_image_preview(this);" accept="image/*" multiple="">
				<table class="imagePreviewTable"></table>
			</td>
		</tr>
	</tbody>
 
</table>
 

 
 
 </div>
 <span style="color: #0079ff">راهنمایی : دقت نمایید عکس مناسب برای محصول خود به فرمت jpg , png , gif انتخاب نمایید. </span>	
   
   
<style>
	.buttonBox{
	padding: 20px;
	text-align: center;
}
.imagePreviewTable{
	border: 1px solid #000;
	display: none;
}
.overlay {
    position:absolute; top:0; left:0; right:0; bottom:0; background-color:rgba(0, 0, 0, 0.85); background: url(data:;base64,iVBORw0KGgoAAAANSUhEUgAAAAIAAAACCAYAAABytg0kAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAABl0RVh0U29mdHdhcmUAUGFpbnQuTkVUIHYzLjUuNUmK/OAAAAATSURBVBhXY2RgYNgHxGAAYuwDAA78AjwwRoQYAAAAAElFTkSuQmCC) repeat scroll transparent\9; /* ie fallback png background image */ z-index:9999; color:white; text-align:center; height:5000px; display:none;  
}
.overlay_content{
    padding:300px;
}
</style>
 
 
<script>
 $(document).ready(function(){
	$('form').submit(function(ev){
		$('.overlay').show();
		$(window).scrollTop(0);
		return upload_images_selected(ev, ev.target);
	})
})
function add_new_file_uploader(addBtn) {
	var currentRow = $(addBtn).parent().parent();
	var newRow = $(currentRow).clone();
	$(newRow).find('.previewImage, .imagePreviewTable').hide();
	$(newRow).find('.btn, btn-danger').show();
	$(newRow).find('table.imagePreviewTable').find('tr').remove();
	$(newRow).find('input.multipleImageFileInput').val('');
	$(addBtn).parent().parent().parent().append(newRow);
}

function remove_file_uploader(removeBtn) {
	$(removeBtn).parent().parent().remove();
}

function show_image_preview(file_selector) {
	//files selected using current file selector
	var files = file_selector.files;
	//Container of image previews
	var imageContainer = $(file_selector).next('table.imagePreviewTable');
	//Number of images selected
	var number_of_images = files.length;
	//Build image preview row
	var imagePreviewRow = $('<tr class="imagePreviewRow_0"><td valign=top style="width: 200px;"></br>' +
		 '<input type="button" value="حذف " title="Remove Image" class="btn btn-warning btn-sm btn-block waves-effect waves-light mb-1"  imageIndex="0" onclick="remove_selected_image(this)" /></td>' +
		'</tr> ');
	//Add image preview row
	$(imageContainer).html(imagePreviewRow);
	if (number_of_images > 1) {
		for (var i =1; i<number_of_images; i++) {
			/**
			 *Generate class name of the respective image container appending index of selected images, 
			 *sothat we can match images selected and the one which is previewed
			 */
			var newImagePreviewRow = $(imagePreviewRow).clone().removeClass('imagePreviewRow_0').addClass('imagePreviewRow_'+i);
			$(newImagePreviewRow).find('input[type="button"]').attr('imageIndex', i);
			$(imageContainer).append(newImagePreviewRow);
		}
	}
	for (var i = 0; i < files.length; i++) {
		var file = files[i];
		/**
		 * Allow only images
		 */
		var imageType = /image.*/;
		if (!file.type.match(imageType)) {
		  continue;
		}
		
		/**
		 * Create an image dom object dynamically
		 */
		var img = document.createElement("img");
		
		/**
		 * Get preview area of the image
		 */
		var preview = $(imageContainer).find('tr.imagePreviewRow_'+i).find('td:first');

		/**
		 * Append preview of selected image to the corresponding container
		 */
		preview.append(img); 
		
		/**
		 * Set style of appended preview(Can be done via css also)
		 */
		preview.find('img').addClass('previewImage').css({'max-width': '200px', 'max-height': '200px'});
		
		/**
		 * Initialize file reader
		 */
		var reader = new FileReader();
		/**
		 * Onload event of file reader assign target image to the preview
		 */
		reader.onload = (function(aImg) { return function(e) { aImg.src = e.target.result; }; })(img);
		/**
		 * Initiate read
		 */
		reader.readAsDataURL(file);
	}
	/**
	 * Show preview
	 */
	$(imageContainer).show();
}

function remove_selected_image(close_button)
{
	/**
	 * Remove this image from preview
	 */
	var imageIndex = $(close_button).attr('imageindex');
	$(close_button).parents('.imagePreviewRow_' + imageIndex).remove();
}

function upload_images_selected(event, formObj)
{
	event.preventDefault();
	//Get number of images
	var imageCount = $('.previewImage').length;
	//Get all multi select inputs
	var fileInputs = document.querySelectorAll('.multipleImageFileInput');
	//Url where the image is to be uploaded
	var url= "public/";
	//Get number of inputs
	var number_of_inputs = $(fileInputs).length; 
	var inputCount = 0;

	//Iterate through each file selector input
	$(fileInputs).each(function(index, input){
		
		fileList = input.files;
		// Create a new FormData object.
		var formData = new FormData();
		//Extra parameters can be added to the form data object
		formData.append('bulk_upload', '1');
		formData.append('username', $('input[name="username"]').val());
		//Iterate throug each images selected by each file selector and find if the image is present in the preview
		for (var i = 0; i < fileList.length; i++) {
			if ($(input).next('.imagePreviewTable').find('.imagePreviewRow_'+i).length != 0) {
				var file = fileList[i];
				// Check the file type.
				if (!file.type.match('image.*')) {
					continue;
				}
				// Add the file to the request.
				formData.append('image_uploader_multiple[' +(inputCount++)+ ']', file, file.name);
			}
		}
		// Set up the request.
		var xhr = new XMLHttpRequest();
		xhr.open('POST', url, true);
		xhr.onload = function () {
			if (xhr.status === 200) {
				var jsonResponse = JSON.parse(xhr.responseText);
				if (jsonResponse.status == 1) {
					$(jsonResponse.file_info).each(function(){
						//Iterate through response and find data corresponding to each file uploaded
						var uploaded_file_name = this.original;
						var saved_file_name = this.target;
						var file_name_input = '<input type="hidden" class="image_name" name="image_names[]" value="' +saved_file_name+ '" />';
						file_info_container.append(file_name_input);
						
						imageCount--;
					})
					//Decrement count of inputs to find all images selected by all multi select are uploaded
					number_of_inputs--;
					if(number_of_inputs == 0) {
						//All images selected by each file selector is uploaded
						//Do necessary acteion post upload
						$('.overlay').hide();
					}
				} else {
					if (typeof jsonResponse.error_field_name != 'undefined') {
						//Do appropriate error action
					} else {
						alert(jsonResponse.message);
					}
					$('.overlay').hide();
					event.preventDefault();
					return false;
				}
			} else {
				/*alert('Something went wrong!');*/
				$('.overlay').hide();
				event.preventDefault();
			}
		};
		xhr.send(formData);
	})
	
	return false;
}	
 	
 	
 </script> 
  
 


<div class="form-group" >
<label for="exampleInputUsername1">قیمت محصول (به ریال)</label>
<input type="number" class="form-control" id="exampleInputUsername1" autocomplete="off" placeholder="به ریال" name="price"  required   value="{{ old('price') }}" > 
</div>	


				
							
 <div class="form-group">
 <h4 class="card-title">سهم بازاریاب(به درصد %) </h4>
<input type="text" class="form-control" id="exampleInputUsername1"   pattern="\d+"  autocomplete="off" placeholder="به درصد" name="ind_bis"  value="{{$mngindexs->ind_bis}}"  required > 
 </div>
 
 
 
 
 
 
   <hr>
 
 <div class="form-group  col-lg-11">
 <label for="name">فایلهای محصول</label> 


<table width="100%" id="multi_file_uploader" class="table table-bordered dt-responsive nowrap" >
	<tbody>
		<tr class="imageSelectorContainer">
			<td valign="top" align="right">
			 <input type="button" value="اضافه کردن فایل" title="Add" class="btn btn-success btn-sm" style="" onclick="add_new_file_uploader(this)"> 
				<input type="button" value="حذف فایل" title="Remove" class="btn btn-danger btn-sm" style="display:none;  "   onclick="remove_file_uploader(this)">
					 
				</input></td>
			<td valign="top">
				<input type="file" name="uploadfile[]" value="" class="multipleImageFileInput"   onchange="show_image_preview(this);"   multiple="">
				<table class="imagePreviewTable"></table>
			</td>
		</tr>
	</tbody>
 
</table>


 </div>
 <span style="color: #0079ff"> در صورتی که محصول شما فیزیکی نمی باشد لطفا فایلهای مربوطه را آپلود نمایید </span>		
 <hr>	
 
 
 
<script>
 $(document).ready(function(){
	$('form').submit(function(ev){
		$('.overlay').show();
		$(window).scrollTop(0);
		return upload_images_selected(ev, ev.target);
	})
})
function add_new_file_uploader(addBtn) {
	var currentRow = $(addBtn).parent().parent();
	var newRow = $(currentRow).clone();
	$(newRow).find('.previewImage, .imagePreviewTable').hide();
	$(newRow).find('.btn, btn-danger').show();
	$(newRow).find('table.imagePreviewTable').find('tr').remove();
	$(newRow).find('input.multipleImageFileInput').val('');
	$(addBtn).parent().parent().parent().append(newRow);
}

function remove_file_uploader(removeBtn) {
	$(removeBtn).parent().parent().remove();
}

function show_image_preview(file_selector) { 
	var files = file_selector.files; 
	var imageContainer = $(file_selector).next('table.imagePreviewTable'); 
	var number_of_images = files.length; 
	var imagePreviewRow = $('<tr class="imagePreviewRow_0"><td valign=top style="width: 200px;"></br>' +
		 ' </td>' +
		'</tr> '); 
	$(imageContainer).html(imagePreviewRow);
	if (number_of_images > 1) {
		for (var i =1; i<number_of_images; i++) { 
			var newImagePreviewRow = $(imagePreviewRow).clone().removeClass('imagePreviewRow_0').addClass('imagePreviewRow_'+i);
			$(newImagePreviewRow).find('input[type="button"]').attr('imageIndex', i);
			$(imageContainer).append(newImagePreviewRow);
		}
	}
	for (var i = 0; i < files.length; i++) {
		var file = files[i]; 
		var imageType = /image.*/;
		if (!file.type.match(imageType)) {
		  continue;
		} 
		var img = document.createElement("img");
		 
		var preview = $(imageContainer).find('tr.imagePreviewRow_'+i).find('td:first'); 
		preview.append(img);  
		preview.find('img').addClass('previewImage').css({'max-width': '200px', 'max-height': '200px'}); 
		var reader = new FileReader(); 
		reader.onload = (function(aImg) { return function(e) { aImg.src = e.target.result; }; })(img); 
		reader.readAsDataURL(file);
	} 
	$(imageContainer).show();
}

function remove_selected_image(close_button)
{ 
	var imageIndex = $(close_button).attr('imageindex');
	$(close_button).parents('.imagePreviewRow_' + imageIndex).remove();
}

function upload_images_selected(event, formObj)
{
	event.preventDefault(); 
	var imageCount = $('.previewImage').length; 
	var fileInputs = document.querySelectorAll('.multipleImageFileInput'); 
	var url= "public/"; 
	var number_of_inputs = $(fileInputs).length; 
	var inputCount = 0; 
	$(fileInputs).each(function(index, input){
		
		fileList = input.files; 
		var formData = new FormData(); 
		formData.append('bulk_upload', '1');
		formData.append('username', $('input[name="username"]').val()); 
		for (var i = 0; i < fileList.length; i++) {
			if ($(input).next('.imagePreviewTable').find('.imagePreviewRow_'+i).length != 0) {
				var file = fileList[i]; 
				if (!file.type.match('image.*')) {
					continue;
				} 
 formData.append('uploadfile[' +(inputCount++)+ ']', file, file.name);
			}
		} 
		var xhr = new XMLHttpRequest();
		xhr.open('POST', url, true);
		xhr.onload = function () {
			if (xhr.status === 200) {
				var jsonResponse = JSON.parse(xhr.responseText);
				if (jsonResponse.status == 1) {
					$(jsonResponse.file_info).each(function(){
 
						var uploaded_file_name = this.original;
						var saved_file_name = this.target;
						var file_name_input = '<input type="hidden" class="image_name" name="image_names[]" value="' +saved_file_name+ '" />';
						file_info_container.append(file_name_input);
						
						imageCount--;
					})
 
					number_of_inputs--;
					if(number_of_inputs == 0) {
 
						$('.overlay').hide();
					}
				} else {
					if (typeof jsonResponse.error_field_name != 'undefined') { 
					} else {
						alert(jsonResponse.message);
					}
					$('.overlay').hide();
					event.preventDefault();
					return false;
				}
			} else { 
				$('.overlay').hide();
				event.preventDefault();
			}
		};
		xhr.send(formData);
	})
	
	return false;
}	
 	
 	
 </script> 
  
  
 
 
 
  
        
 
    
	

 <input type="hidden" name="_token" value="{{ csrf_token() }}">
                     
<div class="form-group">
<label for="exampleInputUsername1"> </label>

<button type="submit" class="btn btn-success btn-block">ثبت</button> 
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