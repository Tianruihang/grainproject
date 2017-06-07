<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset="utf-8" />
<title>粟苗后台管理系统</title>
<style type="text/css">
<!--
body {
  margin-left: 0px;
  margin-top: 0px;
  margin-right: 0px;
  margin-bottom: 0px;
}
.tabfont01 {  
  font-family: "ËÎÌå";
  font-size: 9px;
  color: #555555;
  text-decoration: none;
  text-align: center;
}
.font051 {font-family: "宋体";
  font-size: 12px;
  color: #333333;
  text-decoration: none;
  line-height: 20px;
}
.font201 {font-family: "宋体";
  font-size: 12px;
  color: #FF0000;
  text-decoration: none;
}
.button {
  font-family: "宋体";
  font-size: 14px;
  height: 37px;
}
html { overflow-x: auto; overflow-y: auto; border:0;} 
-->
</style>

<link href="${ctx}/css/css.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">

</script>
<link href="${ctx}/css/style.css" rel="stylesheet" type="text/css" />
</head>
<SCRIPT language=JavaScript>
function search(){
	var s=$("#searchParam").val();
	window.location.href="${ctx}/user/listuser?searchParam="+s;
	
	$("[UserName='pagen']").each(function(key,value){
		$(this).attr("href",$(this).attr("href")+"&searchParam='"+s+"'");
	});
}
function selectAll(){
  var obj = document.fom.elements;
  for (var i=0;i<obj.length;i++){
    if (obj[i].name == "delid"){
      obj[i].checked = true;
    }
  }
}

function unselectAll(){
  var obj = document.fom.elements;
  for (var i=0;i<obj.length;i++){
    if (obj[i].name == "delid"){
      if (obj[i].checked==true) obj[i].checked = false;
      else obj[i].checked = true;
    }
  }
}

function del(){
	var det =[]; 
	$('input[name="delid"]:checked').each(function(){ 
	det.push($(this).val()); 
	}); 
	alert(det.length==0 ?'你还没有选择任何内容！':det); 
	det.action="${ctx}/user/deleteuser";
}

</SCRIPT>

<body>
<form name="fom" id="fom" method="post">
<table width="100%" border="0" cellspacing="0" cellpadding="0">

  <tr>
    <td height="30">      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="62" background="${ctx}/images/nav04.gif">
            
       <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
        <td width="24"><img src="${ctx}/images/ico07.gif" width="20" height="18" /></td>
        <td width="519"><label>用户名称:
            <input id="searchParam" name="UserName" type="text" value="${searchParam }" />
           
           
        </label>
          </input>
          <input name="Submit" type="button" class="right-button02" value="搜索" onclick="search()"/></td>
         <td width="679" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>  
        </tr>
          </table></td>
        </tr>
    </table></td></tr>
  <tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
             <tr>
               <td height="20"><span class="newfont07">选择<a href="#" class="right-font08" onclick="selectAll()">全选</a>-<a href="#" class="right-font08" onclick="unselectAll();">反选</a></span>
               <input name="Submit" type="button" class="right-button08" value="删除所选信息" onclick="del()"/> 
            <!--  <input name="Submit" type="button" class="right-button08" value="添加人员信息" onclick="link();" />-->   
                <!--  <a href="addbianji.jsp"><button type="button" class="right-button08">添加信息</button></a> -->
                </td>
          </tr>
              <tr>
                <td height="40" class="font42"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">

                    <tr>
                    <td height="20" colspan="14" align="center" bgcolor="#EEEEEE"class="tablestyle_title">
                    用户列表 
                    </td>
                    </tr>
                  <tr>
            <td width="8%" align="center" bgcolor="#EEEEEE">选择</td>
             <td width="12%" height="20" align="center" bgcolor="#EEEEEE">ID</td>
           <td width="12%" height="20" align="center" bgcolor="#EEEEEE">名称</td>
                    <td width="7%" align="center" bgcolor="#EEEEEE">联系方式</td>         
                   
                    <td width="11%" align="center" bgcolor="#EEEEEE">操作</td>
                  </tr>
                   <c:forEach items="${page.list}" var="s">
                  <tr>
            <td bgcolor="#FFFFFF"><input type="checkbox" name="delid"/></td>
            <td width="12%" height="20" align="center" bgcolor="#FFFFFF">${s.userId }</td>
          <td height="20" bgcolor="#FFFFFF"><a href="listyuangongmingxi.jsp">${s.userName }</a></td>
                    <td bgcolor="#FFFFFF"><a href="listyuangongmingxi.jsp">${s.userNumber }</a></td>
                    
          <td bgcolor="#FFFFFF"><a href="${ctx}/user/deleteuser?userId=${s.userId }">删除</a></td>
                  </tr>
                
                  
                </c:forEach> 
                 
                </table></td>
              </tr>
            </table></td>
        </tr>
      </table>
      <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="6"><img src="${ctx}/images/spacer.gif" width="1" height="1" /></td>
        </tr>
        <tr>
          <td height="33"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="right-font08">
              <tr>
                <tr>
               <c:forEach begin="1" end="${page.totalPageNum }" var="pageNum">
						<a name="pagen" href="${ctx}/user/list?pageNum=${pageNum }">${pageNum }</a>
					</c:forEach>
                    </tr>
                    </tr>
                </table></td>
              </tr>
          </table></td>
        </tr>
      </table></td>
  </tr>
</table>
</form>
</body>
</html>
