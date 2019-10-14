<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Form Test</title>
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
<div class="container h-100">

	<!-- --------------------- start of main row of page  ------------------------->
	<div class="row align-items-center justify-content-center h-100">
		<div class="border border-primaryr p-3 col-md-6">
			<!-- --------------------- start of form tag  ------------------------->
			<form class="was-validated">
				<div class="custom-control mb-3">
					<input type="email" class="custom-control-input"
						id="customControlValidation3" name="radio-stacked" required>
				</div>

				<div class="mb-3">
					<label for="validationTextarea">Textarea</label>
					<textarea class="form-control is-invalid" id="validationTextarea"
						placeholder="Required example textarea" required></textarea>
					<div class="invalid-feedback">Please enter a message in the
						textarea.</div>
				</div>

				<div class="custom-control custom-checkbox mb-3">
					<input type="checkbox" class="custom-control-input"
						id="customControlValidation1" required> <label
						class="custom-control-label" for="customControlValidation1">Check
						this custom checkbox</label>
					<div class="invalid-feedback">Example invalid feedback text</div>
				</div>

				<div class="custom-control custom-radio">
					<input type="radio" class="custom-control-input"
						id="customControlValidation2" name="radio-stacked" required>
					<label class="custom-control-label" for="customControlValidation2">Toggle
						this custom radio</label>
				</div>
				<div class="custom-control custom-radio mb-3">
					<input type="radio" class="custom-control-input"
						id="customControlValidation3" name="radio-stacked" required>
					<label class="custom-control-label" for="customControlValidation3">Or
						toggle this other custom radio</label>
					<div class="invalid-feedback">More example invalid feedback
						text</div>
				</div>

				<div class="form-group">
					<select class="custom-select" required>
						<option value="">Open this select menu</option>
						<option value="1">One</option>
						<option value="2">Two</option>
						<option value="3">Three</option>
					</select>
					<div class="invalid-feedback">Example invalid custom select
						feedback</div>
				</div>

				<div class="custom-file">
					<input type="file" class="custom-file-input"
						id="validatedCustomFile" required> <label
						class="custom-file-label" for="validatedCustomFile">Choose
						file...</label>
					<div class="invalid-feedback">Example invalid custom file
						feedback</div>
				</div>
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


</body>
</html>