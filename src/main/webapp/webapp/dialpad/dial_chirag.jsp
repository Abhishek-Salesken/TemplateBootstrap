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

				<div class="row rowShadow pb-3">
					<div class="col-md-12 col-12 p-5" id="output"></div>

					<div class=" col-md-4 col-4">
					<div class="d-flex flex-row w-100">
					
						<div
							class="digit d-flex flex-column justify-content-center align-items-center">
							<span>1</span>
						</div>
						</div>
					</div>

					<div class=" col-md-4 col-4">
										<div class="d-flex flex-row w-100 justify-content-center align-items-center">
					
						<div
							class="digit d-flex flex-column justify-content-center align-items-center">
							<span>2</span>
							<div class="sub">ABC</div>
						</div>
						</div>
					</div>

					<div class=" col-md-4 col-4">
						<div
							class="digit d-flex flex-column justify-content-center align-items-center">
							<span>3</span>
							<div class="sub    ">DEF</div>
						</div>
					</div>

					<div class=" col-md-4 col-4">
						<div
							class="digit d-flex flex-column justify-content-center align-items-center">
							<span>4</span>
							<div class="sub    ">GHI</div>
						</div>
					</div>
					<div class=" col-md-4 col-4">
						<div
							class="digit d-flex flex-column justify-content-center align-items-center">
							<span>5</span>
							<div class="sub">JKL</div>
						</div>
					</div>
					<div class=" col-md-4 col-4">
						<div
							class="digit d-flex flex-column justify-content-center align-items-center">
							<span>6</span>
							<div class="sub">MNO</div>
						</div>
					</div>
					<div class=" col-md-4 col-4">
						<div
							class="digit d-flex flex-column justify-content-center align-items-center">
							<span>7</span>
							<div class="sub">PQRS</div>
						</div>
					</div>
					<div class=" col-md-4 col-4">
						<div
							class="digit d-flex flex-column justify-content-center align-items-center">
							<span>8</span>
							<div class="sub">TUV</div>
						</div>
					</div>
					<div class=" col-md-4 col-4">
						<div
							class="digit d-flex flex-column justify-content-center align-items-center">
							<span>9</span>
							<div class="sub">WXYZ</div>
						</div>
					</div>
					<div class=" col-md-4 col-4">
						<div
							class="digit d-flex flex-column justify-content-center align-items-center">
							<span>*</span>
						</div>
					</div>
					<div class=" col-md-4 col-4">
						<div
							class="digit d-flex flex-column justify-content-center align-items-center">
							<span>0</span>
							<div class="sub fa fa-plus"></div>
						</div>
					</div>
					<div class=" col-md-4 col-4">
						<div
							class="digit d-flex flex-column justify-content-center align-items-center">
							<span>#</span>
						</div>
					</div>
					<div class="col-md-12 col-12">
						<div
							class="digit d-flex justify-content-center align-items-center">
							<div class="button rounded-circle rounded-circle-num">
								<i
									class="fa fa-phone d-flex justify-content-center align-items-center phone"></i>
							</div>
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


