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
	href="<%=baseURL%>assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=baseURL%>assets/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=baseURL%>assets/css/dial_chirag.css">
</head>

<body>

	<div class="dropdown">
		<button class="btn btn-secondary dropdown-toggle" type="button"
			id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false">Drop down dial pad</button>
		<div class="dropdown-menu dropdownBorder"
			aria-labelledby="dropdownMenuButton" x-placement="bottom-start"
			style="position: absolute; transform: translate3d(0px, 38px, 0px); top: 0px; left: -70px; will-change: transform;">

			<!-- drop down container -->

		</div>
	</div>

	<div class="container containerDesign">
		<div class="row rowShadow flex-row pb-3">
			<div class="col-md-12 col-12 p-5 border-bottom">

				<input type="number" id="telNumber" placeholder="Enter phone number">

				<button class="fa fa-trash" id="del" value="del"></button>
			</div>
			<div
				class="col-md-4 col-4 d-flex justify-content-center align-items-center pt-4 num">
				<div
					class="digit d-flex flex-column justify-content-center align-items-center click">
					<div class="number sp" onclick="printPhoneNumber()">1</div>
					<div class="sub">.</div>
				</div>
			</div>
			<div
				class="col-md-4 col-4 d-flex justify-content-center align-items-center pt-4 num">
				<div
					class="digit d-flex flex-column justify-content-center align-items-center click">
					<div class="number sp">2</div>
					<div class="sub">ABC</div>
				</div>
			</div>
			<div
				class="col-md-4 col-4 d-flex justify-content-center align-items-center pt-4 num">
				<div
					class="digit d-flex flex-column justify-content-center align-items-center click">
					<div class="sp">3</div>
					<div class="sub">DEF</div>
				</div>
			</div>
			<div
				class="col-md-4 col-4 d-flex justify-content-center align-items-center num">
				<div
					class="digit d-flex flex-column justify-content-center align-items-center click">
					<div class="sp">4</div>
					<div class="sub">GHI</div>
				</div>
			</div>
			<div
				class="col-md-4 col-4 d-flex justify-content-center align-items-center num">
				<div
					class="digit d-flex flex-column justify-content-center align-items-center click">
					<div class="sp">5</div>
					<div class="sub">JKL</div>
				</div>
			</div>
			<div
				class="col-md-4 col-4 d-flex justify-content-center align-items-center num">
				<div
					class="digit d-flex flex-column justify-content-center align-items-center click">
					<div class="sp">6</div>
					<div class="sub">MNO</div>
				</div>
			</div>
			<div
				class="col-md-4 col-4 d-flex justify-content-center align-items-center num">
				<div
					class="digit d-flex flex-column justify-content-center align-items-center click">
					<div class="sp">7</div>
					<div class="sub">PQRS</div>
				</div>
			</div>
			<div
				class="col-md-4 col-4 d-flex justify-content-center align-items-center num">
				<div
					class="digit d-flex flex-column justify-content-center align-items-center click">
					<div class="sp">8</div>
					<div class="sub">TUV</div>
				</div>
			</div>
			<div
				class="col-md-4 col-4 d-flex justify-content-center align-items-center num">
				<div
					class="digit d-flex flex-column justify-content-center align-items-center click">
					<div class="sp">9</div>
					<div class="sub">WXYZ</div>
				</div>
			</div>
			<div
				class="col-md-4 col-4 d-flex justify-content-center align-items-center num">
				<div
					class="digit d-flex flex-column justify-content-center align-items-center click">
					<div class="fa fa-asterisk AstHash"></div>
				</div>
			</div>
			<div
				class="col-md-4 col-4 d-flex justify-content-center align-items-center num">
				<div
					class="digit d-flex flex-column justify-content-center align-items-center click">
					<div class="sp">0</div>
					<div class="subplus fa fa-plus"></div>
				</div>
			</div>
			<div
				class="col-md-4 col-4 d-flex justify-content-center align-items-center">
				<div
					class="digit d-flex flex-column justify-content-center align-items-center click">
					<div class="fa fa-hashtag AstHash"></div>
				</div>
			</div>
			<div class="col-md-12 col-12">
				<div
					class="digit mx-auto d-flex flex-column justify-content-center align-items-center  click">
					<div class="button rounded-circle rounded-circle-num">
						<div class="fa fa-phone phone"></div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>

	<script>
		$(document).ready(
				function() {

					$('.num').click(
							function() {
								var num = $(this);
								var text = $.trim(num.find('.digit').clone()
										.children().remove().end().text());
								var telNumber = $('#telNumber');
								$(telNumber).val(telNumber.val() + text);
							});

				});
	</script>
</body>
</html>


