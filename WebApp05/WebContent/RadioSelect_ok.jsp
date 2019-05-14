<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String sexual = request.getParameter("sexual");
	String jun = request.getParameter("jun");
	String hobbys[] = request.getParameterValues("hobby");

	String genderStr = "";
	if (sexual.equals("m"))
	{
		genderStr = "남자";
	} else if (sexual.equals("f"))
	{
		genderStr = "여자";
	} else
	{
		genderStr = "확인불가";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h2>radio,select 데이터 수신</h2>
		<div>
			<h3>수신한 데이터</h3>
			<p>
				이름 :
				<%=name%></p>
			<p>
				성별 :
				<%=genderStr%></p>
			<p>
				전공 :
				<%=jun%></p>
			<p>
				취미 :
				<%
				if (hobbys != null){
					for (String s : hobbys){%>
						<%=s + "&nbsp;"%>
			   		<%}%>	
			   <%} else { %>
				<%="취미없음"%>
				<%}
				%>



			</p>

		</div>
	</div>

</body>
</html>