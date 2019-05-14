<%@ page contentType="text/html; charset=UTF-8"%>
  <%
  request.setCharacterEncoding("UTF-8");
  String name = request.getParameter("name");
  String Tel = request.getParameter("tel");
%>
    <!DOCTYPE html>
    <html>
      <head>
        <meta charset="UTF-8">
          <title>Insert title here</title>
        </head>
        <body>
          <div >
            <h1>데이터 송수신 실습01</h1>
            <hr></div>

            <%= name%>
            님 회원가입이 완료되었습니다.
            <br>회원님께서 등록하신 전화번호는
              <%=Tel%>
              입니다.

            </body>
          </html>
