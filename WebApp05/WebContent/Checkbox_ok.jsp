<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String memo = request.getParameter("memo").replaceAll("\r\n", "<br>");
	/* jdk 1.5이후에서 replaceAll() 사용 가능.
	처리한 결과물을 memo에 대입*/

	/*같은 name 속성의 값을 가진 데이터 여러개를 받는 경우 이를 배열처리해야한다.  */
	String[] checkbox = request.getParameterValues("check");
	/* 배열 데이터를 수신하여 처리할 경우...
	   수신된 데이터가 전혀 없는 경우는 배열의 값이 null이 되기 때문에  null에 대한 검사가 반드시 필요하다.*/
	String result = "";
	if (checkbox != null)
	{

		for (int i = 0; i < checkbox.length; i++)
		{

			result += checkbox[i] + "&nbsp;";
		}
	} else
	{
		result = "no";
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
		<h1>JSP 이용한 데이터 송수신 실습</h1>
		<hr>
		<p>checkbox.jsp => checkbox_of.jsp</p>
	</div>
	<div>
		<h2>수신 데이터</h2>
		<h3>
			이름 :
			<%=name%></h3>
		<h3>메모</h3>
		<p><%=memo%></p>
		<h3>
			이상형 :
			<%=result%>

		</h3>
	</div>

</body>
</html>