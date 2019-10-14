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

		<!-- --------------------- start of main row of page  ------------------------->
		<div class="row align-items-center justify-content-center h-100">
			<div class="border border-primaryr p-3 col-md-6">
				<!-- --------------------- start of form tag  ------------------------->
				<form id="my-form">
					<div class="form-group">
						<label for="email">Email address</label> <input type="email"
							class="form-control" id="email" aria-describedby="emailHelp"
							placeholder="Enter email" name="email">

					</div>
					<div class="form-group">
						<label for="password">Password</label> <input type="password"
							class="form-control" id="password" placeholder="Password"
							name="password">
					</div>
					<div class="form-group">
						<select class="custom-select" required>
							<option value="">Open this select menu</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
						</select>
					
					</div>
					<div class="custom-file">
						<input type="file" class="custom-file-input"
							id="validatedCustomFile" name="customfile"> <label
							class="custom-file-label" for="validatedCustomFile">Choose
							file...</label>

					</div>
					<div class="form-group">
						<label for="message">Message</label>
						<textarea id="message" rows="8" class="form-control"
							placeholder="The message you want to send to us."
							name="text_area"></textarea>
		
					</div>
					<div class="form-group form-check">
						<input type="checkbox" class="form-check-input" id="check_box[]"
							name="check_box[]"> <label class="form-check-label"
							for="check_box[]">Check me out</label>
					</div>
					<div class="form-group">
						<label class="control-label" for="mycheckbox">Multiple
							Checkbox</label>
						<div class="form-check">
							<input class="form-check-input position-static" type="checkbox"
								id="mycheckbox[]" value="option1" aria-label="..."
								name="mycheckbox[]">
						</div>
						<div class="form-check">
							<input class="form-check-input position-static" type="checkbox"
								name="mycheckbox[]" id="mycheckbox[]" value="option1"
								aria-label="...">
						</div>
						<div class="form-check">
							<input class="form-check-input position-static" type="checkbox"
								name="mycheckbox[]" id="mycheckbox[]" value="option1"
								aria-label="...">
						</div>
						<div class="form-check">
							<input class="form-check-input position-static" type="checkbox"
								name="mycheckbox[]" id="mycheckbox[]" value="option1"
								aria-label="...">
						</div>
					</div>
					<div class="form-group">
						<label><input type='radio' name='radio' />Radio1</label> <label><input
							type='radio' name='radio' />Radio2</label>

					</div>

					<button type="submit" class="btn btn-primary ">Submit</button>
				</form>
				<!-- --------------------- end of form tag  ------------------------->

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
		$(document).ready(function() {

			$('#my-form').validate({
				errorPlacement : function(error, element) {
					error.addClass('invalid-feedback');
					element.closest('.form-group ').append(error);
				},
				highlight : function(element, errorClass, validClass) {
					$(element).addClass('is-invalid');
				},
				unhighlight : function(element, errorClass, validClass) {
					$(element).removeClass('is-invalid').addClass('is-valid');
				},

				/* ---------------------------------- start of rules and messages of validation---------------------- */
				rules : {
					email : {
						required : true,
						email : true
					},
					password : {
						minlength : 2,
						required : true
					},
					'check_box[]' : {
						minlength : 1,
						required : true
					},
					text_area : {
						minlength : 10,
						required : true
					},
					'mycheckbox[]' : {
						minlength : 2,
						required : true
					},
					radio : {
						required : true
					},
					customfile : {
						required : true
					}
				},
				 messages : {
					'check_box[]' : {
						required : "You must select check  box"
					},
					'mycheckbox[]' : {
						required : "You must select atleast 2 check  box"
					}
				}
			});
			/* ----------------------------------end of rules and messages of validation---------------------- */
		});
	</script>
</body>
</html>