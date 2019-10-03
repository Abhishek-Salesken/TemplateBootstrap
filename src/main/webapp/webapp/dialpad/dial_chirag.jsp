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
<link rel="stylesheet"
	href="<%=baseURL%>webapp/assets/css/dial_chirag.css">

</head>
<body>

	<div class="dropdown">
		<button class="btn btn-secondary dropdown-toggle" type="button"
			id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false">Drop down button</button>
		<div class="dropdown-menu dropdownBorder"
			aria-labelledby="dropdownMenuButton" x-placement="bottom-start"
			style="position: absolute; transform: translate3d(0px, 38px, 0px); top: 0px; left: 0px; will-change: transform;">

			<div class="container containerDesign">

				<div class="row rowShadow">
					<div class="col-md-12 col-12" id="output"></div>
					<div class="col-md-4 col-4 digit">
						<span class="inner">1</span>
					</div>
					<div class="col-md-4 col-4 digit">
						<span class="inner">2</span>
						<div class="sub inner">ABC</div>
					</div>
					<div class=" col-md-4 col-4 digit">
						<span class="inner">3</span>
						<div class="sub inner">DEF</div>
					</div>
					<div class=" col-md-4 col-4 digit">
						<span class="inner">4</span>
						<div class="sub inner">GHI</div>
					</div>
					<div class=" col-md-4 col-4 digit">
						<span class="inner">5</span>
						<div class="sub inner">JKL</div>
					</div>
					<div class=" col-md-4 col-4 digit">
						<span class="inner">6</span>
						<div class="sub inner">MNO</div>
					</div>
					<div class=" col-md-4 col-4 digit">
						<span class="inner">7</span>
						<div class="sub inner">PQRS</div>
					</div>
					<div class=" col-md-4 col-4 digit">
						<span class="inner">8</span>
						<div class="sub inner">TUV</div>
					</div>
					<div class=" col-md-4 col-4 digit">
						<span class="inner">9</span>
						<div class="sub inner">WXYZ</div>
					</div>
					<div class="col-md-4 col-4 digit">
						<span class="inner">*</span>
					</div>
					<div class="col-md-4 col-4 digit">
						<span class="inner">0</span>
						<div class="sub inner">+</div>
					</div>
					<div class="col-md-4 col-4 digit">
						<span class="inner">#</span>
					</div>
					<div class="col-md-12  col-12 digit ">
						<div class="button rounded-circle rounded-circle-num inner">
							<i class="fa fa-phone" style="color: white;"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="<%=baseURL%>webapp/assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>webapp/assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>webapp/assets/js/bootstrap.min.js"></script>
</body>
</html>


