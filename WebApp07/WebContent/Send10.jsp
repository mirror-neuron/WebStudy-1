<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>데이터 송수신 실습</h1>
		<hr>
	</div>
	<!-- send10.jsp -> send10_re.jsp->receive10.jsp -->
	<!-- send10.jsp -> send10_for.jsp->receive10.jsp -->
	<!-- 사용자의 최초 요청 페이지 -->
	<div>
		<p>포워딩 및 리다이렉크</p>
	</div>
	<div>
		<form action="" method="post">
		이름 : <input type="text" name ="userName">
		<Br><br>
		<button type="submit" style="width:150px;" onclick="this.form.action='Send10_re.jsp'">리다이렉트</button>
		<button type="submit" style="width:150px;"  onclick="this.form.action='Send10_for.jsp'">포워드</button>
		
		</form>

	</div>
</body>
</html>