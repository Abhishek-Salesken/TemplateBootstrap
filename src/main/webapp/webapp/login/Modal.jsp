<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Modal</title>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<link rel="stylesheet"
	href="<%=baseURL%>webapp/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseURL%>webapp/assets/css/Modal.css">
<link rel="stylesheet" href="<%=baseURL%>webapp/assets/css/all.css">
<link rel="stylesheet"
	href="<%=baseURL%>webapp/assets/css/select2.min.css">
</head>
<body>
	<!--------------------------------------------- Opening of container ------------------------------------------------------>
	<div class="container h-100">

		<!--  start of main row of page  -->
		<div class="row align-items-center h-100">
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
  Launch modal
</button>

<!-- start of Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content rounded-0">
      <div class="modal-header">
        <h5 class="modal-title f-18" id="exampleModalCenterTitle">Scheduled task</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body ">
			<form>
  <div class="form-row">
    <div class="form-group col-md-12">
      <label for="" class="h5 f-14 ">Lead Name</label>
            <select id="inputState" class="form-control rounded-0">
        <option selected>Choose...</option>
               <option value="AL">Alabama</option>
       <option value="WY">Wyoming</option>

      </select>
    </div>

  </div>

  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="" class="h5 f-14">Task Type</label>
      <select id="inputState" class="form-control rounded-0">
        <option selected>Choose...</option>
       <option value="AL">Alabama</option>
       <option value="WY">Wyoming</option>
      </select>
    </div>
    <div class="form-group col-md-6">
      <label for="inputState" class="h5 f-14">Task By</label>
      <select id="inputState" class="form-control rounded-0">
        <option selected>Choose...</option>
       <option value="AL">Alabama</option>
       <option value="WY">Wyoming</option>
      </select>
    </div>
  </div>
  
    <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputState" class="h5 f-14">Date</label>
      <select id="inputState" class="form-control rounded-0">
        <option selected>Choose...</option>
       <option value="AL">Alabama</option>
       <option value="WY">Wyoming</option>
      </select>
    </div>
    <div class="form-group col-md-6">
      <label for="inputState" class="h5 f-14">Time</label>
      <select id="inputState" class="form-control rounded-0">
        <option selected>Choose...</option>
       <option value="AL">Alabama</option>
       <option value="WY">Wyoming</option>
      </select>
    </div>
  </div>
  
</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn f-14 g-transparent theme_color  border-0" data-dismiss="modal">Reset</button>
        <button type="button" class="btn theme_bg_color btn-primary border_shadow_color rounded-0 border_color f-14">Save changes</button>
      </div>
    </div>
  </div>
</div>

<!-- end of Modal -->
			
		</div>
		<!--  end of main row of page  -->

	</div>

	<!--------------------------------------------- closing of container ------------------------------------------------------>

	<script src="<%=baseURL%>webapp/assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>webapp/assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>webapp/assets/js/bootstrap.min.js"></script>
	<script src="<%=baseURL%>webapp/assets/js/select2.min.js"></script>
</body>
</html>