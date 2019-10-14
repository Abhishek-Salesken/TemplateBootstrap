<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>jQuERY UI</title>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=baseURL%>assets/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/jquery-ui.min.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/jquery-ui.theme.css">
<style>
#draggable {
	width: 150px;
	height: 150px;
	padding: 0.5em;
	z-index: 1;
}

#droppable {
	width: 300px;
	height: 300px;
	padding: 0.5em;
	margin: 10px;
	
}
</style>

</head>
<body>
	<div class="container py-5">
		<div class="row">
			<div class="col-md-6">
				<div id="draggable" class="ui-widget-content">
					<p>Drag Box</p>
				</div>
			</div>
			<div class="col-md-6">
				<div id="droppable" class="ui-widget-header">
					<p>Drop Box</p>
				</div>

			</div>
		</div>
	</div>


	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<%-- <script src="<%=baseURL%>assets/js/jquery.js"></script> --%>
	<script src="<%=baseURL%>assets/js/jquery-ui.min.js"></script>

	<script>
		$(document).ready(
				function() {
					$("#date").datepicker();

					$("#draggable").draggable();
					$("#droppable").droppable(
							{
								drop : function(event, ui) {
									$(this).addClass("ui-state-highlight")
											.find("p").html("Box Dropped!");
								}
							});
				});
	</script>


</body>
</html>