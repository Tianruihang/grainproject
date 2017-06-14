<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
.tabfont01 {  
  font-family: "宋体";
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
function sousuo(){
  window.open("gaojisousuo.jsp","","depended=0,alwaysRaised=1,width=800,height=510,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
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

function link(){
    document.getElementById("fom").action="kehu.jsp";
   document.getElementById("fom").submit();
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
        <td width="519"><label>商品名称:
            <input name="text" type="text" nam="gongs" />
        </label>
          </input>
          <input name="Submit" type="button" class="right-button02" value="搜索" /></td>
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
               <td height="20"><span class="newfont07">选择<a href="#" class="right-font08" onclick="selectAll();">全选</a>-<a href="#" class="right-font08" onclick="unselectAll();">反选</a></span>
               <input name="Submit" type="button" class="right-button08" value="删除所选信息" /> <a href="addbianji.htm"></a>
                </td>
          </tr>
              <tr>
                <td height="40" class="font42"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">

                            <tr>
                    <td height="20" colspan="14" align="center" bgcolor="#EEEEEE"class="tablestyle_title"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;商品列表 &nbsp;</td>
                    </tr>
                  <tr>
            <td width="8%" align="center" bgcolor="#EEEEEE">选择</td>
             <td width="12%" height="20" align="center" bgcolor="#EEEEEE">ID</td>
           <td width="12%" height="20" align="center" bgcolor="#EEEEEE">名称</td>
                    <td width="7%" align="center" bgcolor="#EEEEEE">类别</td>
                    <td width="10%" align="center" bgcolor="#EEEEEE">价格</td>
                    <td width="14%" align="center" bgcolor="#EEEEEE">日期</td>
                    <td width="14%" align="center" bgcolor="#EEEEEE">供应商</td>
                    <td width="11%" align="center" bgcolor="#EEEEEE">操作</td>
                  </tr>
                  
                  
                  <c:forEach items="${page.list}" var="s">
                  <tr>
            <td bgcolor="#FFFFFF"><input type="checkbox" name="delid"/></td>
            <td width="12%" height="20" align="center" bgcolor="#FFFFFF">${s.meatId}</td>
          <td height="20" bgcolor="#FFFFFF"><a href="listyuangongmingxi.jsp">${s.meatName}</a></td>
                    <td bgcolor="#FFFFFF"><a href="listyuangongmingxi.jsp">${s.meatClass}</a></td>
                    <td height="20" bgcolor="#FFFFFF">${s.meatPrice}</td>
                    <td bgcolor="#FFFFFF">${s.meatDate}</td>
                   <td bgcolor="#FFFFFF">${s.supply.supplyName} </td>
          <td bgcolor="#FFFFFF"><a href="${ctx}/meat/deleteMeat?meatId=${s.meatId }">删除</a>&nbsp;|&nbsp;<a href="${ctx}/files/addbianji.jsp">编辑</a></td>
                  </tr>
                 </c:forEach> 
                 
                  </tr>
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
						<a name="pagen" href="${ctx}/meat/list?pageNum=${pageNum }">${pageNum }</a>
					</c:forEach>
                    </tr>
                    </tr>
                    </td>
                    </tr>
                </table></td>
              </tr>
          </table></td>
        </tr>
      </table>
 

</form>
</body>
</html>
