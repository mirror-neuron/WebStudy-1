<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	try
	{
		String name = request.getParameter("name");
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int mat = Integer.parseInt(request.getParameter("math"));
		int total = kor + eng + mat;
		double avg = total / 3.0;
		// String.format("%.1f",avg) 사용도 가능
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%=name%>님 성적처리가 완료되었습니다.
	<br> 회원님의 점수는 국어 :
	<%=kor%>, 영어 :
	<%=eng%>, 수학 :
	<%=mat%>입니다.
	<br> 총점은
	<%=total%>점, 평균은
	<%=avg%>
	입니다.

	<%
		} catch (Exception e)
		{
	%>

	입력이 완벽하지 않습니다. 다시입력하세요

	<%
		}
	%>

</body>
</html>
