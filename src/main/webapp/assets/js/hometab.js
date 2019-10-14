 $(document).ready(function() {
			 /* start of Function to fetch user data for inserting in user card and storing it into localStorage*/
			  /*  $.get( "https://jsonplaceholder.typicode.com/users", function( data ) {
				 console.log(data);
				 localStorage.setItem("mydata",JSON.stringify(data));
				});  */  
			   /* End of Function to fetch user data for inserting in user card and storing it into localStorage*/
				
				/* start of Fetching data from localStorage and converting it into JSON format */
				var data =JSON.parse(localStorage.getItem('mydata'));
				console.log(data);
				/* end of Fetching data from localStorage and converting it into JSON format */
				
				/* Start of Creating card of user data and appending it to the div using id:append*/
				for (var obj of data){
					var newDiv = '<div class="col-md-4 myusercard" data-email="'+obj.email+'" data-username="'+obj.username+'" data-name="'+obj.name+'" data-phone="'+obj.phone+'" data-company="'+obj.company["name"]+'" data-website="'+obj.website+'"> <div class="card mb-4 shadow-sm" > <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg> <div class="card-body"> <p class="card-text"><div>Name: <span id="myname">'+obj.name+'</span></div> <div>Username: <span id="myusername">'+obj.username+'</span></div> <div>Email: '+obj.email+'</div> <div>Phone: <span id="myphone">'+obj.phone+'</span></div> <div>Website: <span id="mywebsite">'+obj.website+'</span></div> <div>Company Name: '+obj.company["name"]+'</div> </p> <div class="d-flex justify-content-between align-items-center"> <div class="btn-group"> <button type="button" class="btn btn-sm btn-outline-secondary">View</button> <button type="button" data-toggle="modal" class="edit btn btn-sm btn-outline-secondary" data-target="#mymodal" id="'+obj.id+'">Edit</button> </div> </div> </div> </div> </div>'
					
					//this is for creating cards in row with id append
					$('#append').append(newDiv);
					
					//filling username select with options using user data username 
					$('#username').append('<option value="'+obj.username+'">'+obj.username+'</option>');
					
					//filling email select with options   using user data email

					$('#email').append('<option value="'+obj.email+'">'+obj.email+'</option>');

					
					console.log(''+obj.id+'')
				}
				/* End of Creating card of user data and appending it to the div using id:append*/
				
				
				/* Start of Click event for each user card edit button and setting the values for each attributes
					email, name, username, phone, websites in the form present in the modal.
				*/
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
				});
				/* End of Click event for each user card edit button and setting the values for each attributes
				email, name, username, phone, websites in the form present in the modal.
			*/
				
				/* Start of Click event for Save Change button in form inside the modal to update the user details like
				email, name, username, phone, websites
				*/
					 $('#change').click(function(e){
						 var a = $('#myform').serializeArray();
						 var empty = false;
						 for (iter of a){
							 if (iter.value.length != 0){
							 }
							 else{
								 empty = true
								 alert("Value for "+iter.name+' is empty!')
								 break;
							 }
						 }
						 if(empty == false){
							 $('#myusername').text(a[2].value)
							 $('#myname').text(a[1].value)
							  $('#myphone').text(a[3].value)
							   $('#mywebsite').text(a[4].value) 
						 }
						});
					 /* End of Click event for Save Change button in form inside the modal to update the user details like
						email, name, username, phone, websites
						*/
					 
					 /* Start of This function will close the modal with an alert*/
					 $('#close').click(function(e){
						
							console.log('Modal Closed!')
						});
					 /* End of This function will close the modal with an alert*/
					 
					 
					 
					 
					 /* start of  search functionality implementation*/
					 $('#searchbox').keyup(function(){
						 console.log($(this).val());
						 var input = $(this).val().toLowerCase();
						
								 $('.myusercard').each(function(){
									 var user_name = $(this).data('name').toLowerCase();
									 var user_company =  $(this).data('company').toLowerCase();
									 var user_username = $(this).data('username').toLowerCase();
									 var user_website = $(this).data('website').toLowerCase();
									 
									 if (user_name.indexOf(input) > -1 || user_company.indexOf(input) > -1 || user_username.indexOf(input) > -1 || user_website.indexOf(input) > -1){
										 console.log(user_name , user_company , user_username , user_website)
										
										 $(this).show(); 
									 }else{
										 $(this).hide();
									 }
								 });
					 });
					 /* end of  search functionality implementation*/

					 /* start of  selecting username change function*/
						$('#username').change(function (){
							 var selected_username = $(this).val();
							 if(selected_username === 'Select Username'){
								 $('.myusercard').each(function(){
									 $(this).show();
									 
								 });
							 }else{
							 
							 $('.myusercard').each(function(){
								 var username = $(this).data('username');
								 if(selected_username === username){
									 $(this).show();
								 }else{
									 $(this).hide();
								 }
							 });
							 }
							 
						});
					 /* End of  selecting username change function*/

					 /* Post request start */
				/* 	var postdata =  [{"id":11,"name":"Clementina3DuBuque","username":"Moriah.Sfgfgfgtanton","email":"Rey.Padberg@kggarina.biz","address":{"street":"KgfattieTurnpike","suite":"Suitefgf198","city":"Lebfgsackbury","zipcode":"31428-2261","geo":{"lat":"-38.2386","lng":"57.2232"}},"phone":"024-648-3804","website":"amdfdfbrose.net","company":{"name":"HoegerLLC","catchPhrase":"Centralizedempoweringtask-force","bs":"targetend-to-endmodels"}}]
					console.log(typeof(postdata))
					  $.post( "https://jsonplaceholder.typicode.com/users", postdata).done(function(postdata){
						  console.log(postdata)
						alert('Data Loaded! '+postdata)
					}); */
					 /* Post request end */
			
		});
		