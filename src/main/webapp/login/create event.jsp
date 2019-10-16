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
</head>
<body>
	<!--------------------------------------------- Opening of container ------------------------------------------------------>
	<div class="container h-100">
		<!--  start of main row of page  -->

		<div class="row justify-content-center ">
			<!-- Button trigger modal -->
			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#exampleModal">Launch demo modal</button>

			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content rounded-0 px-3 eventmodalsize">
						<form id="myform">
							<div class="row shadow-sm p-3">
								<div
									class="col-md-11 col-11 modal-title greyish-brown f-18 font-weight-bold"
									id="createEventModalCenterTitle">Create an Event</div>
								<button type="button" class="col-md-1 col-1 close"
									data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<div class="row pb-4">
									<div class="col-md-6">
										<div class="f-14 fw-500 pb-1">Add Title</div>
										<div class="form-group">
											<input type="text"
												class="custom-modal-input w-100 form-control f-14"
												id="eventTitle" aria-describedby="eventTitle"
												placeholder="Type here" name="add_title">
											<div class="invalid-feedback">Add Title</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="f-14 fw-500 pb-1">Type</div>
										<div class="form-group">
											<select class="custom-select" required>
												<option value="">Select here</option>
												<option value="1">Type 1</option>
												<option value="2">Type 2-</option>
												<option value="3">type 3</option>
											</select>
											<div class="invalid-feedback">Please select option.</div>
										</div>

									</div>
								</div>
								<div class="row pb-4">
									<div class="col-md-6">
										<div class="f-14 fw-500 pb-1">Date</div>
										<div class="custom-modal-input w-100 form-group d-flex mr-2">
											<input class="f-14  removefocus w-100 pl-2"
												placeholder="Select here" id="event_date"
												value="<%=today_date%>" name="date"> <img
												src="<%=baseURL%>assets/image/calendar.svg" class="pr-2">
										</div>
									</div>
									<div class="col-md-6">
										<div class="f-14 fw-500 pb-1">Time</div>
										<div class="custom-modal-input form-group w-100 d-flex mr-2">
											<input class="f-14  removefocus w-100 pl-2 timepicker"
												type="text" name="timepicker" placeholder="Select here"
												name="time"> <img
												src="<%=baseURL%>assets/image/alarm.svg" class="pr-2">
										</div>
									</div>
								</div>
								<div class="row pb-4">
									<div class="col-md-12">
										<div class="f-14 fw-500 pb-1">Add Guest</div>
										<div class="form-group">
											<input type="text"
												class="custom-modal-input w-100 form-control f-14"
												id="addGuest" aria-describedby="addGuest"
												placeholder="Select here" name="addguest">
											<div class="invalid-feedback">Add Guest</div>
										</div>

									</div>
								</div>

								<div class="row pb-4">
									<div class="col-md-12">
										<div class="f-14 fw-500 pb-1">Description</div>
										<div class="form-group">
											<textarea id="description" rows="5" class="form-control"
												placeholder="The message you want to send to us."
												name="description"></textarea>
											<div class="invalid-feedback">Please write description.</div>
										</div>

									</div>
								</div>

							</div>
							<div class="modal-footer">
								<button type="button"
									class="btn theme_color f-14 font-weight-bold">Reset</button>
								<button type="button"
									class="btn modal-submit-btn  btn-primary f-14 font-weight-bold">CREATE</button>
							</div>
						</form>
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
	<script src="<%=baseURL%>assets/js/multiselect.js"></script>
	<script src="<%=baseURL%>assets/js/jquery.validate.js"></script>

	<script>
		$(document).ready(function() {
			$('#myform').validate({

				errorPlacement : function(error, element) {
					error.addClass('invalid-feedback');
					element.closest('#eventType').append(error);
				},
				highlight : function(element, errorClass, validClass) {
					$(element).addClass('is-invalid');
				},
				unhighlight : function(element, errorClass, validClass) {
					$(element).removeClass('is-invalid').addClass('is-valid');
				},

				/* ---------------------------------- start of rules and messages of validation---------------------- */
				rules : {
					add_title : {
						required : true,
						minlength : 3
					},
					type : {
						minlength : 2,
						required : true
					},
					date : {
						required : true
					},
					time : {
						required : true
					},
					addguest : {
						required : true
					},
					description : {
						required : true
					}
				},

			});
			$(".modal-submit-btn").click(function() {
				$('#myform').submit();
			});

		});
	</script>
</body>
</html>