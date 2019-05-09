<%@page import="jdk.internal.org.objectweb.asm.tree.TryCatchBlockNode"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%-- <%
	request.setCharacterEncoding("UTF-8");
	String result="";
	try
	{
		int num = Integer.parseInt(request.getParameter("dan"));
		
		for(int i=1; i<10 ; i++){
			result += num+"*"+i +"="+ (num*i)+"<br>";
		}
	} catch (Exception e)
	{
		result ="정확히 입력하세요";
	}
	
%> --%>

<%
	request.setCharacterEncoding("UTF-8");
	int n = Integer.parseInt(request.getParameter("dan"));
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

		<h3>결과 :</h3>

		<p>
			<%-- <%for(int i=1; i<=9;i++) 
		{%>
		<%=result%>
		<%=n %> *<%=i %>  = <%=(n*i) %><br>
		<%} %> --%>
			<%
				for (int i = 1; i < 10; i++)
				{
					out.print( n + "*" + i + "=" + (n * i) + "<br>");
				}
			%>

		</p>

	</div>


</body>
</html>