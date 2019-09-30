<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Forgot Password</title>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<link rel="stylesheet"
	href="<%=baseURL%>webapp/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=baseURL%>webapp/assets/css/ForgotPassword.css">
<link rel="stylesheet" href="<%=baseURL%>webapp/assets/css/all.css">
</head>
<body>
	<!--------------------------------------------- Opening of container ------------------------------------------------------>
	<div class="container h-100">

		<!--  start of main row of page  -->
		<div class="row align-items-center h-100">


			<!--  start of left column of row which contains login form  -->
			<div class="col-md-5 px-3 py-4 shadow-r">



				<img class="img-fluid mb-5 mt-5 image-width-182 image-height-53"
					alt="Responsive image"
					src="<%=baseURL%>webapp/assets/images/Group 3200.svg">


				<form>
					<div class="form-group">
						<label for="exampleInputEmail1"
							class="text-muted h6 f-14 blue_black line-height-19">Email
							address</label> <input type="email"
							class="form-control myh-50 w-287 rounded-0"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							placeholder="Enter email" disabled>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1"
							class="h6 f-14 blue_black line-height-19">Password</label>
						<div class="input-group  myh-50 w-287  rounded-0">
							<input type="password"
								class="form-control myh-50 w-287  rounded-0 remove_focus"
								id="exampleInputPassword1" placeholder="Password">
							<div class="input-group-prepend">
								<div class="input-group-text"><i class="far fa-eye"></i></div>
							</div>
						</div>

					</div>

					<div class="form-group">
						<label for="exampleInputPassword1"
							class="h6 f-14 blue_black line-height-19">Confirm
							Password</label> <div class="input-group  myh-50 w-287  rounded-0">
							<input type="password"
								class="form-control myh-50 w-287  rounded-0 remove_focus"
								id="exampleInputPassword1" placeholder="Password">
							<div class="input-group-prepend">
								<div class="input-group-text"><i class="far fa-eye"></i></div>
							</div>
						</div>
					</div>


					<button type="submit"
						class="btn mt-4 btn-primary f-14  w-287 myh-40 rounded-0 theme_bg_color theme_border_color font remove_focus">GENERATE
						PASSWORD</button>
				</form>



			</div>
			<!--  end of left column of row which contains login form  -->

			<!--  start of right column of row which contains login background image and heading  -->
			<div class="col-md-7  px-3 py-4 ">
					<div class="pl-5">
				<h5 class="black f-24 line-height-45 mb-0">See What Works, What
					Doesn't</h5>
				<h2 class="black f-38 line-height-45 font-weight-bold mb-4">Help
					your Reps Sell Better</h2>
				<p class="light_gray f-16 line-height-22 mw-436">Lorem ipsum
					dolor sit amet, consectetur adipiscing elit. Nulla sit amet nibh
					loborrtis, vehicula lorem at.</p>
					</div>
				<img src="<%=baseURL%>webapp/assets/images/Group 3179.svg"
					class="img-fluid mt-5" alt="Responsive image">
			</div>
			<!--  end of right column of row which contains login background image and heading  -->

		</div>
		<!--  end of main row of page  -->

	</div>
	<!--------------------------------------------- closing of container ------------------------------------------------------>

	<script src="<%=baseURL%>webapp/assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>webapp/assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>webapp/assets/js/bootstrap.min.js"></script>
</body>
</html>