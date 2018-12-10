<?php
session_start();
$name=$_SESSION['eid'];
include("config.php");

$img=$_FILES['file']['tmp_name'];
$desc=$_REQUEST['text'];
$catg=$_REQUEST['sel'];
$subcatg=$_REQUEST['sel2'];
if($_REQUEST['sub'])
  {
    if(mysql_query("delete from items where catg='$catg' and subcatg='$subcatg' "))
	   {
	   
		
	    echo "item deleted successfully";
		}
	else
	 {
	   echo "item is not deleted";
	   }
	}   
		 
?>

<style type="text/css">
<!--
.style3 {font-size: 18px; font-weight: bold; }
-->
</style>
<body>
<br><br><br>
<center><font color="#660066" size="+2">Delete Item</font></center>
<br><br><br>
<form method="post" enctype="multipart/form-data">
<table align="center">
<tr><td><span class="style3">Category:</span></td>
<td><select name="sel">
  <option value="bob" selected>bob</option>
  <option value="retailer">retailer</option>
  
</select></td>
</tr>
<tr><td><span class="style3"> Sub Category:</span></td>
<td><select name="sel2">
  <option value="banana" selected>banana</option>
  <option value="orange">orange</option>
  <option value="apple">apple</option>
  <option value="watermelon">watermelon</option>
  <option value="papaya">papaya</option>
  <option value="mango">mango</option>
    <option value="pineapple">pineapple</option>
  <option value="pomegranate">pomegranate</option>
  <option value="guava">guava</option>
  
</select></td>
</tr>
<tr>
<td><span class="style3">Image:</span></td>
<td><input name="file" type="file"></td></tr>
<tr>
<td><span class="style3">Description:</span></td>
<td><textarea name="text" cols="35" rows="6"></textarea></td></tr>
<tr><td  colspan="2" align="center"><input name="sub" type="submit"></td></tr>
</table></form>
</body>
