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
		<p>table.jsp => table_ok.jsp</p>
	</div>
	<div>
		<h2>radio,select 데이터 전송</h2>
		<!--action 속성 지정시 [Hap_ok.jsp]로 지정해도 되고 [/WebApp05/Hap_ok.jsp]로 지정해도 된다.  -->
		<form action="Table_ok.jsp" method="post">
			<table class="table">
				<tr>
					<th>가로</th>
					<td><input type="text" name="su1" ></td>
				</tr>
				<tr>
					<td>세로</td>
					<td><input type="text" name="su2" ></td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="submit" class="btn">결과확인</button>
					</td>
				</tr>
			</table>




		</form>
	</div>

</body>
</html>