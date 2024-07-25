<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI</title>
</head>
<body>

	<div class="container">
		<form method="get" action="/jsp/test/test02.jsp">
			<div class="d-flex">
				<input type="text" name="height" class="form-control col-2">cm
				<input type="text" name="weight" class="form-control col-2">kg 
				<button type="submit" class="btn btn-info ml-3">계산</button>
			</div>
		</form>
	</div>
	

</body>
</html>