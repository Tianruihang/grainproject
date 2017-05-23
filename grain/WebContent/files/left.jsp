<%@ page language="java" contentType="textml; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>
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
	background-image: url(../${ctx }/images/left.gif);
}
-->
</style>
<link href="../${ctx }/css/css.css" rel="stylesheet" type="text/css" />
</head>
<SCRIPT language=JavaScript>
function tupian(idt){
    var nametu="xiaotu"+idt;
    var tp = document.getElementById(nametu);
    tp.src="../${ctx }/images/ico05.gif";//Í¼Æ¬ico04Îª°×É«µÄÕý·½ÐÎ
	
	for(var i=1;i<30;i++)
	{
	  
	  var nametu2="xiaotu"+i;
	  if(i!=idt*1)
	  {
	    var tp2=document.getElementById('xiaotu'+i);
		if(tp2!=undefined)
	    {tp2.src="../${ctx }/images/ico06.gif";}//Í¼Æ¬ico06ÎªÀ¶É«µÄÕý·½ÐÎ
	  }
	}
}

function list(idstr){
	var name1="subtree"+idstr;
	var name2="img"+idstr;
	var objectobj=document.all(name1);
	var imgobj=document.all(name2);
	
	
	//alert(imgobj);
	
	if(objectobj.style.display=="none"){
		for(i=1;i<10;i++){
			var name3="img"+i;
			var name="subtree"+i;
			var o=document.all(name);
			if(o!=undefined){
				o.style.display="none";
				var image=document.all(name3);
				//alert(image);
				image.src="../${ctx }/images/ico04.gif";
			}
		}
		objectobj.style.display="";
		imgobj.src="../${ctx }/images/ico03.gif";
	}
	else{
		objectobj.style.display="none";
		imgobj.src="../${ctx }/images/ico04.gif";
	}
}

</SCRIPT>

<body>
<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
  <tr>
    <TD>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="207" height="55" background="../${ctx }/images/nav01.gif">
				<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="25%" rowspan="2"><img src="../${ctx }/images/ico02.gif" width="35" height="35" /></td>
					<td width="75%" height="22" class="left-font01">你好，<span class="left-font02">king</span></td>
				  </tr>
				  <tr>
					<td height="22" class="left-font01">
						[&nbsp;<a href="../${ctx }/login.jsp" target="_top" class="left-font01">退出</a>&nbsp;]</td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table>
		
		  <!--  ¿¼ÇÚÏµÍ³¿ªÊ¼    -->
	   <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img4" id="img4" src="../${ctx }/images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('4');" >人员管理</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree4" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
		<tr>
          <td width="9%" height="20" ><img id="xiaotu11" src="../${ctx }/images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="${ctx }/gongyingshangguanli.jsp" target="mainFrame" class="left-font03" onClick="tupian('11');">供应商管理</a></td>
        </tr>
	  	<tr>
          <td width="9%" height="20" ><img id="xiaotu11" src="../${ctx }/images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="${ctx }/yonghuguanli.jsp" target="mainFrame" class="left-font03" onClick="tupian('11');">用户管理</a></td>
        </tr>
      </table>

      <!--  ¿¼ÇÚÏµÍ³½áÊø    -->

        <TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img1" id="img1" src="../${ctx }/images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('1');" >商品管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree1" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu1" src="../${ctx }/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="${ctx }/shangpinguanli.jsp" target="mainFrame" class="left-font03" onClick="tupian('1');">蔬菜类</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu4" src="../${ctx }/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="${ctx }/shangpinguanli.jsp" target="mainFrame" class="left-font03" onClick="tupian('4');">水果类</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu2" src="../${ctx }/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="${ctx }/shangpinguanli.jsp" target="mainFrame" class="left-font03" onClick="tupian('2');">肉禽类</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu5" src="../${ctx }/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="${ctx }/shangpinguanli.jsp" target="mainFrame" class="left-font03" onClick="tupian('5');">水产类</a></td>
				</tr>
				
      </table>
		<!--  ÏîÄ¿ÏµÍ³½áÊø    -->

	  <!--  ¿Í»§ÏµÍ³¿ªÊ¼    -->
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12">
                  <img name="img2" id="img2" src="../${ctx }/images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('2');" >特价商品</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree2" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        
		<tr>
          <td width="9%" height="20" ><img id="xiaotu7" src="../${ctx }/images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="${ctx }/tejiashangpin.jsp" target="mainFrame" class="left-font03" onClick="tupian('7');">特价商品查看</a></td>
        </tr>
      </table>

	  <!--  ¿Í»§ÏµÍ³½áÊø    -->

	 



	  </TD>
  </tr>
  
</table>
</body>
</html>
