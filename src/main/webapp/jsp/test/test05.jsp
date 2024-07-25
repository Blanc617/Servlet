<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
	<%
	
		int cm = Integer.parseInt(request.getParameter("cm"));
		
		// 단위 들 : inch, yard, feet, meter
		String[] units = request.getParameterValues("unit");
		
		String result = "";
		for(int i = 0; i < units.length; i++){
			if(units[i].equals("inch")){
				double inch = cm * 0.39;
				result += inch + "inch<br>";
			} else if(units[i].equals("yard")){
				double yard = cm *0.0109;
				result += yard + "yd<br>";
			} else if(units[i].equals("feet")){
				double feet = cm * 0.03;
				result += feet + "ft<br>";
			} else if(units[i].equals("meter")){
				double meter = cm / 100;
				result += meter + "m<br>";
			}	
		}
		
		
		
	%>
	
	<h3><%= cm %>cm</h3>
	<hr>

		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>