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
	<div class="container pt-5">
		<!-- Example row of columns -->
		<div class="row" id="append"></div>
	</div>

	<!-- Modal -->
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
									id="staticEmail">
							</div>
						</div>
						<div class="form-group row">
							<label for="name" class="col-sm-2 col-form-label">Name</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="name">
							</div>
						</div>
						<div class="form-group row">
							<label for="username" class="col-sm-2 col-form-label">Username</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="username">
							</div>
						</div>
						<div class="form-group row">
							<label for="phone" class="col-sm-2 col-form-label">Phone</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="phone">
							</div>
						</div>
						<div class="form-group row">
							<label for="website" class="col-sm-2 col-form-label">Website</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="website">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" id="close" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" id="change" class="btn btn-primary">Save
						changes</button>
				</div>
			</div>
		</div>
	</div>

	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<script>
		 $(document).ready(function() {
			  $.get( "https://jsonplaceholder.typicode.com/users", function( data ) {
				 console.log(data);
				 localStorage.setItem("mydata",JSON.stringify(data));

				 
				});  
				
		/* 		console.log(localStorage.getItem('mydata')); */
		var data =JSON.parse(localStorage.getItem('mydata'));
				console.log(data);
		
				
				for (var obj of data){
					var newDiv = '<div class="col-md-4"> <div class="card mb-4 shadow-sm"> <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg> <div class="card-body"> <p class="card-text"><div>Name: <span id="myname">'+obj.name+'</span></div> <div>Username: <span id="myusername">'+obj.username+'</span></div> <div>Email: '+obj.email+'</div> <div>Phone: <span id="myphone">'+obj.phone+'</span></div> <div>Website: <span id="mywebsite">'+obj.website+'</span></div> <div>Company Name: '+obj.company["name"]+'</div> </p> <div class="d-flex justify-content-between align-items-center"> <div class="btn-group"> <button type="button" class="btn btn-sm btn-outline-secondary">View</button> <button type="button" data-toggle="modal" class="edit btn btn-sm btn-outline-secondary" data-target="#mymodal" id="'+obj.id+'">Edit</button> </div> </div> </div> </div> </div>'
					$('#append').append(newDiv)
					console.log(''+obj.id+'')
				}

				$('.edit').click(function(){
					/* console.log(typeof($(this).attr('id'))) */
					 for (var obj of data){
						if (obj.id.toString() == $(this).attr('id')){
							$('#staticEmail').val(''+obj.email+'')
							$('#name').val(''+obj.name+'')
							$('#username').val(''+obj.username+'')
							$('#phone').val(''+obj.phone+'')
							$('#website').val(''+obj.website+'')
							break;
						}
						
					}
					 $('#change').click(function(e){
						 $('#myusername').text($('#username').val())
							 $('#myname').text($('#name').val())
							  $('#myphone').text($('#phone').val())
							   $('#mywebsite').text($('#website').val())
							console.log('email: ',$('#staticEmail').val());
						 console.log('name: ',$('#name').val());
						 console.log('username', $('#username').val());
						 
						 console.log('phone: ',$('#phone').val());
						 console.log('website: ',$('#website').val());
						});
					 $('#close').click(function(e){
							console.log('Modal Closed!')
						});
					 
					
				});
					
				
				
				
				/* var result = Object.keys(jj).map(function(key) {
					  return [jj[key]];
					});
				console.log(result) */
		});
		
		</script>
</body>
</html>