<%@ page contentType="text/html; charset=UTF-8"%>
<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	String calResult = request.getParameter("calResult");
	
	String result ="";
	if(calResult.equals("1")){
		result = String.format("%d + %d = %d",num1,num2,(num1+num2));
	} else if (calResult.equals("2")){
		result = String.format("%d - %d = %d",num1,num2,(num1-num2));
	} else if (calResult.equals("3")){
		result = String.format("%d * %d = %d",num1,num2,(num1*num2));
	} else if (calResult.equals("4")){
		result = String.format("%d / %d = %.1f",num1,num2,(num1/(double)num2));
	}
	
	request.setAttribute("resultStr", result);
		

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
	<jsp:forward page="Receive11.jsp"></jsp:forward>
	
	</div>
</body>
</html>