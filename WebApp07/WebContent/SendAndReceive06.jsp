<%@ page contentType="text/html; charset=UTF-8"%>
<%
	// 데이터 수신 (SendAndReceive06.jsp)
	request.setCharacterEncoding("UTF-8");
	String temp = request.getParameter("userInput");
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/main.css">
<meta charset="UTF-8">
<title>SendAndReceive06.jsp</title>
</head>
<body>
	<!-- <div>
		<form action="#">
		
		 입력 : <input type ="text" id ="userInput" name ="userInput">
		 <br> <button type ="submit" class="btn">테스트</button>
		 <button type ="reset" class="btn">리셋</button>
		
		</form>
	
	</div> -->

	<div>
		<!-- form의 action 속성을 [action=""]과 같이 구성하면 페이지 요청 및 데이터 전송에 대한 수신처는 자기 자신 -->
		<!-- form의 action 속성을 생략하여 [<form  method="post">]와 같이 구성하더라도 페이지 요청 및 데이터 전송에 대한 수신처는 자기 자신 -->
		<form method="post">

			입력 : <input type="text" id="userInput" name="userInput"> <br>
			<button type="submit" class="btn">테스트</button>
			<button type="reset" class="btn">리셋</button>

		</form>

	</div>
	
	<div>
		<h2>수신된 데이터 : <%=temp %></h2>
	</div>

</body>
</html>