﻿<%@ page language="java" contentType="textml; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>粟苗后台管理系统</title>
<link rel="stylesheet" rev="stylesheet" href="../${ctx }/css/style.css" type="text/css" media="all" />


<script language="JavaScript" type="text/javascript">


function check()
{
document.getElementById("aa").style.display="";
}


function link(){
alert('保存成功');
    document.getElementById("fom").action="${ctx }/shangpinguanliyh.jsp";
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
      <th class="tablestyle_title" >商品添加</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		<tr><td align="left">
		<input type="button" name="Submit" value="保存" class="button" onclick="alert('保存成功');"/>
			
			<input type="button" name="Submit2" value="返回" class="button" onclick="window.history.go(-1);"/>
		</td></tr>

		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>添加</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					 
					  <tr>
					    <td nowrap align="right" width="13%">名称:</td>
					    <td width="41%"><input name="text" class="text" style="width:250px" type="text" size="40" />
				        <span class="red"> *</span></td>
					    
					    </tr>
					  <tr>
					    <td nowrap align="right">价格:</td>
					    <td><input name="" id="" class="text" style="width:154px" /></td>
					    
					  </tr>
					   <tr>
					    <td nowrap align="right">分类:</td>
					    <td><select name="select2" >
                          <option  selected="selected">==选择分类==</option>
                          <option>根菜类</option>
                          <option>茎菜类</option>
                          <option>叶菜类</option>
                          <option>果菜类</option>
                          
                        </select></td>
					    
					  </tr>
					  <tr>
					    <td nowrap align="right" height="120px">描述:</td>
					    <td colspan="3"><textarea id="textarea" name="textarea" rows="5" cols="80"></textarea></td>
					    </tr>
					    <tr>
					   <td width="14%" align="right" nowrap>上传图片:</td>
					    <td width="86%" colspan="3"><input type="file" name="imgUpload" id="imgUpload"> </td>	
					    </tr>
					  </table>
					   <script>  
           $("#imgUpload").change(function(e) {  
          for (var i = 0; i < e.target.files.length; i++) {  
            var file = e.target.files.item(i);            
            var freader = new FileReader();  
            freader.readAsDataURL(file);  
            freader.onload = function(e) {  
              var src = e.target.result;  
              $("#uploadhead").attr("src",src);  
            }  
          }  
        });  
        </script>  
			 <br />
				</fieldset>			</TD>
		</TR>
		
		</TABLE>
	
	
	 </td>
  </tr>
  

		
		
		
		
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input type="button" name="Submit" value="保存" class="button" onclick="link();"/>
			
			<input type="button" name="Submit2" value="返回" class="button" onclick="window.history.go(-1);"/></TD>
		</TR>
		</TABLE>
	
	
	 </td>
  </tr>
  
  
  
  
  </table>

</div>
</form>
</body>
</html>
