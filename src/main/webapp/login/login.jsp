<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Login Page</title>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<link rel="stylesheet"
	href="<%=baseURL%>assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=baseURL%>assets/css/LoginPage.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">
</head>
<body>
	<!--------------------------------------------- Opening of container ------------------------------------------------------>
	<div class="container h-100">

	<!--  start of main row of page  -->
		<div class="row align-items-center h-100">
		
		
			<!--  start of left column of row which contains login form  -->
			<div class="col-md-5 pl-5 py-4 shadow-r">

				<div class="text-center mr-5">
					<i class="fas fa-check-circle login_icon_color"></i>
					<p class=" f-14 line-height-19 light_gray mb-0">Great!
						passsword has been Generated !</p>

					<p class="dark_gray line-height-19  f-14">You can now login
						to Salesken</p>
				</div>

				<img class="img-fluid mb-5 mt-5 image-width-182 image-height-53"
					alt="Responsive image"
					src="<%=baseURL%>webapp/assets/images/Group 3200.svg">


				<form>
					<div class="form-group">
						<label for="exampleInputEmail1"	class="f-14 line-height-19  h6">Email address</label> <input
							type="email" class="form-control myh-50 w-287 rounded-0 remove_focus"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							placeholder="Enter email">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1" class="f-14 h6 line-height-19 ">Password</label> <input
							type="password" class="form-control myh-50 w-287  rounded-0 remove_focus"
							id="exampleInputPassword1" placeholder="Password">
					</div>

					<button type="submit"
						class="btn mb-4 mt-4 btn-primary f-14 w-287 myh-40 rounded-0 theme_bg_color theme_border_color remove_focus">LOGIN</button>
				</form>
				
				<a href="#" class="theme_color f-14 f-b h6 line-height-40 remove_hover">Forgot Password ?</a>

			</div>
			<!--  end of left column of row which contains login form  -->
						
			<!--  start of right column of row which contains login background image and heading  -->
			<div class="col-md-7  px-3 py-4 ">
			<div class="pl-5">
				<h5 class="black f-24 line-height-45 mb-0">See What Works,
					What Doesn't</h5>
				<h2 class="black f-38 line-height-45 font-weight-bold mb-4">Help
					your Reps Sell Better</h2>
				<p class="light_gray f-16 line-height-22 mw-436">Lorem ipsum
					dolor sit amet, consectetur adipiscing elit. Nulla sit amet nibh
					loborrtis, vehicula lorem at.</p>
		</div>
				<img src="<%=baseURL%>assets/images/Group 3179.svg"
					class="img-fluid mt-5" alt="Responsive image">
			</div>
<!--  end of right column of row which contains login background image and heading  -->
			
		</div>
	<!--  end of main row of page  -->

	</div>
	<!--------------------------------------------- closing of container ------------------------------------------------------>

	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
</body>
</html>