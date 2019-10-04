<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="ISO-8859-1">
      <meta name="viewport"
         content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>Chosen</title>
      <%
         String url = request.getRequestURL().toString();
         String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
         		+ request.getContextPath() + "/";
         %>
      <link href="<%=baseURL%>assets/css/chosen.css" rel="stylesheet" />
      <link rel="stylesheet"
         href="<%=baseURL%>assets/css/bootstrap.min.css">
      <link rel="stylesheet" href="<%=baseURL%>assets/css/Modal.css">
      <link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">
      <link rel="stylesheet"
         href="<%=baseURL%>assets/css/select2.min.css">
      <link rel="stylesheet"
         href="<%=baseURL%>assets/css/jquery.multiselect.css">
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/css/bootstrap-select.min.css">
         
         <!-- https://developer.snapappointments.com/bootstrap-select/options/#sanitizer -->
   </head>
   <body>
      <!--------------------------------------------- Opening of container ------------------------------------------------------>
      <div class="container h-100">
         <!--  start of main row of page  -->
         <div class="row justify-content-center ">
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary" data-toggle="modal"
               data-target="#exampleModalCenter">Chosen plug In</button>
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
                              <select data-placeholder="Choose a Country..." class=" myselectchoosen chosen-select"  tabindex="4">
                                 <!-- <option value=""></option>
                                 <option value="United States">United States &nbsp; Miriam Franklin &nbsp;+91 445 546 6456</option>
                                 <option value="United Kingdom">United Kingdom</option>
                                 <option value="Afghanistan">Afghanistan</option>
                                 <option value="Aland Islands">Aland Islands</option>
                                 <option value="Albania">Albania</option>
                                 <option value="Algeria">Algeria</option>
                                 <option value="American Samoa">American Samoa</option>
   
                                 <option value="Costa Rica">Costa Rica</option>
                                 <option value="Cote D&apos;ivoire">Cote D'ivoire</option>
                                 <option value="Croatia">Croatia</option>
                                 <option value="Cuba">Cuba</option>
                                 <option value="Curacao">Curacao</option>
                                 <option value="Cyprus">Cyprus</option>
                                 <option value="Czech Republic">Czech Republic</option>
                                 <option value="Denmark">Denmark</option>
                                 <option value="Djibouti">Djibouti</option>
                                 <option value="Dominica">Dominica</option>
                                 <option value="Dominican Republic">Dominican Republic</option>
                                 <option value="Ecuador">Ecuador</option>
                                 <option value="Egypt">Egypt</option>
                                 <option value="El Salvador">El Salvador</option>
                                 <option value="Equatorial Guinea">Equatorial Guinea</option>
                                 <option value="Eritrea">Eritrea</option>
                                 <option value="Estonia">Estonia</option>
                                 <option value="Ethiopia">Ethiopia</option>
                                 <option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option>
                                 <option value="Faroe Islands">Faroe Islands</option>
                                 <option value="Fiji">Fiji</option>
                                 <option value="Finland">Finland</option>
                                 <option value="France">France</option>
                                 <option value="French Guiana">French Guiana</option>
                                 <option value="French Polynesia">French Polynesia</option>
                                 <option value="French Southern Territories">French Southern Territories</option>
                                 <option value="Gabon">Gabon</option>
                                 <option value="Gambia">Gambia</option>
                                 <option value="Georgia">Georgia</option>
                                 <option value="Germany">Germany</option>
                                 <option value="Ghana">Ghana</option>
                                 <option value="Gibraltar">Gibraltar</option>
                                 <option value="Greece">Greece</option>
                                 <option value="Greenland">Greenland</option>
                                 <option value="Grenada">Grenada</option>
                                 <option value="Guadeloupe">Guadeloupe</option>
                                 <option value="Guam">Guam</option>
                                 <option value="Guatemala">Guatemala</option>
                                 <option value="Guernsey">Guernsey</option>
                                 <option value="Guinea">Guinea</option>
                                 <option value="Guinea-bissau">Guinea-bissau</option>
                                 <option value="Guyana">Guyana</option>
                                 <option value="Haiti">Haiti</option>
                                 <option value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands</option>
                                 <option value="Holy See (Vatican City State)">Holy See (Vatican City State)</option>
                                 <option value="Honduras">Honduras</option>
                                 <option value="Hong Kong">Hong Kong</option>
                                 <option value="Hungary">Hungary</option>
                                 <option value="Iceland">Iceland</option>
                                 <option value="India">India</option>
                                 <option value="Indonesia">Indonesia</option>
                                 <option value="Iran, Islamic Republic of">Iran, Islamic Republic of</option>
                                 <option value="Iraq">Iraq</option>
                                 <option value="Ireland">Ireland</option>
                                 <option value="Isle of Man">Isle of Man</option>
                                 <option value="Israel">Israel</option>
                                 <option value="Italy">Italy</option>
                                 <option value="Jamaica">Jamaica</option>
                                 <option value="Japan">Japan</option>
                                 <option value="Jersey">Jersey</option>
                                 <option value="Jordan">Jordan</option>
                                 <option value="Kazakhstan">Kazakhstan</option>
                                 <option value="Kenya">Kenya</option>
                                 <option value="Kiribati">Kiribati</option>
                                 <option value="Korea, Democratic People&apos;s Republic of">Korea, Democratic People's Republic of</option>
                                 <option value="Korea, Republic of">Korea, Republic of</option>
                                 <option value="Kuwait">Kuwait</option>
                                 <option value="Kyrgyzstan">Kyrgyzstan</option>
                                 <option value="Lao People&apos;s Democratic Republic">Lao People's Democratic Republic</option>
                                 <option value="Latvia">Latvia</option>
                                 <option value="Lebanon">Lebanon</option>
                                 <option value="Lesotho">Lesotho</option>
                                 <option value="Liberia">Liberia</option>
                                 <option value="Libya">Libya</option>
                                 <option value="Liechtenstein">Liechtenstein</option>
                                 <option value="Lithuania">Lithuania</option>
                                 <option value="Luxembourg">Luxembourg</option>
                                 <option value="Macao">Macao</option>
                                 <option value="Macedonia, The Former Yugoslav Republic of">Macedonia, The Former Yugoslav Republic of</option>
                                 <option value="Madagascar">Madagascar</option>
                                 <option value="Malawi">Malawi</option>
                                 <option value="Malaysia">Malaysia</option>
                                 <option value="Maldives">Maldives</option>
                                 <option value="Mali">Mali</option>
                                 <option value="Malta">Malta</option>
                                 <option value="Marshall Islands">Marshall Islands</option>
                                 <option value="Martinique">Martinique</option>
                                 <option value="Mauritania">Mauritania</option>
                                 <option value="Mauritius">Mauritius</option>
                                 <option value="Mayotte">Mayotte</option>
                                 <option value="Mexico">Mexico</option>
                                 <option value="Micronesia, Federated States of">Micronesia, Federated States of</option> -->


                                 <option data-content="<div class='row'> <div class='col-md-5 f-14 font-weight-bold black'>Vehement Capital Partners</div> <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin</div> <div class='col-md-3 f-14 greyish-brown text-right'>+91 445 546 6456</div> </div>">Miriam Franklin</option>
<option data-content="<span class='badge badge-danger label-important'>Ketchup</span>">Ketchup</option>
<option data-content="<span class='badge badge-success'>Relish</span>">Relish</option>
<option data-content="<span class='badge badge-info'>Mayonnaise</span>">Mayonnaise</option>
                              </select>
                           </div>
                           <div class="form-group">
                              <label for="lead_name" class="h5 f-14">Lead Name</label> 
                              <select data-placeholder="Choose a Country..." class="myselectchoosen chosen-select1" multiple tabindex="4">
                                 <option value=""></option>
                                 <option value="AL">Alabama</option>
                                 <option value="WY">Wyoming</option>
                                <option value="Virgin Islands, British">Virgin Islands, British</option>
                                 <option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option>
                                 <option value="Wallis and Futuna">Wallis and Futuna</option>
                                 <option value="Western Sahara">Western Sahara</option>
                                 <option value="Yemen">Yemen</option>
                                 <option value="Zambia">Zambia</option>
                                 <option value="Zimbabwe">Zimbabwe</option>
                              </select>
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
      <script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
      <script src="<%=baseURL%>assets/js/popper.min.js"></script>
      <script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
      <script src="<%=baseURL%>assets/js/select2.min.js"></script>
      <script src="<%=baseURL%>assets/js/chosen.jquery.js"></script>
      <script src="<%=baseURL%>assets/js/chosen.jquery.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/js/bootstrap-select.min.js"></script>
         <script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/js/i18n/defaults-*.min.js"></script>
      <script>
      $( document ).ready(function() {
    	  $('.chosen-select').selectpicker({
          width:'100%',
          sanitize:false,
          showContent:false,
          liveSearch:true
          });
    	});
       
      </script>
   </body>
</html>