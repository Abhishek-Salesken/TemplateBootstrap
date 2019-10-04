
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<!-- GRID LAYOUT EXAMPLES FOR DESKTOP AND MOBILE VIEWS  -->
<hr>
<!-- Section Begins -->
<div id="section3">
	<h2 class="display-4 pb-3 ">Section 3</h2>
	<p>
		<small class="lead">Different Layouts of Grid System for
			desktop and mobile views.</small>
	</p>
	<!-- Layout 1 Begins -->
	<div class="border border-dark mb-3 shadow">
		<div class="display-4 pb-3 ">
			<u>Layout 1</u>
		</div>
		<div class="h-4 pb-2">Layout 1 Desktop</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/layout1-normal.PNG"
			class="img-fluid" alt="Responsive image">
		<div class="h-4 pt-3 pb-2">Layout 1 Mobile</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/l1-mobile.PNG"
			class="img-fluid" alt="Responsive image">
		<div>
			<b>Code</b>
		</div>
		<xmp class="card bg-light text-dark">

		<div class="container pb-3">
			<div class="row text-white">
				<div class="col-md-4 col-12  border bg-danger ">1</div>
				<div class="col-md-4 col-12  border bg-info">2</div>
				<div class="col-md-4 col-12  border bg-danger">3</div>
			</div>
		</div>
		</xmp>
	</div>
	<!-- Layout 1 Ends-->
	<!-- Layout 2 Begins-->
	<div class="border border-dark mb-3 shadow ">
		<div class="display-4 pb-3  ">
			<u>Layout 2</u>
		</div>
		<div class="h-4 pb-2">Layout 2 Desktop</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/layout2-normal.PNG"
			class="img-fluid" alt="Responsive image">
		<div class="h-4 pt-3 pb-2">Layout 2 Mobile</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/l2-mobile.PNG"
			class="img-fluid" alt="Responsive image">
		<div>
			<b>Code</b>
		</div>
		<xmp class="card bg-light text-dark">

		<div class="container pb-3">
			<div class="row text-white">
				<div class="col-md-12 col-12  border bg-danger">1</div>
				<div class="col-md-6 col-12  border bg-dark">2</div>
				<div class="col-md-6 col-12  border bg-danger">3</div>
			</div>
		</div>
		</xmp>
	</div>
	<!-- Layout 2 Ends-->
	<!-- Layout 3 Begins-->
	<div class="border border-dark mb-3 shadow">
		<div class="display-4 pb-3  ">
			<u>Layout 3</u>
		</div>
		<div class="h-4 pb-2">Layout 3 Desktop</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/layout3-normal.PNG"
			class="img-fluid" alt="Responsive image">
		<div class="h-4 pt-3 pb-2">Layout 3 Mobile</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/l3-mobile.PNG"
			class="img-fluid" alt="Responsive image">
		<div>
			<b>Code</b>
		</div>
		<xmp class="card bg-light text-dark">

		<div class="container pb-3">
			<div class="row text-white">
				<div class="col-md-3 col-6 border bg-danger">1</div>
				<div class="col-md-3 col-6  border bg-info">2</div>
				<div class="col-md-3 col-6  border bg-warning">3</div>
				<div class="col-md-3 col-6 border bg-danger">4</div>
			</div>
		</div>
		</xmp>
	</div>
	<!-- Layout 3 Ends-->
	<!-- Layout 4 Begins-->
	<div class="border border-dark mb-3 shadow">
		<div class="display-4 pb-3  ">
			<u>Layout 4</u>
		</div>
		<div class="h-4 pb-2">Layout 4 Desktop</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/layout4-normal.PNG"
			class="img-fluid" alt="Responsive image">
		<div class="h-4 pt-3 pb-2">Layout 4 Mobile</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/l4-mobile.PNG"
			class="img-fluid" alt="Responsive image">
		<div>
			<b>Code</b>
		</div>
		<xmp class="card bg-light text-dark">

		<div class="container pb-3">
			<div class="row text-white">
				<div class="col-md-4 col-6 border bg-danger">1</div>
				<div class="col-md-4 col-6  border bg-dark">2</div>
				<div class="col-md-4 col-4  border bg-danger">3</div>
				<div class="col-md-12 col-8  border bg-warning">4</div>

			</div>
		</div>
		</xmp>
	</div>
	<!-- Layout 4 Ends-->
	<!-- Layout 5 Begins-->
	<div class="border border-dark mb-3 shadow">
		<div class="display-4 pb-3  ">
			<u>Layout 5</u>
		</div>
		<div class="h-4 pb-2">Layout 5 Desktop</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/layout5-normal.PNG"
			class="img-fluid" alt="Responsive image">
		<div class="h-4 pt-3 pb-2">Layout 5 Mobile</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/l5-mobile.PNG"
			class="img-fluid" alt="Responsive image">
		<div>
			<b>Code</b>
		</div>
		<xmp class="card bg-light text-dark">

		<div class="container pb-3">
			<div class="row text-white">
				<div class="col-md-6 col-12 border bg-dark">1</div>
				<div class="col-md-6 border">
					<div class="row">
						<div class="col-md-12  col-6 border bg-info">2</div>
						<div class="col-md-12 col-6 border bg-danger">3</div>
					</div>
				</div>
			</div>
		</div>
		</xmp>
	</div>
	<!-- Layout 5 Ends-->
	<!-- Layout 6 Begins-->
	<div class="border border-dark mb-3 shadow">
		<div class="display-4 pb-3  ">
			<u>Layout 6</u>
		</div>
		<div class="h-4 pb-2">Layout 6 Desktop</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/layout6-normal.PNG"
			class="img-fluid" alt="Responsive image">
		<div class="h-4 pt-3 pb-2">Layout 6 Mobile</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/l6-mobile.PNG"
			class="img-fluid" alt="Responsive image">
		<div>
			<b>Code</b>
		</div>
		<xmp class="card bg-light text-dark">

		<div class="container pb-3">
			<div class="row text-white">
				<div class="col-md-8 col-12 bg-warning">
					1
					<div class="row">
						<div class="col-md-6 col-6 bg-dark">2</div>
						<div class="col-md-6 col-6 bg-secondary">3</div>
					</div>
				</div>
				<div class="col-md-4 col-12 bg-success">4</div>
			</div>
		</div>
		</xmp>
	</div>
	<!-- Layout 6 Ends-->
	<!-- Layout 7 Begins-->
	<div class="border border-dark mb-3 shadow">
		<div class="display-4 pb-3  ">
			<u>Layout 7</u>
		</div>
		<div class="h-4 pb-2">Layout 7 Desktop</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/layout7-normal.PNG"
			class="img-fluid" alt="Responsive image">
		<div class="h-4 pt-3 pb-2">Layout 7 Mobile</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/l7-mobile.PNG"
			class="img-fluid" alt="Responsive image">
		<div>
			<b>Code</b>
		</div>
		<xmp class="card bg-light text-dark">

		<div class="container pb-3">
			<div class="row text-white">
				<div class="col-md-12 col-12 border col-6 bg-info">1</div>
				<div class="col-md-5 col-6 border bg-success">2</div>
				<div class="col-md-3 col-6 border bg-secondary">3</div>
				<div class="col-md-4 col-6 border bg-success">4</div>
				<div class="col-md-6 col-6 border bg-warning">5</div>
				<div class="col-md-6 col-12 border bg-success">6</div>
			</div>
		</div>
		</xmp>
	</div>
	<!-- Layout 7 Ends-->
	<!-- Layout 8 Begins -->
	<div class="border border-dark mb-3 shadow">
		<div class="display-4 pb-3  ">
			<u>Layout 8</u>
		</div>
		<div class="h-4 pb-2">Layout 8 Desktop</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/layout8-normal.PNG"
			class="img-fluid" alt="Responsive image">
		<div class="h-4 pt-3 pb-2">Layout 8 Mobile</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/l8-mobile.PNG"
			class="img-fluid" alt="Responsive image">
		<div>
			<b>Code</b>
		</div>
		<xmp class="card bg-light text-dark">

		<div class="container pb-3 ">
			<div class="row text-white">
				<div class="col-md-12 col-12 border col-6 bg-warning">1</div>
				<div class="col-md-4 col-6 border bg-success h-50">2</div>
				<div class="col-md-8 col-6 border bg-dark h-50">3</div>
				<div class="col-md-12 col-12 border bg-success">4</div>

			</div>
		</div>
		</xmp>
	</div>
	<!-- Layout 8 Ends-->
	<!-- Layout 9 Begins-->
	<div class="border border-dark mb-3 shadow">
		<div class="display-4 pb-3  ">
			<u>Layout 9</u>
		</div>
		<div class="h-4 pb-2">Layout 9 Desktop</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/layout9-normal.PNG"
			class="img-fluid" alt="Responsive image">
		<div class="h-4 pt-3 pb-2">Layout 9 Mobile</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/l9-mobile.PNG"
			class="img-fluid" alt="Responsive image">
		<div>
			<b>Code</b>
		</div>
		<xmp class="card bg-light text-dark">

		<div class="container pb-3">
			<div class="row text-white ">
				<div class="col-md-2 col-6 border  bg-info">1</div>
				<div class="col-md-2 col-6 border bg-success h-50">2</div>
				<div class="col-md-2 col-6 border bg-info h-50">3</div>
				<div class="col-md-2 col-6 border bg-success">4</div>
				<div class="col-md-2 col-12 border bg-warning h-50">5</div>
				<div class="col-md-2 col-12 border bg-success h-50">6</div>

			</div>
		</div>
		</xmp>
	</div>
	<!-- Layout 9 Ends-->
	<!-- Layout 10 Begins-->
	<div class="border border-dark mb-3 shadow">
		<div class="display-4 pb-3  ">
			<u>Layout 10</u>
		</div>
		<div class="h-4 pb-2">Layout 10 Desktop</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/layout10-normal.PNG"
			class="img-fluid" alt="Responsive image">
		<div class="h-4 pt-3 pb-2">Layout 10 Mobile</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/l10-mobile.PNG"
			class="img-fluid" alt="Responsive image">
		<div>
			<b>Code</b>
		</div>
		<xmp class="card bg-light text-dark">

		<div class="container pb-3">
			<div class="row text-white">
				<div class="col-md-8 col-12 border bg-warning">
					1
					<div class="row">
						<div class="col-md-4 col-4 border bg-dark">2</div>
						<div class="col-md-4 col-4 border bg-secondary">3</div>
						<div class="col-md-4 col-4 border bg-secondary">4</div>
					</div>
				</div>
				<div class="col-md-4 col-6 border bg-success">5</div>
				<div class="col-md-12 col-6 border bg-success">6</div>
			</div>
		</div>
		</xmp>
	</div>
	<!-- Layout 10 Ends-->
	<!-- Layout 11 Begins-->
	<div class="border border-dark mb-3 shadow">
		<div class="display-4 pb-3  ">
			<u>Layout 11</u>
		</div>
		<div class="h-4 pb-2">Layout 11 Desktop</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/layout11-normal.PNG"
			class="img-fluid" alt="Responsive image">
		<div class="h-4 pt-3 pb-2">Layout 11 Mobile</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/l11-mobile.PNG"
			class="img-fluid" alt="Responsive image">
		<div>
			<b>Code</b>
		</div>
		<xmp class="card bg-light text-dark">

		<div class="container pb-3">
			<div class="row text-white">
				<div class="col-md-6 col-12 border">
					<div class="row">
						<div class="col-md-4 col-6 border bg-warning">1</div>
						<div class="col-md-8 col-6 border bg-dark">2</div>
						<div class="col-md-12 col-12 border bg-success">3</div>
					</div>

				</div>
				<div class="col-md-6 col-12">
					<div class="row">
						<div class="col-md-12 col-4 border bg-warning">4</div>
						<div class="col-md-6 col-4 border bg-dark">5</div>
						<div class="col-md-6 col-4 border bg-info">6</div>

					</div>


				</div>
				<div class="col-md-12 col-12 border bg-warning">7</div>
			</div>
		</div>
		</xmp>
	</div>
	<!-- Layout 11 Ends-->
	<!-- Layout 12 Begins-->
	<div class="border border-dark mb-3 shadow">
		<div class="display-4 pb-3  ">
			<u>Layout 12</u>
		</div>
		<div class="h-4 pb-2">Layout 12 Desktop</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/layout12-normal.PNG"
			class="img-fluid" alt="Responsive image">
		<div class="h-4 pt-3 pb-2">Layout 12 Mobile</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/l12-mobile.PNG"
			class="img-fluid" alt="Responsive image">
		<div>
			<b>Code</b>
		</div>
		<xmp class="card bg-light text-dark">

		<div class="container pb-3">
			<div class="row text-white">
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-4 col-6 border bg-warning">1</div>
						<div class="col-md-4 col-6 border bg-info">2</div>
						<div class="col-md-4 col-12 border bg-dark">3</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-4 col-6 border bg-warning">4</div>
						<div class="col-md-8 col-6 border bg-info">5</div>
					</div>
				</div>
			</div>
		</div>
		</xmp>
	</div>
	<!-- Layout 12 Ends-->
	<!-- Layout 13 Begins-->
	<div class="border border-dark mb-3 shadow">
		<div class="display-4 pb-3  ">
			<u>Layout 13</u>
		</div>
		<div class="h-4 pb-2">Layout 13 Desktop</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/layout13-normal.PNG"
			class="img-fluid" alt="Responsive image">
		<div class="h-4 pt-3 pb-2">Layout 13 Mobile</div>
		<img src="<%=baseURL%>webapp/assets/images/section3-images/l13.PNG"
			class="img-fluid" alt="Responsive image">
		<div>
			<b>Code</b>
		</div>
		<xmp class="card bg-light text-dark">

		<div class="container pb-3">
			<div class="row text-white">
				<div class="col-md-4">
					<div class="row">
						<div class="col-md-12 col-12 border bg-warning">1</div>
						<div class="col-md-9 col-6 border bg-info">2</div>
						<div class="col-md-3 col-6 border bg-success">3</div>
					</div>
				</div>
				<div class="col-md-4 ">
					<div class="row">
						<div class="col-md-6 col-12 border bg-dark">4</div>
						<div class="col-md-6 col-6 border bg-info">5</div>
						<div class="col-md-12 col-6 border bg-warning">6</div>
					</div>
				</div>
				<div class="col-md-4 ">
					<div class="row">
						<div class="col-md-3 col-6 border bg-success">7</div>
						<div class="col-md-3 col-6 border bg-info">8</div>
						<div class="col-md-3 col-6 border bg-dark">9</div>
						<div class="col-md-3 col-6 border bg-warning">10</div>
						<div class="col-md-12 col-12 border bg-success">11</div>
					</div>
				</div>
			</div>
		</div>
		</xmp>
	</div>
	<!-- Layout 13 Ends-->
	<!-- Layout 14 Begins-->
	<div class="border border-dark mb-3 shadow">
		<div class="display-4 pb-3  ">
			<u>Layout 14</u>
		</div>
		<div class="h-4 pb-2">Layout 14 Desktop</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/layout14-normal.PNG"
			class="img-fluid" alt="Responsive image">
		<div class="h-4 pt-3 pb-2">Layout 14 Mobile</div>
		<img src="<%=baseURL%>webapp/assets/images/section3-images/l14.PNG"
			class="img-fluid" alt="Responsive image">
		<div>
			<b>Code</b>
		</div>
		<xmp class="card bg-light text-dark">

		<div class="container pb-3">
			<div class="row text-white">
				<div class="col-md-4">
					<div class="row">
						<div class="col-md-12 col-12 border bg-warning">1</div>
						<div class="col-md-9 col-6 border bg-danger">2</div>
						<div class="col-md-3 col-6 border bg-warning">3</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="row">
						<div class="col-md-6 col-12 border bg-info">4</div>
						<div class="col-md-6 col-6 border bg-info">5</div>
						<div class="col-md-12 col-6 border bg-danger">6</div>
					</div>
				</div>
				<div class="col-md-4 ">
					<div class="row">
						<div class="col-md-3 col-6 border bg-warning">7</div>
						<div class="col-md-3 col-6 border bg-info">8</div>
						<div class="col-md-3 col-6 border bg-success">9</div>
						<div class="col-md-3 col-6 border bg-dark">10</div>
						<div class="col-md-5 border bg-danger">11</div>
						<div class="col-md-7 border bg-warning">12</div>
					</div>
				</div>
				<div class="col-md-12 border bg-info">13</div>
			</div>
		</div>
		</xmp>
	</div>
	<!-- Layout 14 Ends-->
	<!-- Layout 15 Begins-->
	<div class="border border-dark mb-3 shadow">
		<div class="display-4 pb-3  ">
			<u>Layout 15</u>
		</div>
		<div class="h-4 pb-2">Layout 15 Desktop</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/layout15-normal.PNG"
			class="img-fluid" alt="Responsive image">
		<div class="h-4 pt-3 pb-2">Layout 15 Mobile</div>
		<img src="<%=baseURL%>webapp/assets/images/section3-images/l15.PNG"
			class="img-fluid" alt="Responsive image">
		<div>
			<b>Code</b>
		</div>
		<xmp class="card bg-light text-dark">

		<div class="container pb-3">
			<div class="row text-white">
				<div class="col-md-4 col-12">
					<div class="row">
						<div class="col-md-12 col-12 border bg-warning">1</div>
						<div class="col-md-9 col-6 border bg-dark">2</div>
						<div class="col-md-3 col-6 border bg-info">3</div>
					</div>
				</div>
				<div class="col-md-4  col-12">
					<div class="row">
						<div class="col-md-6 col-12 border bg-warning">4</div>
						<div class="col-md-6 col-6 border bg-primary">5</div>
						<div class="col-md-12 col-6 border bg-warning">6</div>
					</div>
				</div>
				<div class="col-md-4 col-12">
					<div class="row">
						<div class="col-md-3 col-6 border bg-warning">7</div>
						<div class="col-md-3 col-6 border bg-warning">8</div>
						<div class="col-md-3 col-6 border bg-success">9</div>
						<div class="col-md-3 col-6 border bg-warning">10</div>
						<div class="col-md-5 border bg-primary">11</div>
						<div class="col-md-7 border bg-warning">12</div>
					</div>
				</div>
				<div class="col-md-12 col-12 ">
					<div class="row">
						<div class="col-md-4  col-6 border bg-dark">13</div>
						<div class="col-md-4 border col-6  bg-warning">14</div>
						<div class="col-md-4 border bg-secondary">
							<div class="row">
								<div class="col-md-12 border bg-warning">15</div>
								<div class="col-md-12 border bg-success">16</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</xmp>
	</div>
	<!-- Layout 15 Ends-->
	<!-- Layout 16 Begins-->
	<div class="border border-dark mb-3 shadow">
		<div class="display-4 pb-3  ">
			<u>Layout 16</u>
		</div>
		<div class="h-4 pb-2">Layout 16 Desktop</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/layout16-normal.PNG"
			class="img-fluid" alt="Responsive image">
		<div class="h-4 pt-3 pb-2">Layout 16 Mobile</div>
		<img src="<%=baseURL%>webapp/assets/images/section3-images/l16.PNG"
			class="img-fluid" alt="Responsive image">
		<div>
			<b>Code</b>
		</div>
		<xmp class="card bg-light text-dark">

		<div class="container pb-3">
			<div class="row text-white">

				<div class="col-md-3 col-12 border bg-warning">1</div>
				<div class="col-md-5  col-6 border bg-success">2</div>
				<div class="col-md-4 col-6 border  bg-warning">3</div>

				<div class="col-md-12">
					<div class="row">
						<div class="col-md-6 border col-12 bg-warning">4</div>
						<div class="col-md-6">
							<div class="row">
								<div class="col-md-12 col-6 border bg-dark">5</div>
								<div class="col-md-12 border col-6 bg-info">6</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</xmp>
	</div>
	<!-- Layout 16 Ends-->
	<!-- Layout 17 Begins-->
	<div class="border border-dark mb-3 shadow">
		<div class="display-4 pb-3  ">
			<u>Layout 17</u>
		</div>
		<div class="h-4 pb-2">Layout 17 Desktop</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/layout17-normal.PNG"
			class="img-fluid" alt="Responsive image">
		<div class="h-4 pt-3 pb-2">Layout 17 Mobile</div>
		<img src="<%=baseURL%>webapp/assets/images/section3-images/l17.PNG"
			class="img-fluid" alt="Responsive image">
		<div>
			<b>Code</b>
		</div>
		<xmp class="card bg-light text-dark">

		<div class="container pb-3">
			<div class="row text-white">
				<div class="col-md-4 col-4 border bg-danger">1</div>
				<div class="col-md-4 col-4 border bg-warning">2</div>
				<div class="col-md-4 col-4 border bg-success">3</div>
				<div class="col-md-12 col-4 border bg-warning">4</div>
				<div class="col-md-3 border col-4 bg-warning">5</div>
				<div class="col-md-3 border col-4 bg-dark">6</div>
				<div class="col-md-3 border col-6 bg-warning">7</div>
				<div class="col-md-3 border col-6 bg-info">8</div>
			</div>

		</div>
		</xmp>
	</div>
	<!-- Layout 17 Ends-->
	<!-- Layout 18 Begins-->
	<div class="border border-dark mb-3 shadow">
		<div class="display-4 pb-3  ">
			<u>Layout 18</u>
		</div>
		<div class="h-4 pb-2">Layout 18 Desktop</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/layout18-normal.PNG"
			class="img-fluid" alt="Responsive image">
		<div class="h-4 pt-3 pb-2">Layout 18 Mobile</div>
		<img src="<%=baseURL%>webapp/assets/images/section3-images/l18.PNG"
			class="img-fluid" alt="Responsive image">
		<div>
			<b>Code</b>
		</div>
		<xmp class="card bg-light text-dark">

		<div class="container pb-3">
			<div class="row text-white">
				<div class="col-md-9 col-12 bg-warning ">
					1
					<div class="row">
						<div class="col-8 col-md-6 border bg-success">2</div>
						<div class="col-4 col-md-6 border bg-warning">3</div>
					</div>
				</div>
				<div class="col-md-3  col-12 border bg-dark">4</div>
			</div>

		</div>
		</xmp>
	</div>
	<!-- Layout 18 Ends-->
	<!-- Layout 19 Begins-->
	<div class="border border-dark mb-3 shadow">
		<div class="display-4 pb-3  ">
			<u>Layout 19</u>
		</div>
		<div class="h-4 pb-2">Layout 19 Desktop</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/layout19-normal.PNG"
			class="img-fluid" alt="Responsive image">
		<div class="h-4 pt-3 pb-2">Layout 19 Mobile</div>
		<img src="<%=baseURL%>webapp/assets/images/section3-images/l19.PNG"
			class="img-fluid" alt="Responsive image">
		<div>
			<b>Code</b>
		</div>
		<xmp class="card bg-light text-dark">

		<div class="container pb-3">
			<div class="row text-white">
				<div class="col-md-6 col-12 border bg-warning">1</div>
				<div class="col-md-6 col-12 border bg-success">2</div>
				<div class="col-md-12 border bg-warning">
					<div class="row">
						<div class="col-md-12 col-6 border bg-info">3</div>
						<div class="col-md-12 col-6 border bg-warning">4</div>
					</div>
				</div>

				<div class="col-md-8 col-12 border bg-dark">5</div>
				<div class="col-md-4">
					<div class="row">
						<div class="col-md-12 col-12 border bg-warning">6</div>
						<div class="col-md-12 border bg-danger">
							<div class="row">
								<div class="col-md-9 col-6 border bg-warning">7</div>
								<div class="col-md-3 col-6 border bg-info">8</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		</xmp>
	</div>
	<!-- Layout 19 Ends-->
	<!-- Layout 20 Begins-->
	<div class="border border-dark mb-3 shadow">
		<div class="display-4 pb-3  ">
			<u>Layout 20</u>
		</div>
		<div class="h-4 pb-2">Layout 20 Desktop</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/layout20-normal.PNG"
			class="img-fluid" alt="Responsive image">
		<div class="h-4 pt-3 pb-2">Layout 20 Mobile</div>
		<img src="<%=baseURL%>webapp/assets/images/section3-images/l20.PNG"
			class="img-fluid" alt="Responsive image">
		<div>
			<b>Code</b>
		</div>
		<xmp class="card bg-light text-dark">

		<div class="container pb-3">
			<div class="row text-white">
				<div class="col-md-6 col-12 border bg-warning">1</div>
				<div class="col-md-6 col-12 border bg-info">2</div>
				<div class="col-md-12 border bg-warning">
					<div class="row">
						<div class="col-md-12 col-6 border bg-success">3</div>
						<div class="col-md-12 col-6 border bg-warning">4</div>
					</div>
				</div>

				<div class="col-md-8 col-12">
					<div class="row">
						<div class="col-md-4 col-4 border bg-dark">5</div>
						<div class="col-md-8 col-4 border bg-warning">6</div>

						<div class="col-md-12 col-4 border bg-primary">7</div>
					</div>
				</div>
				<div class="col-md-4 col-12 ">
					<div class="row">
						<div class="col-md-12 col-6 border bg-warning">8</div>
						<div class="col-md-12 col-6 borde bg-secondary">
							<div class="row">
								<div class="col-md-12 col-12 border bg-warning">9</div>

							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		</xmp>
	</div>
	<!-- Layout 20 Ends-->
	<!-- Layout 21 Begins -->
	<div class="border border-dark mb-3 shadow">
		<div class="display-4 pb-3  ">
			<u>Layout 21</u>
		</div>
		<div class="h-4 pb-2">Layout 21 Desktop</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/layout21-normal.PNG"
			class="img-fluid" alt="Responsive image">
		<div class="h-4 pt-3 pb-2">Layout 21 Mobile</div>
		<img src="<%=baseURL%>webapp/assets/images/section3-images/l21.PNG"
			class="img-fluid" alt="Responsive image">
		<div>
			<b>Code</b>
		</div>
		<xmp class="card bg-light text-dark">

		<div class="container pb-3">
			<div class="row text-white">
				<div class="col-md-12 col-12 border bg-warning">1</div>
				<div class="col-md-12 col-12">
					<div class="row">
						<div class="col-md-4 col-12 border bg-dark">2</div>
						<div class="col-md-4 col-6 border bg-warning">3</div>
						<div class="col-md-4 col-6 border bg-danger">4</div>
					</div>
				</div>
				<div class="col-md-12 col-6">
					<div class="row">
						<div class="col-md-7  col-8 border bg-success">5</div>
						<div class="col-md-5 col-4  border bg-warning">6</div>
					</div>
				</div>
				<div class="col-md-12 col-6 col-4 border bg-info">7</div>
			</div>

		</div>
		</xmp>
	</div>
	<!-- Layout 21 Ends-->
	<!-- Layout 22 Begins-->
	<div class="border border-dark mb-3 shadow">
		<div class="display-4 pb-3  ">
			<u>Layout 22</u>
		</div>
		<div class="h-4 pb-2">Layout 22 Desktop</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/layout22-normal.PNG"
			class="img-fluid" alt="Responsive image">
		<div class="h-4 pt-3 pb-2">Layout 22 Mobile</div>
		<img src="<%=baseURL%>webapp/assets/images/section3-images/l22.PNG"
			class="img-fluid" alt="Responsive image">
		<div>
			<b>Code</b>
		</div>
		<xmp class="card bg-light text-dark">

		<div class="container pb-3">
			<div class="row text-white">
				<div class="col-md-12 col-12">
					<div class="row">
						<div class="col-md-5 col-12 border bg-warning">1</div>
						<div class="col-md-7 col-12">
							<div class="row">
								<div class="col-md-8 col-5 border bg-dark">2</div>
								<div class="col-md-4 col-7 border bg-warning">3</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-12 col-12">
					<div class="row">
						<div class="col-md-4 col-4 border bg-success">4</div>
						<div class="col-md-4 col-4 border bg-warning">5</div>
						<div class="col-md-4 col-4 border bg-dark">6</div>
					</div>
				</div>
				<div class="col-md-12 col-6">
					<div class="row">
						<div class="col-md-7 col-6 border bg-warning">7</div>
						<div class="col-md-5 col-6 border bg-danger">8</div>
					</div>
				</div>
				<div class="col-md-12 col-6">
					<div class="row">
						<div class="col-md-3 col-4 border bg-warning">9</div>
						<div class="col-md-7 col-4 border bg-info">10</div>
						<div class="col-md-2 col-4 border bg-warning">11</div>
					</div>
				</div>
			</div>
		</div>
		</xmp>
	</div>
	<!-- Layout 22 Ends-->
	<!-- Layout 23 Begins-->
	<div class="border border-dark mb-3 shadow">
		<div class="display-4 pb-3  ">
			<u>Layout 23</u>
		</div>
		<div class="h-4 pb-2">Layout 23 Desktop</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/layout23-normal.PNG"
			class="img-fluid" alt="Responsive image">
		<div class="h-4 pt-3 pb-2">Layout 23 Mobile</div>
		<img src="<%=baseURL%>webapp/assets/images/section3-images/l23.PNG"
			class="img-fluid" alt="Responsive image">
		<div>
			<b>Code</b>
		</div>
		<xmp class="card bg-light text-dark">

		<div class="container pb-3">
			<div class="row text-white">
				<div class="col-md-3 col-6  border bg-danger">
					1
					<div class="row"></div>
				</div>
				<div class="col-md-3 col-6  border bg-dark">2</div>
				<div class="col-md-6 col-12  border bg-danger">3</div>
			</div>
		</div>
		</xmp>
	</div>
	<!-- Layout 23 Ends-->
	<!-- Layout 24 Begins-->
	<div class="border border-dark mb-3 shadow">
		<div class="display-4 pb-3  ">
			<u>Layout 24</u>
		</div>
		<div class="h-4 pb-2">Layout 24 Desktop</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/layout24-normal.PNG"
			class="img-fluid" alt="Responsive image">
		<div class="h-4 pt-3 pb-2">Layout 24 Mobile</div>
		<img src="<%=baseURL%>webapp/assets/images/section3-images/l24.PNG"
			class="img-fluid" alt="Responsive image">
		<div>
			<b>Code</b>
		</div>
		<xmp class="card bg-light text-dark">

		<div class="container  pb-3">
			<div class="row text-white">
				<div class="col-md-3 col-6  border ">
					<div class="row">
						<div class="col-md-3 border bg-danger">1</div>
						<div class="col-md-9 border bg-info">2</div>
					</div>
				</div>
				<div class="col-md-3 col-6  border bg-dark">3</div>
				<div class="col-md-6 col-12  border bg-danger">4</div>
			</div>
		</div>

		</xmp>
	</div>
	<!-- Layout 24 Ends-->
	<!-- Layout 25 Begins-->
	<div class="border border-dark mb-3 shadow">
		<div class="display-4 pb-3  ">
			<u>Layout 25</u>
		</div>
		<div class="h-4 pb-2">Layout 25 Desktop</div>
		<img
			src="<%=baseURL%>webapp/assets/images/section3-images/layout25-normal.PNG"
			class="img-fluid" alt="Responsive image">
		<div class="h-4 pt-3 pb-2">Layout 25 Mobile</div>
		<img src="<%=baseURL%>webapp/assets/images/section3-images/l25.PNG"
			class="img-fluid" alt="Responsive image">
		<div>
			<b>Code</b>
		</div>
		<xmp class="card bg-light text-dark ">

		<div class="container  pb-3">
			<div class="row text-white">
				<div class="col-md-3 col-6  ">
					<div class="row h-100">
						<div class="col-md-3 border bg-danger">1</div>
						<div class="col-md-9 border bg-info">2</div>
					</div>
				</div>
				<div class="col-md-3 col-6  border bg-dark">3</div>
				<div class="col-md-6 col-12  ">
					<div class="row">
						<div class="col-md-12 col-12 border bg-danger">4</div>
						<div class="col-md-4 col-6 border bg-primary">5</div>
						<div class="col-md-8 col-6bg-secondary">6</div>
					</div>
				</div>
			</div>
		</div>
		</xmp>
	</div>
	<!-- Layout 25 Ends-->
</div>
<!-- Section Ends -->
