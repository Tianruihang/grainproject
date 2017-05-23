<%@ page language="java" contentType="textml; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>粟苗后台管理系统</title>
<link rel="stylesheet" rev="stylesheet" href="../${ctx }/css/style.css" type="text/css" media="all" />

<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
.del{background:url(../${ctx }/images/close2.png);
	width:30px;
	height:30px;
	display:none;
	position:absolute;
	top: -6px;right: -10px;text-indent:3000px;text-decoration:none}
</style>
</head>

<body class="ContentBody">
  <form action="" method="post" enctype="multipart/form-data" name="form" target="sypost" >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >个人简介编辑</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		<tr><td align="left">
		<input type="button" name="Submit" value="保存" class="button" onclick="alert('修改成功');"/>
			
			<input type="button" name="Submit2" value="返回" class="button" onclick="window.history.go(-1);"/>
		</td></tr>
		</TABLE>
	
	
	 </td>
  </tr>
  <TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>张三</legend>
					  <table border="0" cellpadding="5" cellspacing="1" style="width:100%">
					    
					    
					  <tr>
                        <td nowrap="nowrap" align="right">联系方式:</td>
					    <td><span class="red">
                          <input name="txt34222" type="text" class="text" style="width:154px" value="1333333" />
					      *</span></td>
					   
					    
					    </tr>
					  <tr>
					    <td width="14%" align="right" nowrap>简介:</td>
					    <td width="86%" colspan="3"><textarea name="textarea3" cols="105" rows="20"></textarea></td>
					  </tr>
					    <tr>
					    <td width="14%" align="right" nowrap>图片:</td>
					    <td width="86%" colspan="3"><img src="../${ctx }/images/20140410_095650.jpg"><input type="button" name="Submit" value="删除" class="button" onclick="alert('删除成功');"/></td>
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

		
		
		
		
		
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input type="button" name="Submit" value="保存" class="button" onclick="alert('保存成功');"/>
			
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
