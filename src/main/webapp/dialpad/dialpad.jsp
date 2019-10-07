<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="ISO-8859-1">
<title>Dial Pad</title>
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
<link rel="stylesheet" href="<%=baseURL%>assets/css/dialpad.css">

</head>
<body>

	<button type="button" id="element" class="btn btn-secondary"
		data-container="body" data-toggle="popover" data-placement="top"
		data-html="true">Popover</button>

	<div
		class="container d-flex justify-content-center align-items-center h-100 box_container"
		id="dialer_view">


		<div class="row box_row m-0 p-0">

			<div class="col-md-12 col-12 pt-2" id="output">

				<div class="input-group showFocus ">

					<input type="text" class="form-control border-0 shadow-none " id="phone"
						placeholder="Enter Number" pattern="^[0-9]+$" maxlength="14">
					<div class="input-group-append">
						<button class="btn  btnclick btn-active border-0 shadow-none">
							<i class="fa fa-backspace"></i>
						</button>
					</div>
				</div>


			</div>

			<div class="col-md-4 col-4   cursor_pointer">
				<div
					class="outer  d-flex flex-column align-items-center justify-content-center myClick ">

					<span class="inner f-14">1</span>
					<div class=" sub  f-13">.</div>
				</div>
			</div>
			<div class="col-md-4 col-4    cursor_pointer">
				<div
					class="outer  d-flex flex-column  align-items-center justify-content-center myClick">
					<span class="inner f-14 ">2</span>
					<div class=" sub f-13">ABC</div>
				</div>
			</div>
			<div class=" col-md-4 col-4    cursor_pointer">
				<div
					class="outer  d-flex flex-column  align-items-center justify-content-center myClick">
					<span class="inner f-14">3</span>
					<div class="sub  f-13">DEF</div>
				</div>
			</div>
			<div class=" col-md-4 col-4    cursor_pointer">
				<div
					class="outer  d-flex flex-column  align-items-center justify-content-center myClick">
					<span class="inner f-14">4</span>
					<div class="sub  f-13">GHI</div>
				</div>
			</div>
			<div class=" col-md-4 col-4  cursor_pointer">
				<div
					class="outer  d-flex flex-column  align-items-center justify-content-center myClick">
					<span class="inner f-14">5</span>
					<div class="sub  f-13">JKL</div>
				</div>
			</div>
			<div class=" col-md-4 col-4   cursor_pointer">
				<div
					class="outer  d-flex flex-column  align-items-center justify-content-center myClick">
					<span class="inner f-14">6</span>
					<div class="sub  f-13">MNO</div>
				</div>
			</div>
			<div class=" col-md-4 col-4   cursor_pointer">
				<div
					class="outer  d-flex flex-column  align-items-center justify-content-center myClick">
					<span class="inner f-14">7</span>
					<div class="sub  f-13">PQRS</div>
				</div>
			</div>
			<div class=" col-md-4 col-4   cursor_pointer">
				<div
					class="outer  d-flex flex-column  align-items-center justify-content-center myClick">
					<span class="inner f-14">8</span>
					<div class="sub  f-13">TUV</div>
				</div>
			</div>
			<div class=" col-md-4 col-4    cursor_pointer">
				<div
					class="outer  d-flex flex-column  align-items-center justify-content-center myClick">
					<span class="inner f-14">9</span>
					<div class="sub  f-13">WXYZ</div>
				</div>
			</div>
			<div class="col-md-4 col-4   cursor_pointer">
				<div
					class="outer  d-flex   align-items-center justify-content-center myClick ">
					<span class=" f-14 inner">*</span>
				</div>
			</div>
			<div class="col-md-4 col-4    cursor_pointer">
				<div
					class="outer  d-flex flex-column  align-items-center justify-content-center myClick">
					<span class="inner f-14">0</span>
					<div class="sub f-13">+</div>
				</div>
			</div>
			<div class="col-md-4 col-4   cursor_pointer">
				<div
					class="outer  d-flex flex-column  align-items-center justify-content-center myClick">
					<span class=" f-14 inner">#</span>
				</div>
			</div>
			<div class="col-md-12  col-12   pb-1 cursor_pointer">
				<div
					class="button rounded-circle roundButton bg-dial inner mx-auto dial-btn ">
					<i
						class=" callButton d-flex align-items-center justify-content-center fas fa-phone-alt f-12 p-3 callButtonColor"></i>
				</div>
			</div>


		</div>

	</div>
	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<script src="<%=baseURL%>assets/js/dialpad.js"></script>
	<script>
		$("[data-toggle=popover]").popover({
			container : '#dialer_view',
			html : true,
			sanitize : false,
			trigger : 'click',
			content : function() {
				
			//$('#dialer_view').appendTo($('#dialer_view').clone().find('input').attr('id','phone1'))
				var a = $('#dialer_view').clone()
				a.find('#phone').attr('id','phone1')
				a.find('.myClick').removeClass('myClick').addClass('popoverClick')
				a.find('.dial-btn').removeClass('dial-btn').addClass('dial-btnClick')
				a.find('.btnclick').removeClass('btnclick').addClass('deleteClick')
	$(document).ready(function() {
		$("#phone1").on("keyup", function() {
			if ($('#phone1').val().length == 14) {
				alert("input exceeded!");
			}
		});
		$("#phone1").on("keypress keyup blur",function (e) {  
			
		    $(this).val($(this).val().replace(/^[a-zA-Z]+$/, ""));
		        if ((e.which < 48 || e.which > 57)) {
		            e.preventDefault();
		    }
		});
				$.fn.validator = function(value) {
			if (value.val().length == 0){
				alert('No Input!');
			}
		}
		$.fn.format = function(value) {
			return value.slice(0, 14);
		}
		$(".dial-btnClick").click(function() {
			$.fn.validator($('#phone1').val($("#phone1").val()));
		});
		$(".popoverClick").click(function() {
			var num = $(this).find('.inner').html();
			if ($('#phone1').val().length == 14) {
				alert("input exceeded!");
			}
			else  { if($('#phone1').val().length < 14) {
				$('#phone1').val($('#phone1').val() + num)
				}
		}
		});
		$(".deleteClick").click(function() {
			/* console.log('button clicked'); */
			$('#phone1').val($("#phone1").val().slice(0, -1));
		});
		
		
	});

				return a.html();
			}
		});
	</script>
</body>

</html>