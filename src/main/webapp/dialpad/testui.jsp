<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
	<script src="<%=baseURL%>assets/js/jquery.js"></script>
	<script src="<%=baseURL%>assets/js/jquery-ui.min.js"></script>

	<script>
		$(document).ready(function() {
			
	// Start of Creating a draggable box using id: #draggable
			$("#draggable").draggable({

				addClasses : false,
				appendTo : "body",
				//delay: 300 ,
				disabled : false,
				distance : 10,
				//grid : [ 100, 20 ]
				// helper: "clone"

				opacity : 0.55,
				revert : "invalid",
				revertDuration :1000,
				scroll : false,
				zIndex : 1

			});
	// End of creating a draggable box using id: #draggable
	
	
			var addClasses = $("#draggable").draggable("option", "addClasses");
			var appendTo = $("#draggable").draggable("option", "appendTo");
			console.log(addClasses, appendTo)
			
	// Start of creating a droppable box for the draggable component using id: #droppable
			$("#droppable").droppable({
				accept : "#draggable",
				disabled : false,
				
				drop : function(event, ui) {
					$(this).css("background-color", "green");
					$(this).find("p").html("Box Dropped!");
				}
			});
			// End of creating a droppable box for the draggable component using id: #droppable
			
			var accept = $("#droppable").droppable("option", "accept");
			console.log(accept)
			

		});
	</script>


</body>
</html>