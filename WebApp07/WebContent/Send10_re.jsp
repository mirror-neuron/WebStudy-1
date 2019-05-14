<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String userName=request.getParameter("userName");
	
	request.setAttribute("message", "반갑습니다.");
	//-- request객체의 key(message)의 값 안에 "반갑습니다" value를 넣는 작업 수행
	//※ 리다이렉트
	response.sendRedirect("Receive10.jsp");
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<div>
		<h1>데이터 송수신 실습 10</h1>
		<hr>
	</div>
	<div>
		<p>리다이렉트</p>
	</div>
	<div>
		<p> 이름 : <%=userName %></p>
	</div>

</body>
</html>