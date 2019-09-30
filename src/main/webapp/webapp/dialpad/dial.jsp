<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dial Pad</title>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<link rel="stylesheet"
	href="<%=baseURL%>webapp/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=baseURL%>webapp/assets/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=baseURL%>webapp/assets/css/dial.css">

</head>
<body>

	<div class="container d-flex justify-content-center align-items-center" style="height:98vh;">
		<div class="row">
		<div class ="col-md-12 col-12"></div>
			<div class="col-md-4 col-4 digit">1</div>
			<div class="col-md-4 col-4 digit">
				2
				<div class="sub">ABC</div>
			</div>
			<div class=" col-md-4 col-4 digit">
				3
				<div class="sub">DEF</div>
			</div>
			<div class=" col-md-4 col-4 digit">
				4
				<div class="sub">GHI</div>
			</div>
			<div class=" col-md-4 col-4 digit">
				5
				<div class="sub">JKL</div>
			</div>
			<div class=" col-md-4 col-4 digit">
				6
				<div class="sub">MNO</div>
			</div>
			<div class=" col-md-4 col-4 digit">
				7
				<div class="sub">PQRS</div>
			</div>
			<div class=" col-md-4 col-4 digit">
				8
				<div class="sub">TUV</div>
			</div>
			<div class=" col-md-4 col-4 digit">
				9
				<div class="sub">WXYZ</div>
			</div>
			<div class="col-md-4 col-4 digit">*</div>
			<div class="col-md-4 col-4 digit">0</div>
			<div class="col-md-4 col-4 digit">#</div>
						<div class="col-md-12 text-center digit">
						<div class="button rounded-circle">
				<i class="fa fa-phone" style="color:white;"></i></div>
			</div>
			
			
		</div>
	</div>
	

	<script src="<%=baseURL%>webapp/assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>webapp/assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>webapp/assets/js/bootstrap.min.js"></script>
</body>
</html>