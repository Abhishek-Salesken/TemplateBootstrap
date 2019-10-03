<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dial Pad</title>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<link rel="stylesheet"
	href="<%=baseURL%>webapp/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=baseURL%>webapp/assets/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=baseURL%>webapp/assets/css/dialpad.css">

</head>
<body>
	
		<button type="button" id="element" class="btn btn-secondary"
			data-container="body" data-toggle="popover" data-placement="top"
			data-html="true">Popover</button>
	
	<div
		class="container d-flex justify-content-center align-items-center h-100 box_container"
		id="dialer_view">
		
		<div class="row box_row ">
			<div class="col-md-12 col-12" id="output"></div>
			<div class="col-md-4 col-4   pt-2 cursor_pointer">
				<div
					class="outer  d-flex flex-column align-items-center justify-content-center  ">
					<span class="inner f-14">1</span>
					<div class=" sub inner f-13">.</div>
				</div>
			</div>
			<div class="col-md-4 col-4   pt-2 cursor_pointer">
				<div
					class="outer  d-flex flex-column  align-items-center justify-content-center ">
					<span class="inner f-14">2</span>
					<div class=" sub inner f-13">ABC</div>
				</div>
			</div>
			<div class=" col-md-4 col-4   pt-2 cursor_pointer">
				<div
					class="outer  d-flex flex-column  align-items-center justify-content-center ">
					<span class="inner f-14">3</span>
					<div class="sub inner f-13">DEF</div>
				</div>
			</div>
			<div class=" col-md-4 col-4   pt-2 cursor_pointer">
				<div
					class="outer  d-flex flex-column  align-items-center justify-content-center ">
					<span class="inner f-14">4</span>
					<div class="sub inner f-13">GHI</div>
				</div>
			</div>
			<div class=" col-md-4 col-4   pt-2 cursor_pointer">
				<div
					class="outer  d-flex flex-column  align-items-center justify-content-center ">
					<span class="inner f-14">5</span>
					<div class="sub inner f-13">JKL</div>
				</div>
			</div>
			<div class=" col-md-4 col-4   pt-2 cursor_pointer">
				<div
					class="outer  d-flex flex-column  align-items-center justify-content-center ">
					<span class="inner f-14">6</span>
					<div class="sub inner f-13">MNO</div>
				</div>
			</div>
			<div class=" col-md-4 col-4   cursor_pointer">
				<div
					class="outer  d-flex flex-column  align-items-center justify-content-center ">
					<span class="inner f-14">7</span>
					<div class="sub inner f-13">PQRS</div>
				</div>
			</div>
			<div class=" col-md-4 col-4   pt-2 cursor_pointer">
				<div
					class="outer  d-flex flex-column  align-items-center justify-content-center ">
					<span class="inner f-14">8</span>
					<div class="sub inner f-13">TUV</div>
				</div>
			</div>
			<div class=" col-md-4 col-4  pt-2  cursor_pointer">
				<div
					class="outer  d-flex flex-column  align-items-center justify-content-center ">
					<span class="inner f-14">9</span>
					<div class="sub inner f-13">WXYZ</div>
				</div>
			</div>
			<div class="col-md-4 col-4   pt-2 cursor_pointer">
				<div
					class="outer  d-flex   align-items-center justify-content-center ">
					<span class="inner f-14">*</span>
				</div>
			</div>
			<div class="col-md-4 col-4  pt-2  cursor_pointer">
				<div
					class="outer  d-flex flex-column  align-items-center justify-content-center ">
					<span class="inner f-14">0</span>
					<div class="sub inner f-13">+</div>
				</div>
			</div>
			<div class="col-md-4 col-4   pt-2 cursor_pointer">
				<div
					class="outer  d-flex flex-column  align-items-center justify-content-center ">
					<span class="inner f-14">#</span>
				</div>
			</div>
			<div class="col-md-12  col-12 pt-2  pb-1 cursor_pointer">
				<div
					class="button rounded-circle roundButton bg-dial inner mx-auto ">
					<i
						class=" callButton d-flex align-items-center justify-content-center fa fa-phone p-3 callButtonColor"></i>
				</div>
			</div>


		</div>
	</div>
	<script src="<%=baseURL%>webapp/assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>webapp/assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>webapp/assets/js/bootstrap.min.js"></script>
	<script>
		$("[data-toggle=popover]").popover({
			container : '#dialer_view',
			html : true,
			trigger : 'click',
			content : function() {
				return $('#dialer_view').html();
			}

		});
	</script>
</body>
</body>
</html>