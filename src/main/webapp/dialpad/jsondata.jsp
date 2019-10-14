<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="ISO-8859-1">
<title>JSON</title>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<!-- Links to Stylesheet -->
<link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=baseURL%>assets/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/sweetalert.css">
<style>
select {
	width: 150px;
	height: 40px;
}
</style>
</head>
<body>
	<!-- Container starts -->
	<div class="container pt-5">
		<!-- Example row of columns -->
		<div class="row py-4">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">Home</li>
				</ol>
			</nav>
		</div>

		<div class="row py-4">
			<div class="col">
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item"><a class="nav-link active" id="home-tab"
						data-toggle="tab" href="#home" role="tab" aria-controls="home"
						aria-selected="true">Home</a></li>
					<li class="nav-item"><a class="nav-link" id="profile-tab"
						data-toggle="tab" href="#profile" role="tab"
						aria-controls="profile" aria-selected="false">Profile</a></li>
					<li class="nav-item"><a class="nav-link" id="contact-tab"
						data-toggle="tab" href="#contact" role="tab"
						aria-controls="contact" aria-selected="false">Contact</a></li>
				</ul>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="home" role="tabpanel"
						aria-labelledby="home-tab"><jsp:include
							page="../tabcontent/home.jsp"></jsp:include></div>
					<div class="tab-pane fade" id="profile" role="tabpanel"
						aria-labelledby="profile-tab"><jsp:include
							page="../tabcontent/profile.jsp"></jsp:include></div>
					<div class="tab-pane fade" id="contact" role="tabpanel"
						aria-labelledby="contact-tab">.contact..</div>
				</div>
			</div>
		</div>


	</div>
	<!-- Container ends -->


	<!-- Modal Start-->
	<div class="modal fade" id="mymodal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form id="myform">
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
							<div class="col-sm-10">
								<input type="text" readonly class="form-control-plaintext"
									name="email" id="staticEmail">
							</div>
						</div>
						<div class="form-group row">
							<label for="name" class="col-sm-2 col-form-label">Name</label>
							<div class="col-sm-10">
								<input type="text" required="required" name="Name"
									class="form-control" id="name">
							</div>
						</div>
						<div class="form-group row">
							<label for="username" class="col-sm-2 col-form-label">Username</label>
							<div class="col-sm-10">
								<input type="text" required="required" name="Username"
									class="form-control" id="username">
							</div>
						</div>
						<div class="form-group row">
							<label for="phone" class="col-sm-2 col-form-label">Phone</label>
							<div class="col-sm-10">
								<input type="text" required="required" name="Phone"
									class="form-control" id="phone">
							</div>
						</div>
						<div class="form-group row">
							<label for="website" class="col-sm-2 col-form-label">Website</label>
							<div class="col-sm-10">
								<input type="text" required="required" name="Webiste"
									class="form-control" id="website">
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" id="close" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button type="submit" id="change" class="btn btn-primary">Save
								changes</button>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>
	<!-- Modal Ends -->


	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<script src="<%=baseURL%>assets/js/hometab.js"></script>
	<script src="<%=baseURL%>assets/js/sweetalert.js"></script>
	<script src="<%=baseURL%>assets/js/profiletab.js"></script>
</body>
</html>