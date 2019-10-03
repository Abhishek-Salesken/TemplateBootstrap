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
         <div class="row justify-content-center ">
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
            Launch modal
            </button>
            <!-- start of Modal -->
            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
               <div class="modal-dialog modal-dialog-centered" role="document">
                  <div class="modal-content ">
                     <div class="modal-header">
                        <h5 class="modal-title f-18" id="scheduled_task">Scheduled task</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                     </div>
                     <div class="modal-body">
                        <form>
                           <div class="form-group">
                              <label for="lead_name" class="h5 f-14">Lead Name</label>
                              <select id="lead_name" class="form-control rounded-0" name="lead_name">
                                 <option selected>Choose...</option>
                                 <option value="AL">Alabama</option>
                                 <option value="WY">Wyoming</option>
                              </select>
                           </div>
                           <div class="form-row">
                              <div class="form-group col-md-6">
                                 <label for="task_type" class="h5 f-14">Task Type</label>
                                 <select id="task_type" class="form-control rounded-0" name="task_type">
                                    <option selected>Choose...</option>
                                    <option value="AL">Alabama</option>
                                    <option value="WY">Wyoming</option>
                                 </select>
                              </div>
                              <div class="form-group col-md-6">
                                 <label for="task_by" class="h5 f-14">Task By</label>
                                 <select id="task_by" class="form-control rounded-0" name="task_by">
                                    <option selected>Choose...</option>
                                    <option value="AL">Alabama</option>
                                    <option value="WY">Wyoming</option>
                                 </select>
                              </div>
                           </div>
                           <div class="form-row">
                              <div class="form-group position-relative col-md-6">
                                 <label for="task_date" class="h5 f-14" >Date</label>
                                 <input type="text" class="form-control rounded-0 pr-5" id="task_date" name="task_date" placeholder="Select here">
                                 <button type="button" class="btn btn-primary calender_clock_icon "> <i class="fas fa-calendar-week"></i></button>
                               
                                 
                              </div>
                              <div class="form-group position-relative col-md-6">
                                 <label for="task_time" class="h5 f-14">Time</label>
                                 <input type="text" class="form-control rounded-0 pr-5" id="task_time" name="task_time" placeholder="Select here">
                                 <button type="button" class="btn btn-primary calender_clock_icon "> <i class="far fa-clock"></i></button>
                                 
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
     <script>
     $(document).ready(function() {
    	    $('#lead_name').select2();
    	});
     </script>
   </body>
</html>