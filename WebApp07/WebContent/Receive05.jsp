<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	int dan = Integer.parseInt(request.getParameter("dan"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%for(int i =1; i<10; i++) {%>
	<%=dan%> * <%=i %> = <%=dan*i %> <br>
	<%} %>
</body>
</html>