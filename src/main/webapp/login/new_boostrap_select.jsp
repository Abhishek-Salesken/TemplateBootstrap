<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Chosen</title>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<link href="<%=baseURL%>assets/css/chosen.css" rel="stylesheet" />
<link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/Modal.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/select2.min.css">
<link rel="stylesheet"
	href="<%=baseURL%>assets/css/jquery.multiselect.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/css/bootstrap-select.min.css">

<!-- https://developer.snapappointments.com/bootstrap-select/options/#sanitizer -->


<style type="text/css">
.inner>.dropdown-menu>li:nth-child(even) {
	background-color: #f9f9f9;
}

.bs-searchbox {
	padding: 22px 22px;
}

.bs-searchbox>input {
	border-radius: 0px !important;
}

.inner>.dropdown-menu>li {
	border-bottom: 1px solid #cccccc;
}

.dropdown-menu {
	padding-top: 0px;
}

.dropdown>.btn {
	border-radius: 0px !important;
	border: 1px solid #cccccc;
}

.text {
	width: 100%;
}

@media screen and (min-width: 768px) {
	.bootstrap-select .dropdown-menu li a {
		height: 40px;
	}
}
/* Start of task type drop0-down css */
.task_type ~ .dropdown-menu li {
	border-bottom: none !important;
}

.task_type ~ .dropdown-menu .dropdown-item.active, .dropdown-item:active
	{
	color: black;
	font-weight: bold;
	font-size: 14px;
	background-color: #eeeeee;
}

.task_type ~ .dropdown-menu .dropdown-item>.fas {
	display: inline-block;
	border-radius: 50%;
	width: 25px;
	height: 25px;
	box-shadow: 0px 0px 2px #888;
	padding: 6px 6px;
	color: white;
	margin-right: 5px;
}

.task_type ~ .dropdown-menu .dropdown-item>.text {
	width: 90%;
}

.task_type ~ .dropdown-menu a:hover {
	color: black;
	background-color: #eeeeee !important;
}

.task_type ~ .dropdown-menu a {
	padding-top: 9px;
	height: 50px !important;
	color: #999999;
	height: 50px !important;
	font-size: 14px;
	outline: none;
}

.task_type ~ .dropdown-menu a:focus {
	border: none !important;
}

.task_type .inner>.dropdown-menu>li:nth-child(even) {
	background-color: white;
}

/* start of color related css */
.tea_color {
	background-color: #57b280 !important;
}

.tangerine_color {
	background-color: #f79c0d !important;
}

.soft_blue_color {
	background-color: #6297f6 !important;
}

.lighter_purple_color  {
	background-color: #8665eb !important;
}

.task_type ~ .dropdown-toggle .fas{
	
    background-color: #dae0e5 !important;
}
/* end of related css */
/*end of task type drop0-down css */


</style>
</head>
<body>
	<!--------------------------------------------- Opening of container ------------------------------------------------------>
	<div class="container h-100">
		<!--  start of main row of page  -->
		<div class="row justify-content-center ">
			<!-- Button trigger modal -->
			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#exampleModalCenter">Choosen plug In</button>
			<!-- start of Modal -->
			<div class="modal fade" id="exampleModalCenter" tabindex="-1"
				role="dialog" aria-labelledby="exampleModalCenterTitle"
				aria-hidden="true">
				<div class="modal-dialog modal-lg modal-dialog-centered"
					role="document">
					<div class="modal-content ">
						<div class="modal-header">
							<h5 class="modal-title f-18" id="scheduled_task">Scheduled
								task</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<form>
								<div class="form-group">
									<label for="lead_name" class="h5 f-14">Lead Name</label> <select
										class=" myselectchoosen chosen-select" tabindex="4"
										title="Choose Lead Name">


										<option
											data-content="<div class='row'>
											 <div class='col-md-4 f-14 font-weight-bold black'>Vehement Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Miriam
											Franklin</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-4 f-14 font-weight-bold black'>Dersa  Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Dersa
											Franklin</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-4 f-14 font-weight-bold black'>Swerat Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Swerat
											Franklin</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-4 f-14 font-weight-bold black'>gerwea Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">gerwea
											fgfd</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-4 f-14 font-weight-bold black'>Ftdref Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Ftdref
											Franklin</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-4 f-14 font-weight-bold black'>Ddgry  Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Ddgry
											Franklin</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-4 f-14 font-weight-bold black'>Ddgry  Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Ddgry
											Franklin</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-4 f-14 font-weight-bold black'>Vehement Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Miriam
											Franklin</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-4 f-14 font-weight-bold black'>Dersa  Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Dersa
											Franklin</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-4 f-14 font-weight-bold black'>Swerat Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Swerat
											Franklin</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-4 f-14 font-weight-bold black'>gerwea Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">gerwea
											fgfd</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-4 f-14 font-weight-bold black'>Ftdref Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Ftdref
											Franklin</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-4 f-14 font-weight-bold black'>Ddgry  Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Ddgry
											Franklin</option>
									</select>
								</div>
								<div class="form-group">
									<label for="task_name" class="h5 f-14">Task Name</label> <select
										class=" myselectchoosen chosen-select" tabindex="4"
										title="Choose Task Name" multiple>


										<option
											data-content="<div class='row'>
											 <div class='col-md-4 f-14 font-weight-bold black'>Vehement Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Miriam
											Franklin</option>

										<option
											data-content="<div class='row'>
											 <div class='col-md-4 f-14 font-weight-bold black'>Dersa  Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Dersa
											Franklin</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-4 f-14 font-weight-bold black'>Swerat Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Swerat
											Franklin</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-4 f-14 font-weight-bold black'>gerwea Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">gerwea
											fgfd</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-4 f-14 font-weight-bold black'>Ftdref Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Ftdref
											Franklin</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-4 f-14 font-weight-bold black'>Ddgry  Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Ddgry
											Franklin</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-4 f-14 font-weight-bold black'>Vehement Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Miriam
											Franklin</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-4 f-14 font-weight-bold black'>Dersa  Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Dersa
											Franklin</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-4 f-14 font-weight-bold black'>Swerat Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Swerat
											Franklin</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-4 f-14 font-weight-bold black'>gerwea Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">gerwea
											fgfd</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-4 f-14 font-weight-bold black'>Ftdref Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Ftdref
											Franklin</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-4 f-14 font-weight-bold black'>Ddgry  Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Ddgry
											Franklin</option>

									</select>
								</div>


								<div class="form-row">
									<div class="form-group col-md-6">
										<label for="task_type">Task Type</label>
										<div>
											<select class="selectpicker w-100 task_type"
												title="Select here">
												<option data-icon="fas fa-phone-square-alt tea_color"
													class="">Call Task</option>
												<option data-icon="fas fa-envelope-square tangerine_color">Email
													Task</option>
												<option data-icon="fas fa-desktop soft_blue_color">Webinar
													Task</option>
												<option
													data-icon="fas fa-file-powerpoint lighter_purple_color">Presentation</option>
											</select>
										</div>
									</div>
									<div class="form-group col-md-6">
										<label for="task_by">Task By</label>
										<div class="form-group">
											<select class="selectpicker form-control">
												<option>Mustard</option>
												<option>Ketchup</option>
												<option>Relish</option>
											</select>
										</div>
									</div>
								</div>
								<!-- <div class="form-row">
									<div class="form-group col-md-6">
										<label for="task_name" class="h5 f-14">Task Name</label> 
										<select class="selectpicker" title="Select here">
											<option data-icon="fas fa-phone-volume">Call Task</option>
											<option data-icon="fas fa-envelope-square">Email Task</option>
											<option data-icon="fas fa-desktop">Webinar Task</option>
											<option data-icon="fas fa-signal">Presentation</option>
										</select>
									</div>
									<div class="form-group col-md-6">
										<select class="selectpicker">
											<option data-icon="fa-heart">Ketchup</option>
										</select>
									</div>
								</div> -->

							</form>
						</div>
						<div class="modal-footer">
							<button type="button"
								class="btn f-14 g-transparent theme_color  border-0"
								data-dismiss="modal">Reset</button>
							<button type="button"
								class="btn theme_bg_color btn-primary border_shadow_color rounded-0 border_color f-14 savechanges">Save
								changes</button>
						</div>
					</div>
				</div>
			</div>
			<!-- end of Modal -->
		</div>
		<!--  end of main row of page  -->
	</div>
	<!--------------------------------------------- closing of container ------------------------------------------------------>
	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<script src="<%=baseURL%>assets/js/select2.min.js"></script>
	<script src="<%=baseURL%>assets/js/chosen.jquery.js"></script>

	<script src="<%=baseURL%>assets/js/bootstrap-select.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/js/i18n/defaults-*.min.js"></script>
	<script>
		$(document).ready(function() {
			$('.chosen-select').selectpicker({
				width : '100%',
				sanitize : false,
				showContent : false,
				liveSearch : true,
				virtualScroll : '600'
			});
		});
	</script>
</body>
</html>