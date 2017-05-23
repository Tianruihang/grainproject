<%@ page language="java" contentType="textml; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>粟苗后台管理系统</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<link href="${ctx }/css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="147" background="${ctx }/images/top02.gif"><img src="${ctx }/images/top03.gif" width="776" height="147" /></td>
  </tr>
</table>
<table width="562" border="0" align="center" cellpadding="0" cellspacing="0" class="right-table03">
  <tr>
   
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="31%" height="35" class="login-text02">用户名 ：<br /></td>
        <td width="69%"><input name="textfield" type="text" size="30" /></td>
      </tr>
      <tr>
        <td height="35" class="login-text02">密码 ：<br /></td>
        <td><input name="textfield2" type="password" size="33" /></td>
      </tr>
      <tr>
        <td height="35" class="login-text02">确认密码 ：<br /></td>
        <td><input name="textfield2" type="password" size="33" /></td>
      </tr>
      <tr>
        <td width="31%" height="35" class="login-text02">联系方式 ：<br /></td>
        <td width="69%"><input name="textfield" type="text" size="30" /></td>
      </tr>
       
      <tr>
         <td width="14%" align="right" nowrap  class="login-text02">简介:</td>
        <td width="86%" colspan="3"><textarea name="textarea3" cols="105" rows="20"></textarea></td>
            </tr>
       <tr>

          <td width="14%" align="right" nowrap  class="login-text02">上传图片:</td>
          <td width="86%" colspan="3"><input type="file" name="imgUpload" id="imgUpload"> </td>
            </tr>
      <tr>
        <td height="35">&nbsp;</td>
        <td>
        <button class="right-button02" type="submit">注册</button>
         
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>