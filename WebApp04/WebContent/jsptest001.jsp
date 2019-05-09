<%@ page contentType="text/html; charset=UTF-8"%>
<%
	// 스크립트 릿(scriptlet) 영역
	String name = "보라보라";
	name += "는 홍길동이 아니다.";
	
	int result;
	result = 10+20;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp001.jsp</title>
</head>
<body>
	<div>
		<h1>jsp관찰하기</h1>
	</div>

	<div>
		<h2><%=name%></h>
		<h2><%=result%></h>
	</div>

</body>
</html>