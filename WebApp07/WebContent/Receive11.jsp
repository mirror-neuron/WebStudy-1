<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String result = (String) request.getAttribute("resultStr");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
	<div>
		<h1>데이터 송수신 실습 10</h1>
		<hr>
	</div>
	<div>
		<h2>진행상황 </h2>
		<%=result %>
	</div>
</body>
</html>