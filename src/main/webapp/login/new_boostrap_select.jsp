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

.dropdown-menu>li {
	height: 40px;
	border-bottom: 1px solid #cccccc;
}

.dropdown-item {
	height: 100%;
}

.form-control {
	margin: 6px 9px 12px 0px !important;
	padding: 13px 28px !important;
	border-radius: 0px !important;
}

.bs-searchbox {
	padding: 22px 28px 7px 28px !important;
	background-color: #f9f9f9;
}

.dropdown-item:active {
	color: #fff;
	text-decoration: none;
	height: 100% !important;
	background-color: #007bff;
}

.dropdown-item:focus {
	color: #fff;
	text-decoration: none;
	height: 100% !important;
	background-color: #007bff;
}

.dropdown-menu {
	padding-top: 0px;
	overflow: none !important;
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
				data-target="#exampleModalCenter">Chosen plug In</button>
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
										data-placeholder="Choose a Country..."
										class=" myselectchoosen chosen-select" tabindex="4" title="Choose Lead Name">


										<option
											data-content="<div class='row'>
											 <div class='col-md-5 f-14 font-weight-bold black'>Vehement Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-3 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Miriam
											Franklin</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-5 f-14 font-weight-bold black'>Dersa  Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-3 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Dersa
											Franklin</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-5 f-14 font-weight-bold black'>Swerat Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-3 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Swerat
											Franklin</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-5 f-14 font-weight-bold black'>gerwea Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-3 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">gerwea
											fgfd</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-5 f-14 font-weight-bold black'>Ftdref Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-3 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Ftdref
											Franklin</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-5 f-14 font-weight-bold black'>Ddgry  Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-3 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Ddgry
											Franklin</option>
									</select>
								</div>
								<div class="form-group">
									<label for="lead_name" class="h5 f-14">Task Name</label> <select
										data-placeholder="Choose a Country..."
										class=" myselectchoosen chosen-select" tabindex="4" multiple title="Choose Task Name">


										<option
											data-content="<div class='row'>
											 <div class='col-md-5 f-14 font-weight-bold black'>Vehement Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-3 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Miriam
											Franklin</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-5 f-14 font-weight-bold black'>Dersa  Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-3 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Dersa
											Franklin</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-5 f-14 font-weight-bold black'>Swerat Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-3 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Swerat
											Franklin</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-5 f-14 font-weight-bold black'>gerwea Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-3 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">gerwea
											fgfd</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-5 f-14 font-weight-bold black'>Ftdref Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-3 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Ftdref
											Franklin</option>
										<option
											data-content="<div class='row'>
											 <div class='col-md-5 f-14 font-weight-bold black'>Ddgry  Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> 
											 <div class='col-md-3 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Ddgry
											Franklin</option>
									</select>
								</div>


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