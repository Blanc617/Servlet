<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜 시간 출력</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
	
		String what = request.getParameter("what");
	
    	Date date = new Date();
    	
		SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy년 M월 d일");
		SimpleDateFormat timeFormatter = new SimpleDateFormat("H시 m분 s초");
		
		// what - date : 날짜
		// what - time : 시간
		String dateString = dateFormatter.format(date);
		String timeString = timeFormatter.format(date);
		
		String result = "규격에 맞지 않는 파라미터!";
		if(what.equals("date")){
			result = "오늘 날짜" + dateString;
		}else if(what.equals("time")){
			result = "현재 시간" + timeString;
		}
		
    %>


	<div class="container">
		<div class="display-4"><%= result%></div>		
	</div>
	
</body>
</html>