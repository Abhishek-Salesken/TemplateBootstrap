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
<link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=baseURL%>assets/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">
</head>
<body>
	<div class="container">
		<!-- Example row of columns -->
		<div class="row mt-5" id="myrow">
		</div>
		
		
		
		<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
		<script src="<%=baseURL%>assets/js/popper.min.js"></script>
		<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
		<script>
			var userlist = [];

			var user1 = {firstName: 'Stacia',  lastName:'Langer' , sex:'F' , age:18 ,email:'wainwrig@verizon.net' , phone:'(927) 827-3641' };
			var user2 = {firstName: 'Robert',  lastName:'Kessler' , sex:'M' , age:22 ,email:'wainwrig@verizon.net' , phone:'(927) 827-3641'};
			var user3 = {firstName: 'Stacia',  lastName:'Langer' , sex:'F' , age:18 ,email:'wainwrig@verizon.net' , phone:'(927) 827-3641'};
			var user4 = {firstName: 'Stacia',  lastName:'Langer' , sex:'F' , age:18 ,email:'wainwrig@verizon.net' , phone:'(927) 827-3641'};
			var user5 = {firstName: 'Stacia',  lastName:'Langer' , sex:'F' , age:18 ,email:'wainwrig@verizon.net' , phone:'(927) 827-3641'};
			var user6 = {firstName: 'Stacia',  lastName:'Langer' , sex:'F' , age:18 ,email:'wainwrig@verizon.net' , phone:'(927) 827-3641'};
			var user7 = {firstName: 'Stacia',  lastName:'Langer' , sex:'F' , age:18 ,email:'wainwrig@verizon.net' , phone:'(927) 827-3641'};
			var user8 = {firstName: 'Stacia',  lastName:'Langer' , sex:'F' , age:18 ,email:'wainwrig@verizon.net' , phone:'(927) 827-3641'};
			var user9 = {firstName: 'Stacia',  lastName:'Langer' , sex:'F' , age:18 ,email:'wainwrig@verizon.net' , phone:'(927) 827-3641'};
			var user10 = {firstName: 'Stacia',  lastName:'Langer' , sex:'F' , age:18 ,email:'wainwrig@verizon.net' , phone:'(927) 827-3641'};
			
		
		/* 1 */		userlist.push(user1)
				userlist.push(user2)
				userlist.push(user3)
				userlist.push(user4)
				userlist.push(user5)
				userlist.push(user6)
				userlist.push(user7)
				userlist.push(user8)
				userlist.push(user9)
		/* 10 */userlist.push(user10)
			console.log(userlist)

			for (var userobj of userlist) {
				console.log(userobj)
				var myuserdiv = '<div class="col-md-4"> <h2>'+userobj.firstName+' '+userobj.lastName+'</h2> <p><div>Gender: '+userobj.sex+'</div><div>Age: '+userobj.age+'</div><div>Email: '+userobj.email+'</div><div>Phone:'+userobj.phone+'</div> </p> <p><button class="btn click btn-secondary" data-toggle="popover"  data-placement="right" data-name= "'+userobj.firstName+' '+userobj.lastName+'"role="button">View details &raquo;</button> </p> </div>';
				$('#myrow').append(myuserdiv)
				$('.click').unbind().click(function(){
					/* alert($(this).data('name')); */
					$("[data-toggle=popover]").popover({
						container: 'body',
						trigger : 'focus',
						html : true,
						content : $(this).data('name')
					});
				});
			}
		</script>
</body>
</html>