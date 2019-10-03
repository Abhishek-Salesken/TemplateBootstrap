<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Modal</title>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<link rel="stylesheet"
	href="<%=baseURL%>webapp/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseURL%>webapp/assets/css/Modal.css">
<link rel="stylesheet" href="<%=baseURL%>webapp/assets/css/all.css">
<link rel="stylesheet"
	href="<%=baseURL%>webapp/assets/css/select2.min.css">
</head>
<body>
	<!--------------------------------------------- Opening of container ------------------------------------------------------>
	<div class="container h-100">

		<!--  start of main row of page  -->
		<div class="row align-items-center h-100">

			<!-- Button trigger modal -->
			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#exampleModalCenter">Launch demo modal</button>

			<!-- Modal -->
			<div class="modal fade" id="exampleModalCenter" tabindex="-1"
				role="dialog" aria-labelledby="exampleModalCenterTitle"
				aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content ">
						<div class="modal-header">
							<p class="h1 modal-title f-18" id="exampleModalCenterTitle">Scheduled
								Task</p>

							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body ">
							<div class="row mb-4">
							<div class="col-md">
							<label for="exampleInputEmail1" class="h1 f-18 mb-0">Lead
									Name</label> <select class="w-100 lead_name">
									<option value="AL">Alabama</option>
									<option value="WY">Wyoming</option>
								</select>
							</div>
							</div>
							<div class="row mb-4">
								<div class="col-md-6"><label for="exampleInputEmail1" class="h1 f-14 mb-0 ">Task 
									Type</label> <select class="w-100  ">
									<option value="AL">Alabama</option>
									<option value="WY">Wyoming</option>
								</select></div>
								<div class="col-md-6"><label for="exampleInputEmail1" class="h1 f-14 mb-0">Task By
									</label> <select class="w-100 ">
									<option value="AL">Alabama</option>
									<option value="WY">Wyoming</option>
								</select></div>
							</div>
							<div class="row mb-4">
								<div class="col-md-6"><label for="exampleInputEmail1" class="h1 f-14 mb-0">Date
									</label> <select class="w-100  ">
									<option value="AL">Alabama</option>
									<option value="WY">Wyoming</option>
								</select></div>
								<div class="col-md-6"> <label for="exampleInputEmail1" class="h1 f-14 mb-0 ">Time
									</label> 
								 <input class="datepicker w-100" />
								</div>
							</div>
						</div>
						<div class="modal-footer" >
							<button type="button" class="btn btn-secondary bg-transparent theme_color font-weight-bold border-0"
								data-dismiss="modal ">Reset</button>
							<button type="button" class="btn theme_bg_color btn-primary border_shadow_color rounded-0 border_color font-weight-bold">Scheduled
								</button>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!--  end of main row of page  -->

	</div>
	<script>
	$(".lead_name").select2({
	    placeholder: "Select the lead name",
	    allowClear: true
	});
	</script>
	<!--------------------------------------------- closing of container ------------------------------------------------------>

	<script src="<%=baseURL%>webapp/assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>webapp/assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>webapp/assets/js/bootstrap.min.js"></script>
	<script src="<%=baseURL%>webapp/assets/js/select2.min.js"></script>
</body>
</html>