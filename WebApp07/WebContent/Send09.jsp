<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String result="";
	result +="<ul>";
	for(int i =1;i<=9;i++)
	{
		result += String.format("<li><a href='Receive09.jsp?dan=%1$d'>%1$d단</a></li>",i);
	}
	result +="</ul>";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Send09</title>
<script type="text/javascript">

function check(){
	form.submit();
}

</script>
<style type="text/css">


 a:hover{
font-style :italic;
font-color:red;
text-decoration:underline;
cursor:pointer;
}
</style>
</head>
<body>
<!-- 
		데이터 송수신 실습
		- a 태그에 대한 반복문을 처리하는 jsp페이지로 구성
		- 구구단 리스트를 동적으로 구성하여 선택에 따른 결과 페이지를 출력해주는 형태의 페이지를 구현
		- submit 버튼 없이 이벤트를 처리 할 수 있도록 한다.
		
		구구단 선택
		1단
		2단
		3단
		4단
		5단
		 :
		9단
		
		- 해당 단을 클릭했을 때
		  구구단을 출력해주는 형태의 페이지로 구현한다.
		

 -->
 <form action="Receive09.jsp" name ="frn" method="post" onsubmit="return check()">
 <%=result %>
 </form>
</body>
</html>