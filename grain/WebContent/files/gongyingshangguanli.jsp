<%@ page language="java" contentType="textml; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset= utf-8" />
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
.font051 {font-family: "ËÎÌå";
  font-size: 12px;
  color: #333333;
  text-decoration: none;
  line-height: 20px;
}
.font201 {font-family: "ËÎÌå";
  font-size: 12px;
  color: #FF0000;
  text-decoration: none;
}
.button {
  font-family: "ËÎÌå";
  font-size: 14px;
  height: 37px;
}
html { overflow-x: auto; overflow-y: auto; border:0;} 
-->
</style>

<link href="../${ctx }/css/css.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">

</script>
<link href="../${ctx }/css/style.css" rel="stylesheet" type="text/css" />
</head>
<SCRIPT language=JavaScript>
function sousuo(){
  window.open("gaojisousuo.htm","","depended=0,alwaysRaised=1,width=800,height=510,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
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
    document.getElementById("fom").action="kehu.htm";
   document.getElementById("fom").submit();
}

</SCRIPT>

<body>
<form name="fom" id="fom" method="post">
<table width="100%" border="0" cellspacing="0" cellpadding="0">

  <tr>
    <td height="30">      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="62" background="../${ctx }/images/nav04.gif">
            
       <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
        <td width="24"><img src="../${ctx }/images/ico07.gif" width="20" height="18" /></td>
        <td width="519"><label>供应商名称:
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
               <input name="Submit" type="button" class="right-button08" value="删除所选信息" />
                <a href="addgongyingshang.htm"><button type="button" class="right-button08">添加信息</button></a>
                </td>
          </tr>
              <tr>
                <td height="40" class="font42"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">

                    <tr>
                    <td height="20" colspan="14" align="center" bgcolor="#EEEEEE"class="tablestyle_title"> 
                    供应商列表
                    </td>
                    </tr>
                  <tr>
            <td width="8%" align="center" bgcolor="#EEEEEE">选择</td>
             <td width="12%" height="20" align="center" bgcolor="#EEEEEE">ID</td>
           <td width="12%" height="20" align="center" bgcolor="#EEEEEE">名称</td>
                    <td width="7%" align="center" bgcolor="#EEEEEE">联系方式</td>
                    <td width="10%" align="center" bgcolor="#EEEEEE">简介</td>
                   
                    <td width="11%" align="center" bgcolor="#EEEEEE">操作</td>
                  </tr>
                  <tr>
            <td bgcolor="#FFFFFF"><input type="checkbox" name="delid"/></td>
            <td width="12%" height="20" align="center" bgcolor="#FFFFFF">1</td>
          <td height="20" bgcolor="#FFFFFF"><a href="gerenjianjiechakan.htm">张三</a></td>
                    <td bgcolor="#FFFFFF"><a href="gerenjianjiechakan.htm">1521223123</a></td>
                    <td height="20" bgcolor="#FFFFFF">简介</td>
          
                   
          <td bgcolor="#FFFFFF"><a href="kehu.htm">删除</a></td>
                  </tr>
                  <tr>
            <td bgcolor="#FFFFFF"><input type="checkbox" name="delid"/></td>
            <td width="12%" height="20" align="center" bgcolor="#FFFFFF">2</td>
          <td height="20" bgcolor="#FFFFFF"><a href="gerenjianjiechakan.htm">李四</a></td>
                    <td bgcolor="#FFFFFF"><a href="gerenjianjiechakan.htm">1521231233</a></td>
                    <td height="20" bgcolor="#FFFFFF">简介</td>
                  
                    
          <td bgcolor="#FFFFFF"><a href="kehu.htm">删除</a></td>
                  </tr>
                  <tr>
            <td bgcolor="#FFFFFF"><input type="checkbox" name="delid"/></td>
            <td width="12%" height="20" align="center" bgcolor="#FFFFFF">3</td>
          <td height="20" bgcolor="#FFFFFF"><a href="gerenjianjiechakan.htm">王五</a></td>
                    <td bgcolor="#FFFFFF"><a href="gerenjianjiechakan.htm">1521233123</a></td>
                    <td height="20" bgcolor="#FFFFFF">简介</td>
                   
                    
          <td bgcolor="#FFFFFF"><a href="kehu.htm">删除</a></td>
                  </tr>
                  <tr>
            <td bgcolor="#FFFFFF"><input type="checkbox" name="delid"/></td>
            <td width="12%" height="20" align="center" bgcolor="#FFFFFF">4</td>
          <td height="20" bgcolor="#FFFFFF"><a href="gerenjianjiechakan.htm">赵六</a></td>
                    <td bgcolor="#FFFFFF"><a href="gerenjianjiechakan.htm">1521233124</a></td>
                    <td height="20" bgcolor="#FFFFFF">简介</td>
                              
          <td bgcolor="#FFFFFF"><a href="kehu.htm">删除</a></td>
                  </tr>
                  <tr>
            <td bgcolor="#FFFFFF"><input type="checkbox" name="delid"/></td>
            <td width="12%" height="20" align="center" bgcolor="#FFFFFF">5</td>
          <td height="20" bgcolor="#FFFFFF"><a href="gerenjianjiechakan.htm">马七</a></td>
                    <td bgcolor="#FFFFFF"><a href="gerenjianjiechakan.htm">1521233125</a></td>
                    <td height="20" bgcolor="#FFFFFF">简介</td>          
                    
          <td bgcolor="#FFFFFF"><a href="kehu.htm">删除</a></td>
                  </tr>
                 
                 
                  </tr>
                </table></td>
              </tr>
            </table></td>
        </tr>
      </table>
      <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="6"><img src="../${ctx }/images/spacer.gif" width="1" height="1" /></td>
        </tr>
        <tr>
          <td height="33"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="right-font08">
              <tr>
                <td width="50%">共 <span class="right-text09">5</span>页| 第 <span class="right-text09">1</span>页</td>
                <td width="49%" align="right">[<a href="#" class="right-font08">首页</a> | <a href="#" class="right-font08">上一页</a> | <a href="#" class="right-font08">下一页</a> | <a href="#" class="right-font08">末页</a>] 转至</td>
                <td width="1%"><table width="20" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="1%"><input name="textfield3" type="text" class="right-textfield03" size="1" /></td>
                      <td width="87%"><input name="Submit23222" type="submit" class="right-button06" value=" " />
                      </td>
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
