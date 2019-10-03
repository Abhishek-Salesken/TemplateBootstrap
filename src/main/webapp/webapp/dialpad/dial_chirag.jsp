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
			aria-expanded="false">Drop down dial pad</button>
		<div class="dropdown-menu dropdownBorder"
			aria-labelledby="dropdownMenuButton" x-placement="bottom-start"
			style="position: absolute; transform: translate3d(0px, 38px, 0px); top: 0px; left: 0px; will-change: transform;">

			<div class="container containerDesign">

				<div class="row rowShadow">
					<div class="col-md-12 col-12 p-5" id="output"></div>
					<div class=" col-md-4 col-4 digit">
						<div class="inner text-center">1</div>
					</div>

					<div class=" col-md-4 col-4 digit">
						<div class="inner text-center">2</div>
						<div class="sub inner text-center">ABC</div>
					</div>

					<div class=" col-md-4 col-4 digit">
						<div class="inner text-center">3</div>
						<div class="sub inner text-center">DEF</div>
					</div>

					<div class=" col-md-4 col-4 digit">
						<div class="inner text-center">4</div>
						<div class="sub inner text-center">GHI</div>
					</div>
					<div class=" col-md-4 col-4 digit">
						<div class="inner text-center">5</div>
						<div class="sub inner text-center">JKL</div>
					</div>
					<div class=" col-md-4 col-4 digit">
						<div class="inner text-center">6</div>
						<div class="sub inner text-center">MNO</div>
					</div>
					<div class=" col-md-4 col-4 digit">
						<div class="inner text-center">7</div>
						<div class="sub inner text-center">PQRS</div>
					</div>
					<div class=" col-md-4 col-4 digit">
						<div class="inner text-center">8</div>
						<div class="sub inner text-center">TUV</div>
					</div>
					<div class=" col-md-4 col-4 digit">
						<div class="inner text-center">9</div>
						<div class="sub inner text-center">WXYZ</div>
					</div>
					<div class=" col-md-4 col-4 digit">
						<div class="inner text-center">*</div>
					</div>
					<div class=" col-md-4 col-4 digit">
						<div class="inner text-center">0</div>
						<div class="subplus inner text-center">+</div>
					</div>
					<div class=" col-md-4 col-4 digit">
						<div class="inner text-center">#</div>
					</div>
					<div class="col-md-12 col-12 py-3 digit">
						<div
							class="button rounded-circle rounded-circle-num text-center inner">
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


