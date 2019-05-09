<%@ page contentType="text/html; charset=UTF-8"%>
<%
	//  스크립트 릿 영역 -> jsp에서 java코드 기술하는 영역
	int a = 10, b = 5, c;
	c = a + b;
	// 자바 코드의 실행결과는 표현식애 의해 html 브라우저 영역에 출력된다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>jsp 관찰하기</h1>
		<hr>
	</div>
	<div>
		<!--표현식  -->
		<h2>
			합 :
			<%=a%>
			+
			<%=b%>
			=
			<%=c%></h2>
		<hr>
	</div>
	<%
		// 스크립트 릿
		//out은 내장객체로서 출력 스트림이다.
		out.print("합" + a + "+" + b + "=" + c);
		out.println("합" + a + "+" + b + "=" + c);
		out.println("합" + a + "+" + b + "=" + c);

		out.print("<br><Br>");
		out.println("합 : " + a + "+" + b + "=" + c + "<Br>");

		String str = String.format("합 : %d+ %d = %d", a, b, c);
		out.print(str);
		out.print("<br><br>");
		str = String.format("합 : %d +%d =%d<br>", a, b, c);
		out.print(str);
		out.print(str);
	
	%>
	<br>
	<Br>
	<Br>
</body>
</html>