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
		<p>gugudan.jsp => gugudan_ok.jsp</p>
	</div>
	<div>
		<!--action 속성 지정시 [Hap_ok.jsp]로 지정해도 되고 [/WebApp05/Hap_ok.jsp]로 지정해도 된다.  -->
		<form action="Gugudan_ok.jsp" method="post">
			<table>
				<tr>
					<th>원하는 단 입력</th>
					<td><input type="text" name="dan"></td>
				</tr>
				<tr>

					<td><input type="submit" value="결과 확인 " class="btn"
						style="width: 100px;"></td>
				</tr>


			</table>



		</form>

	</div>


</body>
</html>