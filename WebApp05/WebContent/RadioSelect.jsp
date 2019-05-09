<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>JSP 이용한 데이터 송수신 실습</h1>
		<hr>
		<p>RadioSelect.jsp => RadioSelect_ok.jsp</p>
	</div>
	<div>
		<h2>radio,select 데이터 전송</h2>
		<!--action 속성 지정시 [Hap_ok.jsp]로 지정해도 되고 [/WebApp05/Hap_ok.jsp]로 지정해도 된다.  -->
		<form action="RadioSelect_ok.jsp" method="post">

			이름 <input type="text" name="name"> <br> 성별 <label><input
				type="radio" value="m" name="sexual">남자</label> <label><input type="radio"
				value="f" name="sexual">여자</label> <br>
			<br> 전공 <select name ="jun">
				<option value="국문학">국문</option>
				<option value="영문학">영문</option>
				<option value="컴공학">컴퓨터</option>
				<option value="수학">수학</option>
				<option value="신문방송학">신문방송</option>
				<option value="경영학">경영</option>

			</select> <br>
			<Br> 취미 <select size="6" multiple="multiple" name ="hobby">
				<option value="영화감상">영화감상</option>
				<option value="음악감상">음악감상</option>
				<option value="배드민턴">배드민턴</option>
				<option value="맛집투어">맛집투어</option>
				<option value="취침소등">취침소등</option>
				<option value="암벽등반">암벽등반</option>

			</select> <br>
			<Br> <input type="submit" value="내용전송 " class="btn"
				style="width: 100px;">

		
		</form>
	</div>

</body>
</html>