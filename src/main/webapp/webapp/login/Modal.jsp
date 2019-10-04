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
      <link href="<%=baseURL%>webapp/assets/css/jquery.multiselect.css" rel="stylesheet" />
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
         <div class="row">
            <div class="col">
               <div class="d-flex">
                  <div class="mr-3">Hello</div>
                  <button type="button" class="close" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                  </button>
               </div>
            </div>
         </div>
         <div class="row align-items-center">
            <div class="col-md-1 p-0 m-0">
               <img alt=""
                  src="https://s3.amazonaws.com/uifaces/faces/twitter/juamperro/128.jpg	"
                  width="100" height="100">
            </div>
            <div class="col-md-11">
               <p class="mb-0">id</p>
               <h3 class="mb-0">First Name</h3>
               <p class="mb-0">Last Name</p>
            </div>
         </div>
         <div class="row justify-content-center ">
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary" data-toggle="modal"
               data-target="#exampleModalCenter">Launch modal</button>
            <!-- start of Modal -->
            <div class="modal fade" id="exampleModalCenter" tabindex="-1"
               role="dialog" aria-labelledby="exampleModalCenterTitle"
               aria-hidden="true">
               <div class="modal-dialog modal-dialog-centered" role="document">
                  <div class="modal-content ">
                     <div class="modal-header">
                        <h5 class="modal-title f-18" id="scheduled_task">Scheduled
                           task
                        </h5>
                        <button type="button" class="close" data-dismiss="modal"
                           aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                     </div>
                     <div class="modal-body">
                        <form>
                           <div class="form-group">
                              <label for="lead_name" class="h5 f-14">Lead Name</label> 
                              <select
                                 id="lead_name" class="form-control rounded-0 w-100"
                                 name="lead_name">
                                 <option selected>Choose...</option>
                                 <option value="AL">Alabama</option>
                                 <option value="WY">Wyoming</option>
                              </select>
                           </div>
                           <div class="form-row">
                              <div class="form-group col-md-6">
                                 <label for="task_type" class="h5 f-14">Task Type</label> 
                                 <select
                                    id="task_type" class="form-control rounded-0"
                                    name="task_type" multiple>
                                    <option selected="selected">orange</option>
                                    <option>white</option>
                                    <div style=" word-wrap: break-word;">
                                       <option title="that accepts deposits from the public
                                          and creates credit.[1] Lending activities can be performed
                                          either directly or indirectly through capital markets. Due
                                          to their importance in the financial stability of a country,
                                          banks are highly regulated in most countries. Most nations
                                          have institutionalized a system known as fractional reserve
                                          banking under which banks hold liquid assets equal to only a
                                          portion of their current liabilities. In addition to other
                                          regulations intended to ensure liquidity, banks are
                                          generally subject to minimum capital requirements based on
                                          an international set of capital standards, known as the
                                          Basel Accords.">A bank is a
                                          financial institution  that accepts deposits from the public
                                          and creates credit.[1] Lending activities can be performed
                                          either directly or indirectly through capital markets. Due
                                          to their importance in the financial stability of a country,
                                          banks are highly regulated in most countries. Most nations
                                          have institutionalized a system known as fractional reserve
                                          banking under which banks hold liquid assets equal to only a
                                          portion of their current liabilities. In addition to other
                                          regulations intended to ensure liquidity, banks are
                                          generally subject to minimum capital requirements based on
                                          an international set of capital standards, known as the
                                          Basel Accords.
                                       </option>
                                    </div>
                                    <option value="AL" selected="selected">Alabama</option>
                                    <option value="ALdfdgd">this is sdfg</option>
                                    <option value="hgWY">Wyoming</option>
                                    <option value="WY">Wyoming</option>
                                 </select>
                              </div>
                              <div class="form-group col-md-6">
                                 <label for="task_by" class="h5 f-14">Task By</label>
                                 <select name="select_taskby" multiple="multiple" id="select_taskby">
                                    <option value="AL">Alabama </option>
                                    <option value="AK">Alaska</option>
                                    <option value="AZ">Arizona</option>
                                    <option value="AR">Arkansas</option>
                                    <option value="CA">California</option>
                                    <option value="CO">Colorado</option>
                                    <option value="CT">Connecticut</option>
                                    <option value="DE">Delaware</option>
                                    <option value="FL">Florida</option>
                                    <option value="GA">Georgia</option>
                                    <option value="HI">Hawaii</option>
                                    <option value="ID">Idaho</option>
                                    <option value="IL">Illinois</option>
                                    <option value="IN">Indiana</option>
                                    <option value="IA">Iowa</option>
                                    <option value="KS">Kansas</option>
                                    <option value="KY">Kentucky</option>
                                    <option value="LA">Louisiana</option>
                                    <option value="ME">Maine</option>
                                    <option value="MD">Maryland</option>
                                    <option value="MA">Massachusetts</option>
                                    <option value="MI">Michigan</option>
                                    <option value="MN">Minnesota</option>
                                    <option value="MS">Mississippi</option>
                                    <option value="MO">Missouri</option>
                                    <option value="MT">Montana</option>
                                    <option value="NE">Nebraska</option>
                                    <option value="NV">Nevada</option>
                                    <option value="NH">New Hampshire</option>
                                    <option value="NJ">New Jersey</option>
                                    <option value="NM">New Mexico</option>
                                    <option value="NY">New York</option>
                                    <option value="NC">North Carolina</option>
                                    <option value="ND">North Dakota</option>
                                    <option value="OH">Ohio</option>
                                    <option value="OK">Oklahoma</option>
                                    <option value="OR">Oregon</option>
                                    <option value="PA">Pennsylvania</option>
                                    <option value="RI">Rhode Island</option>
                                    <option value="SC">South Carolina</option>
                                    <option value="SD">South Dakota</option>
                                    <option value="TN">Tennessee</option>
                                    <option value="TX">Texas</option>
                                    <option value="UT">Utah</option>
                                    <option value="VT">Vermont</option>
                                    <option value="VA">Virginia</option>
                                    <option value="WA">Washington</option>
                                    <option value="WV">West Virginia</option>
                                    <option value="WI">Wisconsin</option>
                                    <option value="WY">Wyoming</option>
                                 </select>
                              </div>
                           </div>
                           <div class="form-row">
                              <div class="form-group position-relative col-md-6">
                                 <label for="task_date" class="h5 f-14">Date</label> <input
                                    type="text" class="form-control rounded-0 pr-5"
                                    id="task_date" name="task_date" placeholder="Select here">
                                 <button type="button"
                                    class="btn btn-primary calender_clock_icon ">
                                 <i class="fas fa-calendar-week"></i>
                                 </button>
                              </div>
                              <div class="form-group position-relative col-md-6">
                                 <label for="task_time" class="h5 f-14">Time</label> <input
                                    type="text" class="form-control rounded-0 pr-5"
                                    id="task_time" name="task_time" placeholder="Select here">
                                 <button type="button"
                                    class="btn btn-primary calender_clock_icon ">
                                 <i class="far fa-clock"></i>
                                 </button>
                              </div>
                           </div>
                        </form>
                     </div>
                     <div class="modal-footer">
                        <button type="button"
                           class="btn f-14 g-transparent theme_color  border-0"
                           data-dismiss="modal">Reset</button>
                        <button type="button"
                           class="btn theme_bg_color btn-primary border_shadow_color rounded-0 border_color f-14 savechanges">Save
                        changes</button>
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
      <script src="<%=baseURL%>webapp/assets/js/multiselect.js"></script>
      <script>
         function formatState(state) {
         
         	var baseUrl = "https://avatars2.githubusercontent.com/u/8127015?v=4";
         	var $state = $('<span class="d-flex flex-column"><img class="img-flag" width="40" height="40"/> <span style="display: table; white-space: normal;"></span></span>');
         
         	// Use .text() instead of HTML string concatenation to avoid script injection issues
         	$state.find("span").text(state.text);
         	$state.find("img").attr("src",
         			baseUrl + "/" + state.element.value.toLowerCase() + ".png");
         	return $state; 
         };
         
         $("#task_type").select2({
         	templateSelection : formatState
         });
         
         $(document)
         		.ready(
         				function() {
         					$('#task_type').select2({
         						width : '100%',
         						templateSelection : formatState
         
         					});
         					$('.savechanges')
         							.click(
         									function() {
         										$('#task_type')
         												.append(
         														' <option value="aa">aaaaaaaaaaaaaaaaaaaaaaaa</option>')
         
         									})
         				});
         
         $("#lead_name").select2({
         	ajax : {
         		url : "http://192.168.0.122:8080/testproject/myservlet",
         		dataType : 'json',
         		delay : 250,
         		data : function(params) {
         			return {
         				q : params.term, // search term
         				page : params.page
         			};
         		},
         		processResults : function(data, params) {
         			// parse the results into the format expected by Select2
         			// since we are using custom formatting functions we do not need to
         			// alter the remote JSON data, except to indicate that infinite
         			// scrolling can be used
         			params.page = params.page || 1;
         
         			return {
         				results : data.items,
         				pagination : {
         					more : (params.page * 30) < data.total_count
         				}
         			};
         		},
         		cache : true
         	},
         	placeholder : 'Search for a repository',
         	minimumInputLength : 1,
         	templateResult : formatRepo,
         	templateSelection : formatRepoSelection,
         	width : '100%'
         });
         
         function formatRepo(repo) {
         	// console.log(repo)
         	if (repo.loading) {
         		return repo.text;
         	}
         
         	var myhtml = '<div class="row align-items-center" > <div class="col-md-3 p-0 m-0"> <img alt="" src="'+repo.url+'" width="100" height="100"> </div> <div class="col-md-9"> <p class="mb-0">'
         			+ repo.id
         			+ '</p> <h3 class="mb-0">'
         			+ repo.firstname
         			+ '</h3> <p class="mb-0">'
         			+ repo.lastname
         			+ '</p> </div> </div>';
         
         	/*   var $container = $(
         	    "<div class='select2-result-repository clearfix'>" +
         	      "<div class='select2-result-repository__avatar'><img src='" + repo.url+ "' /></div>" +
         	      "<div class='select2-result-repository__meta'>" +
         	        "<div class='select2-result-repository__title'></div>" +
         	        "<div class='select2-result-repository__description'></div>" +
         	        "<div class='select2-result-repository__statistics'>" +
         	          "<div class='select2-result-repository__forks'><i class='fa fa-flash'></i> </div>" +
         	          "<div class='select2-result-repository__stargazers'><i class='fa fa-star'></i> </div>" +
         	          "<div class='select2-result-repository__watchers'><i class='fa fa-eye'></i> </div>" +
         	        "</div>" +
         	      "</div>" +
         	    "</div>"
         	  );
         
         	  $container.find(".select2-result-repository__title").text(repo.firstname);
         	  $container.find(".select2-result-repository__description").text(repo.id);
         	  $container.find(".select2-result-repository__forks").append(repo.lastname + " Forks");
         	  $container.find(".select2-result-repository__stargazers").append(repo.firstname + " Stars");
         	  $container.find(".select2-result-repository__watchers").append(repo.lastname + " Watchers"); */
         
         	return $(myhtml);
         }
         
         function formatRepoSelection(repo) {
         	console.log('formatRepoSelection')
         
         	console.log(repo)
         	return repo.firstname || repo.lastname;
         }
         
         $(function () {
             $('#select_taskby').multiselect( );
         }); 
         
         
      </script>
   </body>
</html>