<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html lang="en" class="h-100">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<title>Create Event</title>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
	SimpleDateFormat incoming = new SimpleDateFormat("dd-MM-yyyy");
	String incomingDate = request.getParameter("var") != null
			? request.getParameter("var")
			: sdf.format(new Date());
	String today_date = sdf.format(new Date());
%>

<link href="<%=baseURL%>assets/css/jquery.multiselect.css"
	rel="stylesheet" />
<link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/Modal.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/select2.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/css/bootstrap-select.min.css">
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.2/css/bootstrap-select.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.min.css" />
</head>
<body>
	<!--------------------------------------------- Opening of container ------------------------------------------------------>
	<div class="container h-100">
		<!--  start of main row of page  -->
		<div class="row  justify-content-center">
			<form id="bootstrapSelectForm" method="post" class="form-horizontal">
				<div class="form-group">
					<label class=" control-label">Favorite color</label>
					<div class=" selectContainer">
						<select name="colors" class="form-control selectpicker" multiple
							title="Choose 2-4 colors">
							<option value="black">Black</option>
							<option value="blue">Blue</option>
							<option value="green">Green</option>
							<option value="orange">Orange</option>
							<option value="red">Red</option>
							<option value="yellow">Yellow</option>
							<option value="white">White</option>
						</select>
					</div>
				</div>

				<div class="form-group">
					<label class=" control-label selectpicker">Language</label>
					<div class="selectContainer">
						<select name="language" class="form-control">
							<option value=""></option>
							<option value="english">English</option>
							<option value="french">French</option>
							<option value="german">German</option>
							<option value="other">Other</option>
						</select>
					</div>
				</div>

				<div class="form-group">
					<div class=" col-sm-offset-3">
						<button type="submit" class="btn btn-default">Validate</button>
					</div>
				</div>
			</form>
		

		</div>
	</div>
	<!--------------------------------------------- closing of container ------------------------------------------------------>
	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-select.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
	    $('#bootstrapSelectForm')
	        .find('[name="colors"]')
	            .selectpicker()
	            .change(function(e) {
	                // revalidate the color when it is changed
	                $('#bootstrapSelectForm').bootstrapValidator('revalidateField', 'colors');
	            })
	            .end()
	        .find('[name="language"]')
	            .selectpicker()
	            .change(function(e) {
	                // revalidate the language when it is changed
	                $('#bootstrapSelectForm').bootstrapValidator('revalidateField', 'language');
	            })
	            .end()
	        .bootstrapValidator({
	            excluded: ':disabled',
	            feedbackIcons: {
	                valid: 'glyphicon glyphicon-ok',
	                invalid: 'glyphicon glyphicon-remove',
	                validating: 'glyphicon glyphicon-refresh'
	            },
	            fields: {
	                colors: {
	                    validators: {
	                        callback: {
	                            message: 'Please choose 2-4 colors you like most',
	                            callback: function(value, validator) {
	                                // Get the selected options
	                                var options = validator.getFieldElements('colors').val();
	                                return (options != null && options.length >= 2 && options.length <= 4);
	                            }
	                        }
	                    }
	                },
	                language: {
	                    validators: {
	                        notEmpty: {
	                            message: 'Please select your native language.'
	                        }
	                    }
	                }
	            }
	        });
	});
	</script>


</body>
</html>