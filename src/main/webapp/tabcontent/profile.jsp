<div class="row py-4">
	<div class="col-md-6">
		<div class="input-group">
			<input type="text" class="form-control" id="searchprofile"
				aria-describedby="emailHelp" placeholder="Search Here">
				<div class="input-group-append ">
				 <span class="input-group-text" style="background-color:white;"><i class="fas fa-search"></i></span>
				</div>
		</div>

	</div>
	<div class="col-md-6 d-flex flex-row-reverse">
	
		<select class="" id="username" name="username">
			<option>Filter by Source type</option>

		</select> <select class="mr-3" id="email" name="email">
			<option>Filter by activities</option>

		</select>
<button type="button" class="btn btn-danger mr-3" id="delete">Delete</button>
	</div>

</div>


<table class="table table-striped">
    <thead>
        <tr>
            <th>Company Name</th>
            <th>Email ID</th>
            <th>Contact No.</th>
            <th>Lead Source</th>
            <th>Agent</th>
        </tr>
    </thead>
    <tbody id ="table-body">
                  
    </tbody>
</table>