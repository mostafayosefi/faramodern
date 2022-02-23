<?php

Route::get('localization/{locale}','LocalizationController@index');


Route::group(['namespace' => 'user'], function () {


Route::get('client/{role}/register','UserController@register');
Route::get('client/{role}/register/{id}','UserController@registeriduser');
Route::post('client/{role}/register','UserController@registerpost');

Route::get('client/{role}','UserController@userlogin');
Route::get('client/{role}/sign-in','UserController@userlogin');
Route::post('client/{role}/sign-in','UserController@userloginpost');
Route::get('client/{role}/panel','UserController@paneluser');

Route::get('client/{role}/addwallet','UserController@addwallet');
Route::post('client/{role}/addwallet','UserController@addwalletmpost');
Route::get('client/{role}/mywallets','UserController@mywalletsm'); 
Route::get('client/{role}/mywallets/edit/{id}','UserController@mywalletsedit'); 
Route::post('client/{role}/mywallets/edit/{id}','UserController@mywalletseditpost'); 
Route::get('client/{role}/mywallets/delet/{id}','UserController@mywalletseditdelet');
 
Route::get('client/{role}/settlement','UserController@settlement');
Route::post('client/{role}/settlement','UserController@settlementpost');
Route::get('client/{role}/mysettlements','UserController@mysettlements');
Route::get('client/{role}/mysettlements/delet/{id}','UserController@mysettlementsdelet');
 

Route::get('client/{role}/mylink','UserController@mylink');
Route::get('client/{role}/subset','UserController@subset');
Route::get('client/{role}/prodmarketlink','UserController@prodmarketlink');
Route::get('client/{role}/obserprod/{id}','UserController@obserprodid');

Route::get('client/{role}/mybuys','UserController@mybuys');
Route::get('client/{role}/mybasket','UserController@mybasket');

Route::get('client/{role}/traking','UserController@mytraking');

Route::get('client/{role}/mngmyseller','UserController@mngmyseller');
Route::post('client/{role}/mngmyseller','UserController@mngmysellerpost');


Route::get('client/{role}/myprofile/edit','UserController@editprofileuser');	
Route::post('client/{role}/myprofile/edit','UserController@editprofileuserPost');
Route::post('client/{role}/profile/secret','UserController@secretmyprofilePost');


Route::get('client/{role}/sign-out','UserController@usersignout');	


Route::get('user/settingprofile','UserController@settingprofile');
 
Route::get('user/verificationdoc','UserController@verificationdoc');
Route::post('user/verificationdoc','UserController@verificationdocpost');
Route::post('user/verificationdoc/dropzone/storeusercardmel', ['as'=>'dropzone.storeusercardmel','uses'=>'UserController@dropzoneStoreusercardmel']);
Route::post('user/verificationdoc/post','UserController@verificationdocimgpost');	

Route::get('user/activition','UserController@activitionuser');
Route::post('user/activition/emailuseractivitionverfy','UserController@emailuseractivitionverfy');
Route::post('user/activition/emailuseractivition','UserController@emailuseractivition');
Route::post('user/activition/telluseractivitionverfy','UserController@telluseractivitionverfy');
Route::post('user/activition/telluseractivition','UserController@telluseractivition');


Route::get('user/verificationdoc/verf/{id}','UserController@verificationverfid');


Route::get('client/{role}/analfinical/{rnd}','UserController@analfinicalrnd');

Route::get('client/{role}/payment/{status}','UserController@paymentstatus');

Route::get('client/{role}/mngfinicals','UserController@mngfinicalsu');
Route::get('client/{role}/buys/{stat}','UserController@buysstatid');
Route::get('client/{role}/mngbuys/{rnd}','UserController@mngbuysrnd');


//   a73ef3f109ba4-488b-88550307e827ed8178    



});
	




Route::group(['namespace' => 'Superadmin'], function () { 
  
Route::get('superadmin','SuperadminController@login'); 
Route::get('superadmin/login','SuperadminController@login');  
Route::get('superadmin/sign-in','SuperadminController@login'); 
 
Route::post('superadmin','SuperadminController@loginpost'); 
Route::post('superadmin/login','SuperadminController@loginpost'); 
Route::post('superadmin/sign-in','SuperadminController@loginpost'); 
 
Route::get('superadmin/sign-out','SuperadminController@superadminsignout'); 

Route::get('superadmin/dashboard','SuperadminController@dashboard'); 
Route::get('superadmin/profile','SuperadminController@profile');  
Route::post('superadmin/profile','SuperadminController@profilepost'); 
  
Route::get('superadmin/mngdescription','SuperadminController@mngdescription'); 
Route::get('superadmin/description/edit/{id}','SuperadminController@mngdescriptioneditid'); 
Route::post('superadmin/description/edit/{id}','SuperadminController@descriptioneditidpost'); 
  
Route::get('superadmin/mngfinical','SuperadminController@mngfinical'); 
Route::post('superadmin/mngfinical','SuperadminController@mngfinicalpost');  


Route::get('superadmin/mnglaw','SuperadminController@mnglaw'); 
Route::post('superadmin/mnglaw','SuperadminController@mnglawpost'); 

Route::get('superadmin/addcat','SuperadminController@addcat');  
Route::post('superadmin/addcat','SuperadminController@addcatpost'); 
Route::get('superadmin/viewscats','SuperadminController@viewscats');  
Route::get('superadmin/viewscats/delet/{id}','SuperadminController@deletcatid');  
Route::post('superadmin/viewscats/edit/{id}','SuperadminController@editcatidpost');   


Route::get('superadmin/addplan','SuperadminController@addplan');
Route::post('superadmin/addplan','SuperadminController@addplanpost'); 
Route::get('superadmin/viewsplans','SuperadminController@viewsplans');
Route::get('superadmin/viewsplans/edit/{id}','SuperadminController@viewsplansedit');
Route::post('superadmin/viewsplans/edit/{id}','SuperadminController@viewsplanseditpost');
Route::get('superadmin/viewsplans/delet/{id}','SuperadminController@viewsplansdelet'); 


Route::get('superadmin/addwallet','SuperadminController@addwalletsup');   
Route::post('superadmin/addwallet','SuperadminController@addwalletsuppost'); 
Route::get('superadmin/mngwallets','SuperadminController@mngwallets');
Route::get('superadmin/mngwallets/edit/{id}','SuperadminController@mngwalletsid');
Route::post('superadmin/mngwallets/edit/{id}','SuperadminController@mngwalletsidpost');
Route::get('superadmin/mngwallets/delet/{id}','SuperadminController@mngwalletsdeletid'); 


Route::get('superadmin/getbarcod/{idwallet}/{idsecret}','SuperadminController@getbarcod'); 
Route::get('superadmin/savebarcode/{idwallet}/{name}','SuperadminController@savebarcode');

Route::get('superadmin/add/{page}','SuperadminController@addpage'); 
Route::post('superadmin/add/{page}','SuperadminController@addpagepost');  
Route::get('superadmin/views/{page}','SuperadminController@viewspages'); 
Route::get('superadmin/views/{page}/edit/{id}','SuperadminController@pageseditid'); 
Route::post('superadmin/views/{page}/edit/{id}','SuperadminController@pageseditidpost'); 
Route::get('superadmin/views/{page}/delet/{id}','SuperadminController@deletpageid');

Route::get('superadmin/mngbuys','SuperadminController@mngbuys'); 
Route::get('superadmin/mngbuys/{rnd}','SuperadminController@mngbuysid'); 
Route::post('superadmin/mngbuys/{rnd}','SuperadminController@mngbuysidpost'); 

Route::get('superadmin/mngbaskets','SuperadminController@mngbaskets'); 
Route::get('superadmin/mngsellers','SuperadminController@mngsellers'); 

Route::get('superadmin/buys/{stat}','SuperadminController@mngfinicalsstat'); 
Route::post('superadmin/buys/{stat}','SuperadminController@mngfinicalsstatpost'); 
Route::get('superadmin/finicals','SuperadminController@mngfinicals'); 
 


Route::get('superadmin/mngsettlements','SuperadminController@mngsettlements');
Route::get('superadmin/mngsettlements/{id}','SuperadminController@mngsettlementsid');
Route::post('superadmin/mngsettlements/{id}','SuperadminController@mngsettlementsidpost');


Route::get('superadmin/viewsrequsts/{id}/{rolle}','SuperadminController@viewsrequstsiid');
Route::get('superadmin/reqperson/{id}','SuperadminController@reqpersonid');
Route::post('superadmin/accperson/{id}/status/{stat}/{role}','SuperadminController@reqpersonaccid');

Route::get('superadmin/reqcompany/{id}','SuperadminController@reqcompanyid');

Route::get('superadmin/addprod','SuperadminController@addprod');
Route::post('superadmin/addprod','SuperadminController@addprodpost');  
Route::get('superadmin/viewsprods','SuperadminController@viewsprods');
Route::get('superadmin/viewsprods/edit/{id}','SuperadminController@editprodid');
Route::post('superadmin/viewsprods/edit/{id}','SuperadminController@editprodidpost');
Route::get('superadmin/viewsprods/delet/{id}','SuperadminController@deletprodid');
Route::get('superadmin/viewsprods/{id}/deletfile/{idfile}','SuperadminController@deletfileid');
Route::get('superadmin/viewsprods/{id}/accfile/{idfile}','SuperadminController@accfileid');
  
Route::get('superadmin/addseller/{role}','SuperadminController@addusersup'); 
Route::post('superadmin/addseller/{role}','SuperadminController@addusertPost');
Route::get('superadmin/mngartf/{role}','SuperadminController@viewsuserssup');

Route::get('superadmin/adduser/{role}','SuperadminController@addusersup'); 
Route::post('superadmin/adduser/{role}','SuperadminController@addusertPost');
Route::get('superadmin/mngcust/{role}/{id?}','SuperadminController@viewsuserssup');


Route::get('superadmin/viewsusers/edituser/{id}/{role}','SuperadminController@editusersup');
Route::post('superadmin/viewsusers/edituser/{id}/{role}','SuperadminController@editusersupPost');
Route::post('superadmin/viewsusers/secret/{id}/{role}','SuperadminController@securityystud');
Route::get('superadmin/users/delet/{id}/{role}','SuperadminController@deletusersup');

Route::post('superadmin/viewsusers/edituser/{id}/inccharge','SuperadminController@editusersupincchargePost'); 
Route::post('superadmin/viewsusers/edituser/{id}/odat','SuperadminController@chargeuserincpostodat');
Route::post('superadmin/viewsusers/dropzone/store', ['as'=>'dropzone.storeuser','uses'=>'SuperadminController@dropzoneStoreuser']);
 
Route::get('superadmin/viewsusers/edituser/acc/{id}','SuperadminController@accusersup');
Route::get('superadmin/viewsusers/edituser/rej/{id}','SuperadminController@rejusersup');
Route::get('superadmin/viewsusers/loginuser/{id}/{role}','SuperadminController@loginusersup'); 
Route::get('superadmin/viewsusers/edituser/accdoc/{id}','SuperadminController@accdocusersup');
Route::post('superadmin/viewsusers/edituser/rejdoc/{id}','SuperadminController@rejdocpost');
Route::post('superadmin/viewsusers/edituser/acctell/{id}','SuperadminController@acctellpost');
Route::post('superadmin/viewsusers/edituser/accemail/{id}','SuperadminController@accemailpost');
 
 
Route::get('superadmin/mnguser/{stat}/{id}','SuperadminController@statusersup');


Route::get('superadmin/mngsetting','SuperadminController@mngsetting');  
Route::post('superadmin/mngsetting','SuperadminController@mngsettingpost'); 
  

Route::get('superadmin/mngimgheader','SuperadminController@mngimgheader');  
Route::post('superadmin/mngimgheader','SuperadminController@mngimgheaderpost'); 


Route::get('superadmin/viewsgetway','SuperadminController@viewsgetway');
Route::get('superadmin/mnggetway/{id}','SuperadminController@mnggetwayid');
Route::post('superadmin/mnggetway/{id}','SuperadminController@mnggetwayidpost');
Route::get('superadmin/mnggetwaystat/{stat}/{id}','SuperadminController@mnggetwaystatid');


Route::get('superadmin/xls','SuperadminController@xls');


Route::get('superadmin/addchick','SuperadminController@addchick');
Route::post('superadmin/addchick','SuperadminController@addchickpost');
Route::get('superadmin/viewschicks','SuperadminController@viewschicks');
Route::get('superadmin/mngchicks/edit/{id}','SuperadminController@mngchicksedit');
Route::post('superadmin/mngchicks/edit/{id}','SuperadminController@mngchickseditpost');

Route::get('superadmin/mngchicks/sort','SuperadminController@mngchickseditsort');
Route::post('superadmin/mngchicks/sort','SuperadminController@mngchickseditsortpost');

Route::get('superadmin/mngfinics','SuperadminController@mngfinics');
Route::post('superadmin/mngfinics','SuperadminController@mngfinicspost');



Route::get('superadmin/viewstickets','SuperadminController@viewstickets');
Route::get('superadmin/viewstickets/ticket/{id}','SuperadminController@viewsticketssupid');
Route::post('superadmin/viewstickets/ticket/{id}','SuperadminController@viewsticketssupidpost');
Route::get('superadmin/creattiket/{id}','SuperadminController@creattiketid');


Route::get('superadmin/viewsrequests','SuperadminController@viewsrequests');



Route::get('superadmin/mngtxtdes','SuperadminController@mngtxtdes');
Route::get('superadmin/mngtxtdes/edit/{id}','SuperadminController@mngtxtdeseditid');
Route::post('superadmin/mngtxtdes/edit/{id}','SuperadminController@mngtxtdeseditidpost');


Route::get('superadmin/settingpay','SuperadminController@settingpay');
Route::post('superadmin/settingpay','SuperadminController@settingpaypost');

Route::get('superadmin/mngfilter/{stat}','SuperadminController@mngfilter');
Route::post('superadmin/mngfilter/{stat}','SuperadminController@mngfilterpost');
Route::get('superadmin/mngfilter/delet/{id}/{stat}','SuperadminController@deletfilter');



Route::get('superadmin/addleader','SuperadminController@addleader');
Route::post('superadmin/addleader','SuperadminController@addleaderpost');
Route::get('superadmin/viewsleaders','SuperadminController@viewsleaders');
Route::post('superadmin/editleader/{id}','SuperadminController@editleaderid');
Route::get('superadmin/viewsleaders/delete/{id}','SuperadminController@deleteleader');


Route::get('superadmin/addqst','SuperadminController@addqst');
Route::post('superadmin/addqst','SuperadminController@addqstpost');
Route::get('superadmin/mngqst','SuperadminController@mngqst');
Route::get('superadmin/editqst/{id}','SuperadminController@editqstid');
Route::post('superadmin/editqst/{id}','SuperadminController@editqstidpost');
Route::get('superadmin/mngqst/delet/{id}','SuperadminController@mngqstdeletid');

Route::get('superadmin/mngspotlite','SuperadminController@mngspotlite'); 
Route::get('superadmin/comid/{stat}','SuperadminController@comid'); 
Route::post('superadmin/addcomid/{stat}','SuperadminController@addcomidpost'); 
Route::get('superadmin/comid/{stat}/edit/{id}','SuperadminController@editcomid'); 
Route::post('superadmin/comid/{stat}/edit/{id}','SuperadminController@editcomidpost'); 
Route::get('superadmin/comid/{stat}/delet/{id}','SuperadminController@deletcomid'); 


Route::get('superadmin/fech/{id}','SuperadminController@fechpost'); 

Route::get('superadmin/fas','SuperadminController@faspost'); 



Route::get('superadmin/mngcontact','SuperadminController@mngcontact');
Route::get('superadmin/obsercont/{id}','SuperadminController@obsercontid');

Route::get('superadmin/addperson','SuperadminController@addperson');
Route::post('superadmin/addperson','SuperadminController@addpersonuserpost');

Route::get('superadmin/editreqperson/{id}','SuperadminController@editreqpersonid');
Route::post('superadmin/editreqperson/{id}','SuperadminController@editreqpersoniduserpost');
 
Route::get('superadmin/addcompany','SuperadminController@addcompanysup');
Route::post('superadmin/addcompany','SuperadminController@addcompanysuppost');

Route::get('superadmin/editcompany/{id}','SuperadminController@editcompanyid');
Route::post('superadmin/editcompany/{id}','SuperadminController@editcompanyidpost');

Route::get('superadmin/mngcity','SuperadminController@mngcity');

Route::get('superadmin/fechcity/{id}','SuperadminController@fechcityid');

Route::post('superadmin/editcity/{id}','SuperadminController@editcitypost');
Route::get('superadmin/city/stat/{id}/{flg}','SuperadminController@citystatflg');


Route::get('superadmin/mngcity','SuperadminController@mngcity');

Route::get('superadmin/finic/{role}','SuperadminController@finicrole');



Route::get('superadmin/viewsuserticketssup','SuperadminController@viewsuserticketssup');
Route::get('superadmin/viewsuserticketssup/ticket/{id}','SuperadminController@ticketsup'); 
Route::post('superadmin/viewsuserticketssup/ticket/{id}','SuperadminController@ticketusersupPost'); 
Route::get('superadmin/viewsuserticketssupactive','SuperadminController@viewsuserticketssupactive'); 
Route::get('superadmin/viewsuserticketssup/delet/{id}','SuperadminController@deletticketusersup');
Route::get('superadmin/viewsuserticketssup/close/{id}','SuperadminController@closeticketusersup'); 

});
	
	 


Route::group(['namespace' => 'Index'], function () {

Route::get('/','IndexController@indextel');  

Route::get('/user/logout','IndexController@logoutindex');

Route::get('/register','IndexController@registeration'); 
Route::post('/register','IndexController@registerationpost');  

Route::get('/login','IndexController@loginindex'); 
Route::post('/login','IndexController@loginindexpost'); 



Route::get('/user/demoprofile','IndexController@demoprofile'); 
Route::get('/user/panel','IndexController@paneluser'); 
 
Route::get('/user/profile','IndexController@profileuser'); 

Route::get('/user/myprofile','IndexController@myprofileuser'); 

Route::get('/user/editprofile','IndexController@editprofileuser'); 
Route::post('/user/editprofile','IndexController@editprofileuserpost'); 

Route::get('/user/secret','IndexController@secret');
Route::post('/user/secret','IndexController@secretpost');


Route::get('/user/defaultsetting','IndexController@defaultsetting'); 
 

 
Route::get('/user/myrequest/{stat}','IndexController@myrequest'); 

Route::get('/user/addperson','IndexController@addperson'); 
Route::post('/user/addperson','IndexController@addpersonpost'); 

Route::get('/user/addcompany','IndexController@addcompany');
Route::post('/user/addcompany','IndexController@addcompanypost'); 


Route::get('/user/mngreqperson/{stat}','IndexController@mngreqperson');  
Route::get('/user/mngreqperson/obser/{id}','IndexController@mngreqpersonid');  
Route::get('/user/mngreqperson/edit/{id}','IndexController@editreqpersonid'); 
Route::post('/user/mngreqperson/edit/{id}','IndexController@editreqpersonidpost'); 

Route::get('/user/defaultperson','IndexController@defaultperson'); 
Route::get('/user/defaultcompany','IndexController@defaultcompany'); 
Route::post('/user/default/{role}','IndexController@defaultroliid'); 

Route::get('/user/mngreqcompany/obser/{id}','IndexController@mngreqcompanyid');  
Route::get('/user/mngreqcompany/edit/{id}','IndexController@editreqcompanyid'); 
Route::post('/user/mngreqcompany/edit/{id}','IndexController@editreqcompanyidpost');  


Route::post('/user/paymentdinamic/{stat}/{id}','IndexController@paymentdinamicpost');  
 

Route::get('user/addticket','IndexController@addticketuser'); 
Route::post('user/addticket','IndexController@addticketuserPost');
Route::get('user/viewstickets','IndexController@viewsticketsuser');  
Route::get('user/viewstickets/ticket/{id}','IndexController@ticketuser'); 
Route::post('user/viewstickets/ticket/{id}','IndexController@ticketuserPost'); 
Route::get('user/viewstickets/delet/{id}','IndexController@deletticketuser');

Route::get('/page/{name}','IndexController@pagename'); 

Route::get('/faq','IndexController@indexfaq');  

Route::get('/contact','IndexController@contact'); 
Route::post('/contact','IndexController@contactpost'); 


Route::get('/imgwallet/{id}','IndexController@fechrcid'); 



Route::get('/payment/{id}','IndexController@paymentidindex');

Route::get('/mytest','IndexController@mytest'); 



Route::get('/capchaa/{id}','IndexController@capcha'); 
/*
Route::get('category/{id}','IndexController@categoryid'); 
Route::get('new/{newid}','IndexController@newid'); 
Route::get('page/{newid}','IndexController@pageid'); 
*/


Route::post('/product','IndexController@productpost'); 

Route::get('/fechord/{id}','IndexController@fechordidd'); 

Route::get('/rndfinic/{id}','IndexController@rndfinicd');

// Route::get('/secretysup','IndexController@secretysup');



Route::get('/getwaypay/{id}','IndexController@getwaypaymentidd');  


Route::get('/payorderok/{id}/{auth}/{refid}','IndexController@payorderokidd'); 

	
});


 
 