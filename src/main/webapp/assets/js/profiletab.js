$(document).ready(function() {
	 console.log('Profile tab')
	 var data =JSON.parse(localStorage.getItem('mydata'));
//	 
	for (obj of data){
		sources = ["Web Form","Excel Form"]
		var newRow = '<tr class="datarow '+obj.id+' " data-company="'+obj.company["name"]+'" data-email="'+obj.email+'" data-phone="'+obj.phone+'" data-agent="'+obj.name+'"><td><div class="d-flex"><div class="form-check"><label class="form-check-label" for="defaultCheck1">  </label><input data-id="'+obj.id+'" data-agent="'+obj.name+'" class="form-check-input usercheck" type="checkbox" id="defaultCheck1"></div>'+obj.company["name"]+'</div></td><td>'+obj.email+'</td><td>'+obj.phone+'</td><td>'+sources[Math.floor(Math.random()*sources.length)]+'</td><td><img src="http://localhost:8080/TemplateBootstrap/assets/images/profile/user.jpg" class="img-fluid rounded-circle mr-3" alt="..."height="40" width="40">'+obj.name+'</td></tr>'
		$('#table-body').append(newRow);
	}
	$('#searchprofile').on('keyup keydown', function(){
		console.log($(this).val().toLowerCase())
		var input = $(this).val().toLowerCase();
		$('.datarow').each(function(){
			var agent = $(this).data('agent').toLowerCase()
			var company = $(this).data('company').toLowerCase()
			var email = $(this).data('email').toLowerCase()
			var phone = $(this).data('phone').toLowerCase()
			console.log(agent , company , email, phone)
			if(agent.indexOf(input) > -1 || company.indexOf(input) > -1 || email.indexOf(input) > -1 || phone.indexOf(input) > -1){
				 $(this).show(); 
			}
			else{
				$(this).hide();
			}
		})
	});
	$('#delete').click(function(){
		var flag=false;
		var userSelected = [];
		$('.usercheck').each(function(){
			if($(this).prop("checked") == true){
				userSelected.push($(this).data('id'));
				//console.log($(this).data('agent'))
				flag=true;
            }
		});
		
		if(!flag){
			swal("No user selected")
			return;
		}
		else{
			var selectnames=[];
			for(var i=0;i<userSelected.length;i++){
				selectnames.push($('.datarow.'+userSelected[i]).data('agent'))
			}
			swal({
				  title: "Are you sure?",
				  text: "You want to delete: "+selectnames.join(' , '),
				  type: "warning",
				  showCancelButton: true,
				  confirmButtonClass: "btn-danger",
				  confirmButtonText: "Yes, delete it!",
				  cancelButtonText: "No, cancel!",
				  closeOnConfirm: false,
				  closeOnCancel: false
				},
				function(isConfirm) {
				  if (isConfirm) {
						for(var i=0;i<userSelected.length;i++){
							$('.datarow.'+userSelected[i]).remove();
						}
					  
				   swal("Deleted!", "User(s) has/have been deleted", "success");
				  } else {
				    swal("Cancelled", "No user deleted!", "error");
				  }
				});
		}
	
		
	})
	
	$('#myTab>li>a').on('shown.bs.tab', function (e) {
		
		$('.breadcrumb-item.active').html($(e.target).html());
  console.log($(e.target).html()) // newly activated tab
  console.log(e.relatedTarget) // previous active tab
})
 });


