<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Form</title>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/LoginPage.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/select2.min.css">
<link rel="stylesheet"
	href="https://jqueryvalidation.org/files/demo/css/cmxform.css">
</head>
<body>
	<!--------------------------------------------- Opening of container ------------------------------------------------------>
	<div class="container h-100">

		<!--  start of main row of page  -->
		<div class="row align-items-center justify-content-center h-100">
			<div class="border border-primaryr p-3 col-md-6">
				<form id="myform">
					<div class="form-group">
						<label for="user_name">User name</label> <input type="text"
							class="form-control " id="user_name" aria-describedby=""
							placeholder="User name" name="user_name">
						<div class="form-group">
							<label for="email">Email</label> <input type="email"
								class="form-control " id="email" aria-describedby=""
								placeholder="User name" name="email">
						</div>
					</div>
					<div class="form-group">
						<label for="password">Password</label> <input type="password"
							class="form-control " id="password" placeholder="Password"
							name="password">
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value=""
							id="defaultCheck1" name="check_box"> <label
							class="form-check-label" for="defaultCheck1"> check box </label>
					</div>
					<div class="form-group">
						<div class="form-check ">
							<input class="form-check-input" type="checkbox"
								id="inlineCheckbox1" value="check_box1" name="check_box1">
							<label class="form-check-label" for="inlineCheckbox1">check_box1</label>
						</div>
						<div class="form-check ">
							<input class="form-check-input" type="checkbox" id="check_box2"
								value="check_box2" name="check_box2"> <label
								class="form-check-label" for="check_box2">check_box2</label>
						</div>
						<div class="form-check ">
							<input class="form-check-input" type="checkbox" id="check_box3"
								value="check_box3" name="check_box3"> <label
								class="form-check-label" for="check_box3">check_box3</label>
						</div>
						<div class="form-check ">
							<input class="form-check-input" type="checkbox" id="check_box4"
								value="check_box4" name="check_box4"> <label
								class="form-check-label" for="check_box4">check_box4</label>
						</div>
					</div>
					<div class="form-group">
						<label for="exampleFormControlFile1">Example file input</label> <input
							type="file" class="form-control-file"
							id="exampleFormControlFile1">
					</div>

					<div class="form-group">
						<div class="form-check">
							<input class="form-check-input" type="radio" name="radio"
								id="radio1" value="radio1" > <label
								class="form-check-label" for="radio1"> radio1</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="radio"
								id="radio2" value="radio2"> <label
								class="form-check-label" for="radio2"> radio2 </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="radio"
								id="radio3" value="radio3"> <label
								class="form-check-label" for="radio3"> radio3 </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="radio"
								id="radio4" value="radio4"> <label
								class="form-check-label" for="radio4"> radio4 </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="radio"
								id="radio5" value="radio5"> <label
								class="form-check-label" for="radio2"> radio5 </label>
						</div>
					</div>

					<div class="form-group">
						<label for="singal_select">Example select</label> <select
							class="form-control" id="singal_select" name="singal_select">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
						</select>
					</div>
					<div class="form-group">
						<label for="multipale_select">Example multiple select</label> <select
							multiple class="form-control" id="multipale_select"
							name="multipale_select">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
						</select>
					</div>
					<div class="form-group">
						<label for="text_area">Example textarea</label>
						<textarea class="form-control " id="text_area" rows="3"
							name="text_area"></textarea>
					</div>
					<button type="submit" class="btn btn-primary " name="submit">Submit</button>
				</form>


			</div>
			<!--  end of main row of page  -->
		</div>
	</div>
	<!--------------------------------------------- closing of container ------------------------------------------------------>

	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-select.min.js"></script>
	<script src="<%=baseURL%>assets/js/jquery.validate.js"></script>

	<script>
		$(document)
				.ready(
						function() {
							$("#myform")
									.validate(
											{
												onsubmit : true,
												rules : {
													name : "required",
													user_name : {
														required : true,
														minlength : 2
													},
													password : {
														required : true,
														minlength : 5
													},
													email : {
														required : true,
														email : true
													},
													check_box : "required",
													text_area: "required",
													radio:"required"
												},
												messages : {

													user_name : {
														required : "Please enter a username",
														minlength : "Your username must consist of at least 2 characters"
													},
													password : {
														required : "Please provide a password",
														minlength : "Your password must be at least 5 characters long"
													},
													email : {
														required : "We need your email address to contact you",
														email : "Your email address must be in the format of name@domain.com"
													},
													check_box : "please check",
													text_area:"Enter some comment",
													radio:"check radio button"
												}

											});
						});
	</script>
</body>
</html>