<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>쇼핑몰 관리자 홈페이지</title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<link href="/assets/css/font.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="white" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<center>
<br>
<jsp:include page="/include/admin-menu.jsp"/>
<hr width='900' size='3'>
<form name="form1" method="post" action="opts_update.html">
<input type="hidden" name="no1" value="1">
<input type="hidden" name="no2" value="1">

<table width="500" border="1" cellspacing="0" bordercolordark="white" bordercolorlight="black">
	<tr> 
		<td width="100" height="20" bgcolor="#CCCCCC" align="center">
			<font color="#142712">소옵션번호</font>
		</td>
		<td width="400" height="20"  bgcolor="#F2F2F2">1</td>
	</tr>
	<tr> 
		<td width="100" height="20" bgcolor="#CCCCCC" align="center">
			<font color="#142712">소옵션명</font>
		</td>
		<td width="400" height="20"  bgcolor="#F2F2F2">
			<input type="text" name="name" value="XL" size="20" maxlength="20">
		</td>
	</tr>
</table>
<br>
<table width="500" border="0" cellspacing="0" cellpadding="7">
	<tr> 
		<td align="center">
			<input type="submit" value="수 정 하 기"> &nbsp;&nbsp
			<a href="opts.jsp"><input type="button" value="이 전 화 면"></a>
		</td>
	</tr>
</table>

</form>

</center>

</body>
</html>
