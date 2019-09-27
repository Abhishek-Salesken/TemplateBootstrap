<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Sections</title>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<style>
body {
	position: relative; /* required */
}

html, body {
	height: 100%;
}

.list-group {
	position: sticky;
	/* Supported in latest version of Chrome, Firefox, Safari, Opera and Edge browsers */
	top: 15px;
}

.lodaer-main {
	background: #ffffff;
	z-index: 2;
	opacity: 0.7;
}

.spinner-div {
	
}
</style>
<link rel="stylesheet"
	href="<%=baseURL%>webapp/assets/css/bootstrap.min.css">
</head>
<body data-spy="scroll" data-offset="15" data-target="#myScrollspy">

	<div class="container">
		<h1>Bootstrap Scrollspy</h1>
		<p class="lead">
			<i>Scroll this page and see how the nav items are highlighted
				automatically based on the scroll position.</i>
		</p>
		<div class="row">
			<div class="col-sm-3" id="myScrollspy">
				<div class="list-group">
					<a class="list-group-item list-group-item-action active"
						href="#section1">Section One</a> <a
						class="list-group-item list-group-item-action" href="#section2">Section
						Two</a> <a class="list-group-item list-group-item-action"
						href="#section3">Section Three</a> <a
						class="list-group-item list-group-item-action" href="#section4">Section
						Four</a> <a class="list-group-item list-group-item-action"
						href="#section5">Section Five</a>
				</div>
			</div>

			<div class="col-sm-9">
				<jsp:include page="../inc/sections/section1.jsp"></jsp:include>
				<jsp:include page="../inc/sections/section2.jsp"></jsp:include>
				<jsp:include page="../inc/sections/section3.jsp"></jsp:include>
				<jsp:include page="../inc/sections/section4.jsp"></jsp:include>
				<jsp:include page="../inc/sections/section5.jsp"></jsp:include>
				<jsp:include page="../inc/sections/section6.jsp"></jsp:include>
			</div>
		</div>
	</div>

	<script src="<%=baseURL%>webapp/assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>webapp/assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>webapp/assets/js/bootstrap.min.js"></script>
</body>
</html>