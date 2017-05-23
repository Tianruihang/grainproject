<%@ page language="java" contentType="textml; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>ç²èåå°ç®¡çç³»ç»</title>
<link rel="stylesheet" rev="stylesheet" href="../${ctx }/css/style.css" type="text/css" media="all" />


<script language="JavaScript" type="text/javascript">
function tishi()
{
  var a=confirm('ÃÃ½Â¾ÃÂ¿Ã¢ÃÃÂ±Â£Â´Ã¦ÃÃÂ¸ÃÃÃÃÂ±Â»Ã¹Â±Â¾ÃÃÃÂ¢Â£Â¬ÃÃºÂ¿ÃÃÃÃÃÂ¸ÃÂ»Ã²Â±Â£ÃÃ´Â¸ÃÃÃÃÂ¢Â¡Â£');
  if(a!=true)return false;
  window.open("Â³Ã¥ÃÂ»ÃÂ³.htm","","depended=0,alwaysRaised=1,width=800,height=400,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
}

function check()
{
document.getElementById("aa").style.display="";
}


function link(){
alert('Â±Â£Â´Ã¦Â³ÃÂ¹Â¦Â£Â¡');
    document.getElementById("fom").action="xuqiumingxi.html";
   document.getElementById("fom").submit();
}



</script>
<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>

<body class="ContentBody">
  <form action="" method="post" enctype="multipart/form-data" name="fom" id="fom" target="sypost" >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >ååæ·»å </th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		<tr><td align="left">
		<input type="button" name="Submit" value="ä¿å­" class="button" onclick="alert('ä¿å­æå');"/>
			
			<input type="button" name="Submit2" value="è¿å" class="button" onclick="window.history.go(-1);"/>
		</td></tr>

		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>æ·»å </legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					 
					  <tr>
					    <td nowrap align="right" width="13%">åç§°:</td>
					    <td width="41%"><input name="text" class="text" style="width:250px" type="text" size="40" />
				        <span class="red"> *</span></td>
					    
					    </tr>
					  <tr>
					    <td nowrap align="right">ä»·æ ¼:</td>
					    <td><input name="" id="" class="text" style="width:154px" /></td>
					    
					  </tr>
					   <tr>
					    <td nowrap align="right">åç±»:</td>
					    <td><select name="select2" >
                          <option  selected="selected">==éæ©åç±»==</option>
                          <option>æ ¹èç±»</option>
                          <option>èèç±»</option>
                          <option>å¶èç±»</option>
                          <option>æèç±»</option>
                          
                        </select></td>
					    
					  </tr>
					  <tr>
					    <td nowrap align="right" height="120px">æè¿°:</td>
					    <td colspan="3"><textarea id="textarea" name="textarea" rows="5" cols="80"></textarea></td>
					    </tr>
					  </table>
			 <br />
				</fieldset>			</TD>
		</TR>
		
		</TABLE>
	
	
	 </td>
  </tr>
  

		
		
		
		
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input type="button" name="Submit" value="ä¿å­" class="button" onclick="link();"/>
			
			<input type="button" name="Submit2" value="è¿å" class="button" onclick="window.history.go(-1);"/></TD>
		</TR>
		</TABLE>
	
	
	 </td>
  </tr>
  
  
  
  
  </table>

</div>
</form>
</body>
</html>
