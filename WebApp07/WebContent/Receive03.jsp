<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <%
    try{
    request.setCharacterEncoding("UTF-8");
    int num1 = Integer.parseInt(request.getParameter("num1"));
    int num2 = Integer.parseInt(request.getParameter("num2"));
    String syntext = request.getParameter("syntext");
    String result ="";
    if (syntext.equals("plus")) {

      result = String.valueOf(num1+num2);

    } else if (syntext.equals("minus")) {

      result = String.valueOf(num1-num2);

    } else if (syntext.equals("times")) {

      result = String.valueOf(num1*num2);

    } else if (syntext.equals("dev")) {

      result = String.format("%1.f",num1/(double)num2);
    }
  %>
  입력하신   <%=num1%> 과 <%=num2%>의 연산결과는 <%=result%> 입니다.

  <%} catch(Exception e){%>
  	값을 전부 입력해주세요.
  <% }%>

</body>
</html>
