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
<title>leads_edit_page</title>
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
<link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap-select.min.css">
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
				data-target="#editleadmodal">Launch demo modal</button>

			<!-- Modal -->


			<div class="modal modal fade" tabindex="-1" role="dialog"
				id="editleadmodal">
				<div class="modal-dialog  modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<span class="modal-title">Add Lead</span>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<!-- 			modal-body loads from inc/lost.jsp                  -->
						<div class="modal-body">
							<div class="leadtopform px-3" style="background: #f8f9fa;">

								<div class="form-row py-2">
									<div class="col">
										<label class="istar_lead-label f-15">Company Name</label> <input
											type="text" class="form-control f-14"
											placeholder="First name" name="company_name"
											id="company_name">
									</div>
									<div class="col">
										<label class="istar_lead-label f-15">City</label>
										<input type="text" class="form-control f-14"
											placeholder="Last name" name="city_company_name"
											id="city_company_name">
									</div>
								</div>

								<div class="form-row py-2">
									<div class="col">

										<div class="form-group">
											<label for="about_company" class="f-15">About Company
											</label>
											<textarea class="form-control f-14" rows="4"
												id="exampleFormControlTextarea1" rows="3"
												name="about_company" id="about_company"></textarea>
										</div>

									</div>
									<div class="col">
										<div class="form-group">
											<label for="lead_source" class="f-15">Lead Source</label> <input
												type="email" class="form-control f-14"
												id="exampleFormControlInput1" placeholder="name@example.com"
												name="lead_source" id="lead_source">
										</div>
										<div class="form-group">
											<label for="company_website" class="f-15">Company
												Website</label> <input type="email" class="form-control f-14"
												id="exampleFormControlInput1" placeholder="name@example.com"
												name="company_website" id="company_website">
										</div>
									</div>
								</div>
								<div class="form-row py-2">
									<div class="col">

										<div class="form-group">
											<label for="address" class="f-15">Address </label>
											<textarea class="form-control f-14" rows="4"
												id="exampleFormControlTextarea1" rows="3" name="address"
												id="address"></textarea>
										</div>

									</div>
									<div class="col">

										<div class="form-group">
											<label for="country">Country</label> <input type="email"
												class="form-control" id="exampleFormControlInput1"
												placeholder="name@example.com" name="country" id="country">
										</div>
										<div class="form-group">
											<label for="exampleFormControlInput1" class="f-15">State</label>
											<input type="email" class="form-control f-14"
												id="exampleFormControlInput1" placeholder="name@example.com"
												name="state" id="state">
										</div>
									</div>

								</div>
							</div>
							<div class="row text-right p-3">
								<button type="button"
									class="ml-auto p-1 px-2 btn btn-danger editLeadToggleSteps"
									data-step="editLeadSCPStep">Save</button>
							</div>
							<div class="row">
								<div class="col-md-6 d-flex">
									<div class="row">
										<%
											for (int i = 0; i <= 4; i++) {
										%>
										<div class="col-md-6 mb-4">
											<div class="card p-2">
												<div class="card-body p-0">
													<input type="email" class="form-control f-14 mb-1"
														id="sales_person_name" aria-describedby="emailHelp"
														placeholder="Sales Person Name" name="sales_person_name">
													<input type="email" class="form-control f-14 mb-1"
														id="sales_person_email" aria-describedby="emailHelp"
														placeholder="Sales Person Email" name="sales_person_email">
													<input type="email" class="form-control f-14  mb-1"
														id="sales_person_phone" aria-describedby="emailHelp"
														placeholder="Sales Person Phone" name="sales_person_phone">
													<input type="email" class="form-control f-14 mb-1"
														id="sales_person_phone" aria-describedby="emailHelp"
														placeholder="Sales Person Alternative Phone"
														name="sales_person_phone">


												</div>
											</div>
										</div>
										<%
											}
										%>



										<div
											class="col-md-6 d-flex justify-content-center align-items-center">
											<button type="button"
												class=" p-1 px-2 btn btn-danger editLeadToggleSteps rounded-circle"
												style="height: 40px; width: 40px"
												data-step="editLeadPipelineStep">
												<i class="fas fa-plus"></i>
											</button>
										</div>
									</div>
								</div>
								<div class="col-md-6 ">
									<div class="my-3">Lead Allocation items</div>

									<div id="editLeadPipelineStep" style="">
										<div class="input-group input-group-sm mb-3">
											<div class="input-group-prepend w-25">
												<span class="input-group-text w-100"
													id="inputGroup-sizing-default">Pipeline</span>
											</div>
											<select
												class="form-control form-control-sm editLeadPipelines">
												<option selected="selected" value="-1" disabled="disabled">Select
													One</option>

												<option selected="selected" value="121">E_Council
													Pipeline</option>

											</select>
										</div>
										<div class="input-group input-group-sm mb-3">
											<div class="input-group-prepend w-25">
												<span class="input-group-text w-100"
													id="inputGroup-sizing-default">Stage</span>
											</div>
											<select class="form-control form-control-sm editLeadStages">
												<option selected="selected" value="-1" disabled="disabled">Select
													One</option>

												<option value="823">sales call</option>

											</select>
										</div>
										<div class="input-group input-group-sm mb-3">
											<div class="input-group-prepend w-25">
												<span class="input-group-text w-100"
													id="inputGroup-sizing-default">Task</span>
											</div>
											<select class="form-control form-control-sm editLeadTasks">
												<option selected="selected" value="-1" disabled="disabled">Select
													One</option>

											</select>
										</div>
										<div class="d-flex justify-content-end">
											<button type="button"
												class=" p-1 px-2 btn btn-danger editLeadToggleSteps mb-3"
												data-step="editLeadSCPStep">Next</button>
										</div>
									</div>
									<div id="editLeadSCPStep" style="">
										<div class="input-group input-group-sm mb-3">
											<div class="input-group-prepend w-25">
												<span class="input-group-text w-100"
													id="inputGroup-sizing-default">Contact person</span>
											</div>
											<select class="form-control form-control-sm editLeadSCP">


												<option selected="selected" value="100492">Brenden
													Hudson</option>

											</select>
										</div>
										<div class="input-group input-group-sm mb-3">
											<div class="input-group-prepend w-25">
												<span class="input-group-text w-100"
													id="inputGroup-sizing-default"> Associate</span>
											</div>
											<select
												class="form-control form-control-sm editLeadAssociates">

												<option value="218590">Navin More</option>

												<option value="218700">Gitesh</option>

												<option value="218701">Dhruv</option>

												<option value="218703">Carmo</option>

												<option selected="selected" value="218993">Farhin
													Tarapurwala</option>

												<option value="218994">Ashish Oberoi</option>

												<option value="218586">Swagat Chavan</option>

											</select>
										</div>
										<div class="input-group input-group-sm mb-3">
											<div class="input-group-prepend w-25">
												<span class="input-group-text w-100"
													id="inputGroup-sizing-default">Date And Time</span>
											</div>

											<input class="form-control" id="editLeadDateandTime"
												type="datetime-local" min="2019-10-14T20:17"
												name="editLeadDateandTime" value="2019-10-287T20:17">
										</div>
										<div class="d-flex justify-content-between">
											<button type="button"
												class=" p-1 px-2 btn btn-danger editLeadToggleSteps"
												data-step="editLeadPipelineStep">Previous</button>

											<button type="button"
												class=" p-1 px-2 btn btn-danger istar-allocate-lead-submit"
												data-task_id="-1">Allocate</button>
										</div>
									</div>
								</div>
							</div>


						</div>
					</div>
				</div>
			</div>
			<div class="modal fade" id="scheduleTaskModalCenter" tabindex="-1"
				role="dialog" aria-labelledby="scheduleTaskModalCenterTitle"
				aria-hidden="true">
				<div class="modal-dialog modal-lg modal-dialog-centered"
					role="document">
					<div class="modal-content eventmodalsize rounded-0 px-3">
						<div class="row shadow-sm p-3">
							<div
								class="col-md-11 col-11 modal-title greyish-brown f-18 font-weight-bold"
								id="scheduleTaskModalCenterTitle">Schedule Task</div>
							<button type="button" class="col-md-1 col-1 close"
								data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="row pb-4">
								<div class="col-md-12 istar-dropdown">
									<div class="f-14 fw-500 pb-1">Lead Name</div>
									<div class="form-group">
										<select class="form-control selectpicker "
											data-style="removefocus" title="Select here"
											data-live-search="true" id="exampleFormControlSelect1">

											<%
												for (int i = 0; i < 10; i++) {
													String bgcolor = "bg-white";
													if (i % 2 == 0) {
														bgcolor = "cream_white";
													}
											%>
											<option
												data-content="<div class='row w-100 py-2 px-3 m-0'>
													<div class='col-md-4 f-14 fw-500 black text-center'>Vehement Capital Partners</div>
															<div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin <%=i%></div>
																<div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
														 </div>">Miriam
												Franklin
												<%=i%></option>
											<%
												}
											%>
										</select>
									</div>


								</div>

							</div>
						</div>


					</div>

				</div>
				<!-- end of Modal -->
			</div>
			<!-- Button trigger modal -->


			<!-- Modal -->

		</div>
		<!--  end of main row of page  -->
	</div>
	<!--------------------------------------------- closing of container ------------------------------------------------------>
	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<script src="<%=baseURL%>assets/js/select2.min.js"></script>
	<script src="<%=baseURL%>assets/js/multiselect.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-select.min.js"></script>
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