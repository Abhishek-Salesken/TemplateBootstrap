<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Salesken Call Screen</title>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<link rel="stylesheet"
	href="<%=baseURL%>assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=baseURL%>assets/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=baseURL%>assets/css/call_screen_chirag.css">
	      <link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">
	
</head>

<body>
	<div class="container border rowShadow">
		<header>
			<div class="row p-2 border-bottom">
				<div class="col-md-2 p-0 d-flex align-items-center">
					<div class="fa fa-arrow-left d-flex align-items-center"></div>

					<h3 class="d-flex align-items-center m-0 pl-4">Call Task</h3>
				</div>
				<div class="col-md-7 d-flex align-items-center verticalBorder">
					<ol
						class="breadcrumb breadcrumbBg d-flex align-items-center m-0 p-0">
						<li><a class="breadcrumbText" href="#">Task Details</a></li>
						<li><i
							class="fa fa-chevron-circle-right chevron-color px-2 d-flex align-items-center"></i></li>
						<li><a class="breadcrumbText" href="#">Call Task</a></li>
					</ol>
				</div>
			</div>
		</header>
		<div class="row p-2">
			<div class="col-md-3 border-right">

				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item"><a class="nav-link active tabText"
						id="dialer-tab" data-toggle="tab" href="#dialer" role="tab"
						aria-controls="dialer" aria-selected="true">Dialer</a></li>

					<li class="nav-item"><a class="nav-link tabText"
						id="recent-tab" data-toggle="tab" href="#recent" role="tab"
						aria-controls="recent" aria-selected="false">Recent</a></li>

					<li class="nav-item"><a class="nav-link tabText"
						id="leads-tab" data-toggle="tab" href="#leads" role="tab"
						aria-controls="leads" aria-selected="false">Leads</a></li>
				</ul>

				<div class="row p-0 m-0 border-bottom "></div>
				<div class="row border-bottom pt-2">
					<div class="input-group d-flex align-items-center mb-3">
						<input type="text" class="form-control"
							placeholder="Enter the number">
						<div class="input-group-append">
							<button class="btn mr-3" type="submit">
								<i class="far fa-clock"></i>
							</button>


						</div>
					</div>
				</div>
				<div class="row pt-4 marginBottom">
					<div
						class="col-md-4 col-4 d-flex justify-content-center align-items-center">
						<div
							class="digit d-flex flex-column justify-content-center align-items-center">
							<div class="sp">1</div>
							<div class="sub">.</div>
						</div>
					</div>
					<div
						class="col-md-4 col-4 d-flex justify-content-center align-items-center">
						<div
							class="digit d-flex flex-column justify-content-center align-items-center">
							<div class="sp">2</div>
							<div class="sub">ABC</div>
						</div>
					</div>
					<div
						class="col-md-4 col-4 d-flex justify-content-center align-items-center">
						<div
							class="digit d-flex flex-column justify-content-center align-items-center">
							<div class="sp">3</div>
							<div class="sub">DEF</div>
						</div>
					</div>
					<div
						class="col-md-4 col-4 d-flex justify-content-center align-items-center">
						<div
							class="digit d-flex flex-column justify-content-center align-items-center">
							<div class="sp">4</div>
							<div class="sub">GHI</div>
						</div>
					</div>
					<div
						class="col-md-4 col-4 d-flex justify-content-center align-items-center">
						<div
							class="digit d-flex flex-column justify-content-center align-items-center">
							<div class="sp">5</div>
							<div class="sub">JKL</div>
						</div>
					</div>
					<div
						class="col-md-4 col-4 d-flex justify-content-center align-items-center">
						<div
							class="digit d-flex flex-column justify-content-center align-items-center">
							<div class="sp">6</div>
							<div class="sub">MNO</div>
						</div>
					</div>
					<div
						class="col-md-4 col-4 d-flex justify-content-center align-items-center">
						<div
							class="digit d-flex flex-column justify-content-center align-items-center">
							<div class="sp">7</div>
							<div class="sub">PQRS</div>
						</div>
					</div>
					<div
						class="col-md-4 col-4 d-flex justify-content-center align-items-center">
						<div
							class="digit d-flex flex-column justify-content-center align-items-center">
							<div class="sp">8</div>
							<div class="sub">TUV</div>
						</div>
					</div>
					<div
						class="col-md-4 col-4 d-flex justify-content-center align-items-center">
						<div
							class="digit d-flex flex-column justify-content-center align-items-center">
							<div class="sp">9</div>
							<div class="sub">WXYZ</div>
						</div>
					</div>
					<div
						class="col-md-4 col-4 d-flex justify-content-center align-items-center">
						<div
							class="digit d-flex flex-column justify-content-center align-items-center">
							<div class="fa fa-asterisk AstHash"></div>
						</div>
					</div>
					<div
						class="col-md-4 col-4 d-flex justify-content-center align-items-center">
						<div
							class="digit d-flex flex-column justify-content-center align-items-center">
							<div class="sp">0</div>
							<div class="subplus fa fa-plus"></div>
						</div>
					</div>
					<div
						class="col-md-4 col-4 d-flex justify-content-center align-items-center">
						<div
							class="digit d-flex flex-column justify-content-center align-items-center">
							<div class="fa fa-hashtag AstHash"></div>
						</div>
					</div>
					<div class="col-md-12 col-12">
						<div
							class="digit mx-auto d-flex flex-column justify-content-center align-items-center ">
							<div class="button rowShadow rounded-circle rounded-circle-num">
								<i class="fa fa-phone phone"></i>
							</div>
						</div>
					</div>

				</div>
			</div>
			<div class="col-md-9">
				<div
					class="imageMargin d-flex flex-column justify-content-center align-items-center">
					<img alt=""
						src="<%=baseURL%>assets/images/call_screen/call.png">
					<h3>Start the process</h3>
					<p>lorem lopsum is simply dummy text of the printing and
						typesetting industry.</p>
				</div>

			</div>
		</div>
	</div>



	<script src="<%=baseURL%>webapp/assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>webapp/assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>webapp/assets/js/bootstrap.min.js"></script>
</body>
</html>