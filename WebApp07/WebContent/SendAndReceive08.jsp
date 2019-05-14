<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Calendar"%>
<%
	// 데이터 수신 (SendAndReceive06.jsp)
	request.setCharacterEncoding("UTF-8");

	// 자기 자신 페이지로부터 데이터 수신 후 처리하는 부분
	String sYear = request.getParameter("year");
	String sMonth = request.getParameter("mon");
	

	//Calendar 객체 생성
	Calendar cal = Calendar.getInstance();

	//현재 년,월,일 확인
	int nowYear = cal.get(Calendar.YEAR); //2019
	int nowMonth = cal.get(Calendar.MONTH) + 1; //5
	int nowDay = cal.get(Calendar.DAY_OF_MONTH); //9

	/* 표시할 달력의 년,월 구성 ▶ 페이지 최초 요청을 감안한 코드 */
	int selectYear = nowYear;
	int selectMonth = nowMonth;

	// 페이지 최초 요청이 아닐 경우 ▶수신한 데이터로 표시할 달력 년 월 구성
	if (sYear != null || sMonth != null)
	{
		selectYear = Integer.parseInt(sYear);
		selectMonth = Integer.parseInt(sMonth);
	}

	/*확인한 날짜로 년도 select 옵션 구성  */
	String yOptions = "";
	String mOptions = "";

	

	// 그려야할 달력의 1일이 무슨 요일인지 확인하기 위한 연산
	//(만년달력)
	int[] months = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
	if (selectYear % 4 == 0 && selectYear % 100 != 0 || selectYear % 400 == 0)
	{
		months[1] = 29;
	}

	// 총 날수 누적 변수
	int nalsu;

	// 요일 항목 배열 구성
	String[] weekName = { "일", "월", "화", "수", "목", "금", "토" };
	nalsu = (selectYear - 1) * 365 + (selectYear - 1) / 4 - (selectYear - 1) / 100 + (selectYear - 1) / 400;

	for (int i = 0; i < selectMonth - 1; i++)
	{

		nalsu += months[i];

	}
	nalsu++;

	int week = nalsu % 7;//요일변수
	int lastDay = months[selectMonth - 1]; // 마지막 날짜

	//==================== 달력 그리기 ===================================  
	String calStr = "";
	calStr += "<table border='1'>";
	calStr += "<tr>";

	for (int i = 0; i < weekName.length; i++)
	{
		if (i == 0)
			calStr += "<th style ='color:red;'>" + weekName[i] + "</th>";
		else if (i == 6)
			calStr += "<th style ='color:blue;'>" + weekName[i] + "</th>";
		else
			calStr += "<th>" + weekName[i] + "</th>";
	}
	calStr += "</tr>";
	calStr += "<tr>";
	// 빈칸 공백 발생
	for (int i = 1; i <= week; i++)
	{
		calStr += "<td></td>";
	}
	// 날짜 td 발생
	for (int i = 1; i <= lastDay; i++)
	{
		week++;

		// calStr += "<td>" + i +"</td>"; 
		if (selectYear == nowYear && selectMonth == nowMonth && i == nowDay && week % 7 == 0)
		{
			calStr += "<td class ='nowSat'>" + i + "</td>";

		} else if (selectYear == nowYear && selectMonth == nowMonth && i == nowDay && week % 7 == 1)
		{ //일요일
			calStr += "<td class ='nowSun'>" + i + "</td>";
		} else if (selectYear == nowYear && selectMonth == nowMonth && i == nowDay)
		{
			calStr += "<td class='now'>" + i + "</td>";
		} else if (week % 7 == 0)
		{
			calStr += "<td class='sat'>" + i + "</td>";
		} else if (week % 7 == 1)
		{
			calStr += "<td class='sun'>" + i + "</td>";
		} else
		{
			calStr += "<td>" + i + "</td>";
		}

		if (week % 7 == 0)
			calStr += "</tr><tr>";
	}
	for (int i = 0; i <= week; i++, week++)
	{
		if (week % 7 == 0)
			break;
		calStr += "<td></td>";
	}
	
	if(week%7!=0){
		calStr +="</tr>";		
	}
	calStr += "</table>"; 

	// 빈칸 공백 td 발생
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function formcalendar(num){
	
	let v = 0;
	let month = Number(document.getElementById("mon").value);
	let year = Number(document.getElementById("year").value);
	
	if (Number(num)==-1){
		
		v= -1;
	} else if (Number(num)==1) {
		v= 1;
	}
	
	
	if (month+v==0){
		document.getElementById("year").value= year+v;
		document.getElementById("mon").value=12;
	}else if(month+v==13){ 
		document.getElementById("mon").value=1;
		document.getElementById("year").value=year+v;		
	}else if (month+v>0) {
		
		document.getElementById("mon").value= month+v;
	}	
	document.frm.submit();
}

</script>
<style type="text/css">
input {
		all:unset;
		width : 100px;
		text-align:center;
}
</style>
</head>
<body>
<!-- ○ 데이터 송수신 실습 07
		- 달력을 출력하는 jsp 페이지를 구성한다.
		- 년도와 월을 입력받아 화면에 출력해주는 형태의 페이지로 구성한다.
		- 단, submit버튼 없이 이벤트를 처리한다. 
		- 전송한 내용을 수신해서 출력해주는 형태의 페이지로 구성한다.
		- 년도구성은 현재년도 기준 이전 10년, 이후 10년으로 구성한다.
		-월은 1월부터 12월까지로 구성한다.
		
		◀2019년 5월 ▶
		----------------------
		----------------------
		- 방향버튼 클릭시  
		  해당 년 월의 달력을 출력해주는 형태의 페이지로 구성한다.
		  
	  -->
	  <form name="frm" method="post">
	 
	  <button  onclick= 'formcalendar(-1)'>◀</button>
	  
	  <input type="text" id="year"  name="year" value="<%=selectYear %>" readonly="readonly"> 년
	  <input type="text" id="mon"  name="mon"  value="<%=selectMonth %>" readonly="readonly">월
	  
	   <button  onclick= 'formcalendar(1)'>▶</button>
	  </form>
	  <br>
	  <div>
	  <%=calStr %>	  
	  </div>
</body>
</html>