<%@ page contentType="text/html; charset=UTF-8"%>
<%
	int row = Integer.parseInt(request.getParameter("su1"));
	int col = Integer.parseInt(request.getParameter("su2"));
	int num =1;
	String result = "";
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Table_ok</title>
<link rel="stylesheet" type="text/css" href="css/main.css">

</head>
<body>
	<table border=1>
	<% for(int i = 0; i<col; i++){
		
		result+="<tr>";
		
		 for (int j= 0; j<row; j++){
			
			result+="<td>"+ num+ "</td>";
			num++;
		}
		
		result+="</tr>";
	}%>
	<%=result%>
	
	
	</table>

</body>
</html>