<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
	// 데이터 수신 (SendAndReceive06.jsp)
	request.setCharacterEncoding("UTF-8");
	Calendar cal = Calendar.getInstance();
	int calyear = cal.get(Calendar.YEAR);
	int reYear=0;
	int reMonth=0;
	if( (request.getParameter("year")!=null)&&(request.getParameter("mon")!=null) ){
			
			 reYear = Integer.parseInt(request.getParameter("year"));
			reMonth = Integer.parseInt(request.getParameter("mon"));
%>

<% 		}
		int days[] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
		int preyear = reYear - 1;
		int preDay = (365 * preyear) + (preyear / 4) - (preyear / 100) + ((preyear) / 400);
		int nalsu = preDay;
		int w = 0;

		if ((reYear % 4 == 0) && (reYear % 100 != 0) || (reYear % 400 == 0))
		{
			days[1] = 29;

		}

		for (int i = 0; i < reMonth - 1; i++)
		{
			nalsu += days[i];
		}

		nalsu += 1;

		w = nalsu % 7; 
		/* dom="선택완료"; */
		

	
%>
<title>SendAndReceive07.jsp</title>
</head>
<body>

	<!-- ○ 데이터 송수신 실습 07
		- 달력을 출력하는 jsp 페이지를 구성한다.
		- 년도와 월을 입력받아 화면에 출력해주는 형태의 페이지로 구성한다.
		- 단, submit버튼 없이 이벤트를 처리한다. 
		- 전송한 내용을 수신해서 출력해주는 형태의 페이지로 구성한다.
		- 년도구성은 현재년도 기준 이전 10년, 이후 10년으로 구성한다.
		-월은 1월부터 12월까지로 구성한다.
		
		[2019▼]년 [5▼]월
		----------------------
		----------------------
		- 년도 select box나 월 select box의 내용 변화 시
		  해당 년 월의 달력을 출력해주는 형태의 페이지로 구성한다.
		  
	  -->

	<div>
		<h1>데이터 송수신 실습 07</h1>
		<hr>
	</div>
	<div>
		<form name="frm" method="post">

			<select name="year" id="year" style="width: 300px;">

				<%
					for (int i = 10; i > 0; i--)
					{
				%>
				<option value="<%=calyear - i%>"><%=calyear - i%></option>
				<%
					}
				%>
				<%
					for (int j = 0; j <= 10; j++)
					{
				%>
				<option value="<%=calyear + j%>"><%=calyear + j%></option>
				<%
					}
				%>


			</select>년 <select name="mon" id="mon" style="width: 300px;"
				onchange="document.frm.submit();">

				<%
					for (int k = 1; k < 13; k++)
					{
				%>
				<option value="<%=k%>"><%=k%></option>
				<%
					}
				%>



			</select>월


		</form>

	</div>

	<div>
	
	<%-- <%=dom %> --%>	
		<table border =1>
			<tr>
			<%if (reYear!=0 &&  reMonth!=0){ 
				%>
			<%for( int i=1; i<=w;i++){ %>
				<td style="width:10px;"> </td>
				<% }%>
					<%for(int j =1; j<=days[reMonth-1];j++) {%>
					
					<td style="width:10px;"><%=j%></td>
					<%
					w++;
					if(w%7==0) { %>
						</tr><tr>
					<%} %>
					
				<%} %>
				
				<% if(w%7!=0) { %>
						</tr><tr>
					<%} %>
				
			
		<% }%>
			
		
			</tr>
		</table>
	</div>

</body>
</html>

<%if( (request.getParameter("year")!=null)&&(request.getParameter("mon")!=null) ){ %>
<script type="text/javascript">

for(var i=0;i<document.getElementById("year").options.length;i++){
	if (document.getElementById("year").options[i].value=="<%=reYear%>")
	{
		document.getElementById("year").options[i].selected="selected";
	}
}


for(var i=0;i<document.getElementById("mon").options.length;i++){
	if (document.getElementById("mon").options[i].value=="<%=reMonth%>")
	{
		document.getElementById("mon").options[i].selected="selected";
	}
}

</script>

<% }%>