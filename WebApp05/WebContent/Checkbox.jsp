<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
	<div>
		<h1>JSP 이용한 데이터 송수신 실습</h1>
		<hr>
		<p>checkbox.jsp => checkbox_of.jsp</p>
	</div>
	<div>
		<!--action 속성 지정시 [Hap_ok.jsp]로 지정해도 되고 [/WebApp05/Hap_ok.jsp]로 지정해도 된다.  -->
		<form action="Checkbox_ok.jsp" method="post">
			이름 : <input type="text" name="name"><br> 메모 :
			<textarea rows="5" cols="30" name="memo"></textarea><br> <br>
			이상형<br>
			<label><input type="checkbox" name ="check" value="이유">아이유</label>
			<label><input type="checkbox" name ="check"value="일리">에일리</label>
			<label><input type="checkbox" name ="check"value="수지">수지</label>
			<label><input type="checkbox" name ="check"value="동원">강동원</label>
			<label><input type="checkbox" name ="check"value="은우">차은우</label>
			<label><input type="checkbox" name ="check" value="공유">공유</label>
			<br>
			
			<input type="submit" value="전송" class="btn" style="width:200px;">
			
			
		
		
		</form>

	</div>

</body>
</html>