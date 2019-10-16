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
<!-- Links to Stylesheet -->
<link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=baseURL%>assets/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">

<style>
select {
	width: 150px;
	height: 40px;
}

.previous {

	position: absolute;
	top: 0px;
	right: 84px;
}

.next {
	position: absolute;
	top: 0px;
	right: 20px;
}

.card.active {
	display: block;
}

.card {
	display: none;
}
</style>
</head>
<body>
	<!-- Container starts -->
	<div class="container pt-5">
		<!-- Example row of columns -->
		<div class="row py-4">
			<div class="col-md-3 position-relative findchild"
				data-parent="card1parent" data-index="0" data-child="childcard3">
				<%
					for (int i = 0; i < 0; i++) {
						String myclass = "";
						if (i == 0) {
							myclass = "active";
						}
				%>
				<div class="card mt-5 childcard3 <%=myclass%>">
					<div class="card-body">
						<h5 class="card-title">
							Card title
							<%=i%></h5>
						<h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="card-link">Card link</a> <a href="#"
							class="card-link">Another link</a>
					</div>
				</div>
				<%
					}
				%>
				<button type="button" class="btn btn-primary previous"
					disabled="disabled">Previous</button>
				<button type="button" class="btn btn-dark next">next</button>

			</div>

			<div class="col-md-3 position-relative findchild"
				data-parent="card1parent" data-index="0" data-child="childcard2">
				<%
					for (int i = 0; i < 10; i++) {
						String myclass = "";
						if (i == 0) {
							myclass = "active";
						}
				%>
				<div class="card mt-5 childcard2 <%=myclass%>">
					<div class="card-body">
						<h5 class="card-title">
							Card title
							<%=i%></h5>
						<h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="card-link">Card link</a> <a href="#"
							class="card-link">Another link</a>
					</div>
				</div>
				<%
					}
				%>
				<button type="button" class="btn btn-primary previous"
					disabled="disabled">Previous</button>
				<button type="button" class="btn btn-dark next">next</button>

			</div>
			<div class="col-md-3 position-relative findchild"
				data-parent="card1parent" data-index="0" data-child="childcard1">
				<%
					for (int i = 0; i < 5; i++) {
						String myclass = "";
						if (i == 0) {
							myclass = "active";
						}
				%>
				<div class="card mt-5 childcard1  <%=myclass%>">
					<div class="card-body">
						<h5 class="card-title">
							Card title
							<%=i%></h5>
						<h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="card-link">Card link</a> <a href="#"
							class="card-link">Another link</a>
					</div>
				</div>
				<%
					}
				%>
				<button type="button" class="btn btn-primary previous"
					disabled="disabled">Previous</button>
				<button type="button" class="btn btn-dark next"">next</button>

			</div>
		</div>

	</div>

	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<script>
		// A $( document ).ready() block.
		$(document).ready(
				function() {
					$('.findchild').each(function() {
						var a = $(this).data('child')
						if ($(this).find('.' + a).length === 0) {
							$(this).find('.next').prop('disabled', 'true')
							}
					})

					$('.next').click(
							function() {
								var iterator_class = $(this).parent().data(
										'child');
								var limit = $('.' + iterator_class).length;

								var current_index = $(this).parent().attr(
										'data-index');

								if (parseInt(current_index) === 0) {
									$(this).parent().find('.previous')
											.removeAttr('disabled')
								}
								$(this).parent().attr('data-index',
										++current_index);
								$('.' + iterator_class).each(function() {
									$(this).removeClass('active');
								});

								$($('.' + iterator_class)[current_index])
										.addClass('active');

								if (parseInt(current_index) === limit - 1) {

									$(this).parent().find('.next').attr(
											'disabled', 'true')
								}

							});

					$('.previous').click(
							function() {
								var iterator_class = $(this).parent().data(
										'child');
								var limit = $('.' + iterator_class).length;
								var current_index = $(this).parent().attr(
										'data-index');

								if (parseInt(current_index) === limit - 1) {

									$(this).parent().find('.next').removeAttr(
											'disabled')

								}

								$(this).parent().attr('data-index',
										--current_index);
								$('.' + iterator_class).each(function() {
									$(this).removeClass('active');
								});
								$($('.' + iterator_class)[$(this)
												.parent().attr('data-index')])
										.addClass('active');
								if (parseInt(current_index) === 0) {

									$(this).parent().find('.previous').attr(
											'disabled', 'true')
								}

							});

				});
	</script>
</body>
</html>