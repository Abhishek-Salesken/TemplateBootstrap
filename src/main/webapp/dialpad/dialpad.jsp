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
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/alertify.min.css"/>
<!-- Default theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/default.min.css"/>
<!-- Semantic UI theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/semantic.min.css"/>
<!-- Bootstrap theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/bootstrap.min.css"/>

<link rel="stylesheet" href="<%=baseURL%>assets/css/dialpad.css">

</head>
<body>

	<button type="button" id="element" class="btn btn-secondary"
		data-container="body" data-toggle="popover" data-placement="top"
		data-html="true">Dial Pad</button>

	<div
		class="container d-flex justify-content-center align-items-center h-100 box_container"
		id="dialer_view">


		<div class="row box_row m-0 p-0 shadow">

			<div class="col-md-12 col-12 p-2 col-height" id="output">

				<div class="group">

					<input type="text"
						class="form-control rounded-0 showFocus inp-width" id="phone"
						placeholder="Enter Number" pattern="^[0-9]+$" maxlength="14">
					<div class="input-group-append">
						<button
							class="btn  btnclick btn-active border-0 shadow-none positioning">
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
	<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/alertify.min.js"></script>
	
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
				a.find('.positioning').css("left" ,"13.3rem");
	$(document).ready(function() {
		var caret = 0;

		$("#phone1").on("keyup", function() {
			if ($('#phone1').val().length == 14) {
				alert("Limit Reached!");
			}
		});
		

		
		$(".popoverClick").on("click", function() {
			if ($('#phone1').val().length == 14) {
				alert("Limit Reached!");
				var formattedText = $.fn.format($('#phone1').val())
				console.log("value here : ", formattedText);
				$('#phone1').val(formattedText);
				/* $('#phone').val() = oldVal; */

			}
		});
		$.fn.validator = function(value) {
			
			if (value.val().length == 0) {
				alert('No Input!');
			}
			else{
				alertify.confirm('Dialing', ''+value.val(), function(e){ alertify.success('Connecting...') }
			    , function(){ alertify.error('Hang up!')});
			}
		}
		$.fn.format = function(value) {
			return value.slice(0, 14);
		}

		$(".dial-btnClick").click(function() {
			$.fn.validator($('#phone1').val($("#phone1").val()));
		});
		
		$("#phone1").on('click input'  , function(e){
			caret = e.target.selectionStart;
			console.log("caret",caret);
			var input = document.getElementById('phone1')
			
			input.setSelectionRange(caret, caret);
			console.log(input.selectionStart, input.selectionEnd)
		});
		$(".deleteClick").on('click' , function(e){
//			caret = e.target.selectionStart;
			console.log("caret",caret);
			var input = document.getElementById('phone1')
			
			input.setSelectionRange(caret, caret);
			console.log(input.selectionStart, input.selectionEnd)
		});
		$(".popoverClick").click(function(e) {
			var input = document.getElementById('phone1')
			
			input.focus();
		
			var num = $(this).find('.inner').html();
			console.log(num);
			
			if ($('#phone1').val().length < 14) {

//				$('#phone').val($('#phone').val() + num)
				if (caret != 0){
					input.value += num;
					var text = input.value
//					console.log("content" , text)
//					console.log("caret :", caret)
//					console.log("substring", text.substring(0 ,caret) )
					var s1 = text.substring(0 ,caret);
					var s2 = text.substring(caret);
//					console.log('s1',s1,'s2',s2)
					input.value = s1 + num + s2;
					input.value = input.value.slice(0,-1)
					
//					console.log('new value', input.value );
					caret += 1
					input.setSelectionRange(caret, caret)
				}
				else{
					input.value += num
				}  
				
			}

		});

		$(".deleteClick").click(function() {
			
			/* console.log('button clicked'); */
			if (caret != 0){
				
				var input = document.getElementById('phone1')
				input.focus();
				var text = input.value
				var s1 = text.substring(0,caret-1);
				var s2 = text.substring(caret)
//				console.log('caret', caret , s1 , s2)
				input.value = s1+s2;
				caret -= 1;
				input.setSelectionRange(caret,caret)
				
			}
			else{
			$('#phone1').val($("#phone1").val().slice(0, -1));}
		});

		$("#phone1").on("keypress keyup blur", function(e) {

			$(this).val($(this).val().replace(/^[a-zA-Z]+$/, ""));
			if ((e.which < 48 || e.which > 57)) {
				e.preventDefault();
			}
		});
		
		
	});
				
				return a.html();
			}
		});
	</script>
</body>

</html>