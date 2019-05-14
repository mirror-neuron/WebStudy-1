<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	String gender = request.getParameter("gender");
	String city = request.getParameter("city");
	String subject[] = request.getParameterValues("subject");

	String subjectlist = "";
	if (subject != null)
	{
		for (String s : subject)
		{

			subjectlist += s + "&nbsp;";

		}

	} else
	{
		subjectlist = "없음";
	}
	/* 추후에는 수신된 데이터를 쿼리문을 통해 DB에 입력하는 과정등이 포함될 것임을 생각하며 작업을 진행할 수 있도록 하자. */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	아이디 :
	<%=id%><Br>비밀번호 :
	<%=pwd%><Br>이름 :
	<%=name%><Br>전화번호 :
	<%=tel%><Br>성별 :
	<%=gender%><Br>지역 :
	<%=city%><Br>수강과목 :<%=subjectlist%><Br>

</body>
</html>
