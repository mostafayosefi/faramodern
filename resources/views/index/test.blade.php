<?xml version="1.0" encoding="UTF-8"?> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"> 
  <head> 
    <meta http-equiv="content-type" content="text/xhtml; charset=utf-8" /> 
    <title>Dynamic Select Statements</title> 
<script type="text/javascript"> 
 var countryLists = new Array(4) 
 countryLists["empty"] = ["Select a Country"]; 
 countryLists["North America"] = ["Canada", "United States", "Mexico"]; 
 countryLists["South America"] = ["Brazil", "Argentina", "Chile", "Ecuador"]; 
 countryLists["Asia"] = ["Russia", "China", "Japan"]; 
 countryLists["Europe"]= ["Britain", "France", "Spain", "Germany"]; 
 
 function countryChange(selectObj) {  
 var idx = selectObj.selectedIndex;  
 var which = selectObj.options[idx].value;  
 cList = countryLists[which];  
 var cSelect = document.getElementById("country");   
 var len=cSelect.options.length; 
 while (cSelect.options.length > 0) { 
 cSelect.remove(0); 
 } 
 var newOption;  
 for (var i=0; i<cList.length; i++) { 
 newOption = document.createElement("option"); 
 newOption.value = cList[i];   
 newOption.text=cList[i];  
 try { 
 cSelect.add(newOption);  
 } 
 catch (e) { 
 cSelect.appendChild(newOption); 
 } 
 } 
 }  
 
 
 
 
 
</script>



<script type="text/javascript"> 
 var countryLists1 = new Array(4) 
 countryLists1["empty"] = ["Select a shahr"]; 
 countryLists1["isfahan"] = ["031", "0315", "03153"];  
 countryLists1["tehran"] = ["021", "0215", "02153"];  
 countryLists1["khorasan"] = ["051", "0515", "05153"];  
 countryLists1["Japan"] = ["0021", "0022", "0023"];  
 
 function countryChange1(selectObj1) {  
 var idx1 = selectObj1.selectedIndex;  
 var which1 = selectObj1.options[idx1].value;  
 cList1 = countryLists1[which1];  
 var cSelect1 = document.getElementById("country1");   
 var len1=cSelect1.options.length; 
 while (cSelect1.options.length > 0) { 
 cSelect1.remove(0); 
 } 
 var newOption1;  
 for (var j=0; j<cList1.length; j++) { 
 newOption1 = document.createElement("option"); 
 newOption1.value = cList1[j];   
 newOption1.text=cList1[j];  
 try { 
 cSelect1.add(newOption1);  
 } 
 catch (e) { 
 cSelect1.appendChild(newOption1); 
 } 
 } 
 }  
 
  
 
</script>
</head>
<body>
  <noscript>This page requires JavaScript be available and enabled to function properly</noscript>
  <h1>Dynamic Select Statements</h1>
  <label for="continent">Select Continent</label>
  <select id="continent" onchange="countryChange(this);">
    <option value="empty">Select a Continent</option>
    <option value="North America">North America</option>
    <option value="South America">South America</option>
    <option value="Asia">Asia</option>
    <option value="Europe">Europe</option>
  </select>
  <br/>
  <label for="country">Select a country</label>
  <select id="country" onchange="countryChange1(this);">
    <option value="0">Select a country</option>
  </select>
  
  <br>
  <hr><hr>
  
  <h1>DD@2</h1>
 
  <br/>
  <label for="country1">Select a number</label>
  <select id="country1">
    <option value="0">Select a number</option>
  </select>
  
  <br>
  <hr><hr>
  
  
  
  
</body>
 </html>