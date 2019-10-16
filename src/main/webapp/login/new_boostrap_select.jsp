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
<title>Chosen Validation</title>
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
<link href="<%=baseURL%>assets/css/chosen.css" rel="stylesheet" />
<link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/Modal.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/select2.min.css">
<link rel="stylesheet"
	href="<%=baseURL%>assets/css/jquery.multiselect.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/css/bootstrap-select.min.css">

<!-- https://developer.snapappointments.com/bootstrap-select/options/#sanitizer -->


<style type="text/css">

/* start of searchbox related css */
.inner>.dropdown-menu>li:nth-child(even) {
	background-color: #f9f9f9;
}

.bs-searchbox {
	padding: 22px 22px;
}

.bs-searchbox>input {
	border-radius: 0px !important;
}
/* end of searchbox related css */
.inner>.dropdown-menu>li {
	border-bottom: 1px solid #cccccc;
}

/* start of dropdown related css */
.dropdown-menu {
	padding-top: 0px;
}

.dropdown>.btn {
	border-radius: 0px !important;
	border: 1px solid #cccccc;
}

@media screen and (min-width: 768px) {
	.bootstrap-select .dropdown-menu li a {
		height: 40px;
	}
}
/* end of dropdown related css */
.text {
	width: 100%;
}

/* Start of task_type drop-down css */
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
	padding-top: 11px;
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

.lighter_purple_color {
	background-color: #8665eb !important;
}

.task_type ~ .dropdown-toggle .fas {
	background-color: #dae0e5 !important;
}

/*end of task type drop-down css */

.has-error .help-block{
color:#b94a48;
}
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
							<form id="myform">
								<div class="form-group">
									<label for="lead_name" class="h5 f-14">Lead Name</label> <select
										class=" myselectchoosen chosen-select" tabindex="4"
										title="Choose Lead Name" name="lead">


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
								<div class="form-row">
									<div class="form-group col-md-6">
										<label for="task_type">Task Type</label>
										<div>
											<select class="selectpicker w-100 task_type"
												title="Select here" name="task_type">
												<option data-icon="fas fa-phone-square-alt tea_color"
													class="">Call Task</option>
												<option data-icon="fas fa-envelope-square tangerine_color">Email
													Task</option>
												<option data-icon="fas fa-desktop soft_blue_color">Webinar
													Task</option>
												<option
													data-icon="fas fa-file-powerpoint lighter_purple_color">Presentation
													Tasks</option>
											</select>
										</div>
									</div>
									<div class="form-group col-md-6">
										<label for="task_by">Task By</label>
										<div class="form-group">
											<select class="selectpicker form-control" name="task_by"
												title="select here">
												<option>Mustard</option>
												<option>Ketchup</option>
												<option>Relish</option>
											</select>
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col-md-6">
										<div class="f-14 fw-500 pb-1">Date</div>
										<div class="custom-modal-input w-100 form-group d-flex mr-2">
											<input class="f-14  removefocus w-100 pl-2"
												placeholder="Select here" id="event_date"
												value="<%=today_date%>" name="date"> <img
												src="<%=baseURL%>assets/image/calendar.svg" class="pr-2">
										</div>
									</div>
									<div class="form-group col-md-6">
										<div class="f-14 fw-500 pb-1">Time</div>
										<div class="custom-modal-input form-group w-100 d-flex mr-2">
											<input class="f-14  removefocus w-100 pl-2 timepicker"
												type="text" name="timepicker" placeholder="Select here"
												name="time"> <img
												src="<%=baseURL%>assets/image/alarm.svg" class="pr-2">
										</div>
									</div>
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<button type="button"
								class="btn f-14 g-transparent theme_color  border-0"
								data-dismiss="modal">Reset</button>
							<button type="button"
								class="btn theme_bg_color modal-submit-btn btn-primary border_shadow_color rounded-0 border_color f-14 savechanges">Save
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
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-select.min.js"></script>
	<script>
		$(document)
				.ready(
						function() {
							$('.chosen-select').selectpicker({
								width : '100%',
								sanitize : false,
								showContent : false,
								liveSearch : true,
								virtualScroll : '600'
							});

							$('#myform')
									
									.bootstrapValidator(
											{
												excluded : ':disabled',
												feedbackIcons : {
													valid : 'glyphicon glyphicon-ok',
													invalid : 'glyphicon glyphicon-remove',
													validating : 'glyphicon glyphicon-refresh'
												},
												fields : {
													task_by : {
														validators : {
															notEmpty : {
																message : 'Please select task by.'
															}
														}
													},
													task_type : {
														validators : {
															notEmpty : {
																message : 'Please select task type.'
															}
														}
													},
													lead : {
														validators : {
															notEmpty : {
																message : 'Please select Lead Name.'
															}
														}
													}
												}
											});
							$(".modal-submit-btn").click(function() {
								$('#myform').submit();
							});

						});
	</script>
</body>
</html>