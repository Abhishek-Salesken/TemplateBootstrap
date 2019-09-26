<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sections</title>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<style>
body {
	position: relative; /* required */
}

.list-group {
	position: sticky;
	/* Supported in latest version of Chrome, Firefox, Safari, Opera and Edge browsers */
	top: 15px;
}
</style>
<link rel="stylesheet"
	href="<%=baseURL%>webapp/assets/css/bootstrap.min.css">
</head>
<body data-spy="scroll" data-offset="15" data-target="#myScrollspy">

	<div class="container pt-5">
		<h1>Bootstrap Scrollspy</h1>
		<p class="lead">
			<i>Scroll this page and see how the nav items are highlighted
				automatically based on the scroll position.</i>
		</p>
		<div class="row">
			<div class="col-sm-3" id="myScrollspy">
				<div class="list-group">
					<a class="list-group-item list-group-item-action active"
						href="#section1">Section One</a> <a
						class="list-group-item list-group-item-action" href="#section2">Section
						Two</a> <a class="list-group-item list-group-item-action"
						href="#section3">Section Three</a> <a
						class="list-group-item list-group-item-action" href="#section4">Section
						Four</a> <a class="list-group-item list-group-item-action"
						href="#section5">Section Five</a> <a
						class="list-group-item list-group-item-action" href="#section6">Section
						Six</a>

				</div>
			</div>
			<div class="col-sm-9">
				<jsp:include page="../inc/sections/section1.jsp"></jsp:include>
				<jsp:include page="../inc/sections/section2.jsp"></jsp:include>
				<jsp:include page="../inc/sections/section3.jsp"></jsp:include>
				
				<hr>
				<div id="section3">
					<h2>Section Three</h2>
					<p>Integer pulvinar leo id risus pellentesque vestibulum. Sed
						diam libero, sodales eget sapien vel, porttitor bibendum enim.
						Donec sed nibh vitae lorem porttitor blandit in nec ante.
						Pellentesque vitae metus ipsum. Phasellus sed nunc ac sem
						malesuada condimentum. Etiam in aliquam lectus. Nam vel sapien
						diam. Donec pharetra id arcu eget blandit. Proin imperdiet mattis
						augue in porttitor. Quisque tempus enim id lobortis feugiat.
						Suspendisse tincidunt risus quis dolor fringilla blandit. Ut sed
						sapien at purus lacinia porttitor. Nullam iaculis, felis a pretium
						ornare, dolor nisl semper tortor, vel sagittis lacus est consequat
						eros. Sed id pretium nisl. Curabitur dolor nisl, laoreet vitae
						aliquam id, tincidunt sit amet mauris.</p>
					<p>Phasellus vitae suscipit justo. Mauris pharetra feugiat ante
						id lacinia. Etiam faucibus mauris id tempor egestas. Duis luctus
						turpis at accumsan tincidunt. Phasellus risus risus, volutpat vel
						tellus ac, tincidunt fringilla massa. Etiam hendrerit dolor eget
						ante rutrum adipiscing. Cras interdum ipsum mattis, tempus mauris
						vel, semper ipsum. Duis sed dolor ut enim lobortis pellentesque
						ultricies ac ligula. Pellentesque convallis elit nisi, id
						vulputate ipsum ullamcorper ut. Cras ac pulvinar purus, ac viverra
						est. Suspendisse potenti. Integer pellentesque neque et elementum
						tempus. Curabitur bibendum in ligula ut rhoncus.</p>
					<p>Quisque pharetra velit id velit iaculis pretium. Nullam a
						justo sed ligula porta semper eu quis enim. Pellentesque
						pellentesque, metus at facilisis hendrerit, lectus velit facilisis
						leo, quis volutpat turpis arcu quis enim. Nulla viverra lorem
						elementum interdum ultricies. Suspendisse accumsan quam nec ante
						mollis tempus. Morbi vel accumsan diam, eget convallis tellus.
						Suspendisse potenti.</p>
					<p>Integer pulvinar leo id risus pellentesque vestibulum. Sed
						diam libero, sodales eget sapien vel, porttitor bibendum enim.
						Donec sed nibh vitae lorem porttitor blandit in nec ante.
						Pellentesque vitae metus ipsum. Phasellus sed nunc ac sem
						malesuada condimentum. Etiam in aliquam lectus. Nam vel sapien
						diam. Donec pharetra id arcu eget blandit. Proin imperdiet mattis
						augue in porttitor. Quisque tempus enim id lobortis feugiat.
						Suspendisse tincidunt risus quis dolor fringilla blandit. Ut sed
						sapien at purus lacinia porttitor. Nullam iaculis, felis a pretium
						ornare, dolor nisl semper tortor, vel sagittis lacus est consequat
						eros. Sed id pretium nisl. Curabitur dolor nisl, laoreet vitae
						aliquam id.</p>
					<p>Phasellus vitae suscipit justo. Mauris pharetra feugiat ante
						id lacinia. Etiam faucibus mauris id tempor egestas. Duis luctus
						turpis at accumsan tincidunt. Phasellus risus risus, volutpat vel
						tellus ac, tincidunt fringilla massa. Etiam hendrerit dolor eget
						ante rutrum adipiscing. Cras interdum ipsum mattis, tempus mauris
						vel, semper ipsum. Duis sed dolor ut enim lobortis pellentesque
						ultricies ac ligula. Pellentesque convallis elit nisi, id
						vulputate ipsum ullamcorper ut. Cras ac pulvinar purus, ac viverra
						est. Suspendisse potenti. Integer pellentesque neque et elementum
						tempus. Curabitur bibendum in ligula ut rhoncus.</p>
					<p>Disque pharetra velit id velit iaculis pretium. Nullam a
						justo sed ligula porta semper eu quis enim. Pellentesque
						pellentesque, metus at facilisis hendrerit, lectus velit facilisis
						leo, quis volutpat turpis arcu quis enim. Nulla viverra lorem
						elementum interdum ultricies. Suspendisse accumsan quam nec ante
						mollis tempus. Morbi vel accumsan diam, eget convallis tellus.
						Suspendisse potenti.</p>
				</div>
				<hr>
				<div id="section4">
					<h2>Section Four</h2>
					<p>Suspendisse a orci facilisis, dignissim tortor vitae,
						ultrices mi. Vestibulum a iaculis lacus. Phasellus vitae convallis
						ligula, nec volutpat tellus. Vivamus scelerisque mollis nisl, nec
						vehicula elit egestas a. Sed luctus metus id mi gravida, faucibus
						convallis neque pretium. Maecenas quis sapien ut leo fringilla
						tempor vitae sit amet leo. Donec imperdiet tempus placerat.
						Pellentesque pulvinar ultrices nunc sed ultrices. Morbi vel mi
						pretium, fermentum lacus et, viverra tellus. Phasellus sodales
						libero nec dui convallis, sit amet fermentum sapien auctor.
						Vestibulum ante ipsum primis in faucibus orci luctus et ultrices
						posuere cubilia Curae; Sed eu elementum nibh, quis varius libero.</p>
					<p>Vestibulum quis quam ut magna consequat faucibus.
						Pellentesque eget nisi a mi suscipit tincidunt. Ut tempus dictum
						risus. Pellentesque viverra sagittis quam at mattis. Suspendisse
						potenti. Aliquam sit amet gravida nibh, facilisis gravida odio.
						Phasellus auctor velit at lacus blandit, commodo iaculis justo
						viverra. Etiam vitae est arcu. Mauris vel congue dolor. Aliquam
						eget mi mi. Fusce quam tortor, commodo ac dui quis, bibendum
						viverra erat. Maecenas mattis lectus enim, quis tincidunt dui
						molestie euismod. Curabitur et diam tristique, accumsan nunc eu,
						hendrerit tellus.</p>
					<p>Phasellus fermentum, neque sit amet sodales tempor, enim
						ante interdum eros, eget luctus ipsum eros ut ligula. Nunc ornare
						erat quis faucibus molestie. Proin malesuada consequat commodo.
						Mauris iaculis, eros ut dapibus luctus, massa enim elementum
						purus, sit amet tristique purus purus nec felis. Morbi vestibulum
						sapien eget porta pulvinar. Nam at quam diam. Proin rhoncus, felis
						elementum accumsan dictum, felis nisi vestibulum tellus, et
						ultrices risus felis in orci. Quisque vestibulum sem nisl, vel
						congue leo dictum nec. Cras eget est at velit sagittis ullamcorper
						vel et lectus. In hac habitasse platea dictumst. Etiam interdum
						iaculis velit, vel sollicitudin lorem feugiat sit amet. Etiam
						luctus, quam sed sodales aliquam, lorem libero hendrerit urna,
						faucibus rhoncus massa nibh at felis. Curabitur ac tempus nulla,
						ut semper erat. Vivamus porta ullamcorper sem, ornare egestas
						mauris facilisis id.</p>
					<p>Ut ut risus nisl. Fusce porttitor eros at magna luctus, non
						congue nulla eleifend. Aenean porttitor feugiat dolor sit amet
						facilisis. Pellentesque venenatis magna et risus commodo, a
						commodo turpis gravida. Nam mollis massa dapibus urna aliquet,
						quis iaculis elit sodales. Sed eget ornare orci, eu malesuada
						justo. Nunc lacus augue, dictum quis dui id, lacinia congue quam.
						Nulla sem sem, aliquam nec dolor ac, tempus convallis nunc.
						Interdum et malesuada fames ac ante ipsum primis in faucibus.
						Nulla suscipit convallis iaculis. Quisque eget commodo ligula.
						Praesent leo dui, facilisis quis eleifend in, aliquet vitae nunc.
						Suspendisse fermentum odio ac massa ultricies pellentesque. Fusce
						eu suscipit massa.</p>
					<p>In mauris nunc, convallis eget pretium eu, bibendum non leo.
						Proin suscipit purus adipiscing dolor gravida, in fermentum sapien
						blandit. Praesent pellentesque ligula dui, in gravida turpis
						vehicula ac. Pellentesque hendrerit nunc ut luctus hendrerit.
						Aliquam nec tincidunt urna. Ut interdum nec odio non interdum.
						Curabitur ligula justo, dapibus non ligula tristique, dapibus
						tristique nulla. Aliquam pulvinar dapibus eros, rutrum pretium
						urna iaculis ut. Nam est est, tempus id egestas et, viverra in
						dui. Aliquam gravida orci tortor, sed congue justo ornare vel.
						Cras in quam consectetur eros varius scelerisque. Ut vel fermentum
						purus. Nullam interdum blandit turpis, id pellentesque massa
						feugiat at. Ut sed lectus lectus. Vestibulum ante ipsum primis in
						faucibus orci luctus et ultrices posuere cubilia Curae; Nulla
						rutrum, ante quis convallis ultricies, magna quam rhoncus erat..</p>
					<p>Sed vitae lobortis diam, id molestie magna. Aliquam
						consequat ipsum quis est dictum ultrices. Aenean nibh velit,
						fringilla in diam id, blandit hendrerit lacus. Donec vehicula
						rutrum tellus eget fermentum. Pellentesque ac erat et arcu ornare
						tincidunt. Aliquam erat volutpat. Vivamus lobortis urna quis
						gravida semper. In condimentum, est a faucibus luctus, mi dolor
						cursus mi, id vehicula arcu risus a nibh. Pellentesque blandit
						sapien lacus, vel vehicula nunc feugiat sit amet.</p>
					<p>Bvtae lobortis diam, id molestie magna. Aliquam consequat
						ipsum quis est dictum ultrices. Aenean nibh velit, fringilla in
						diam id, blandit hendrerit lacus. Donec vehicula rutrum tellus
						eget fermentum. Pellentesque ac erat et arcu ornare tincidunt.
						Aliquam erat volutpat. Vivamus lobortis urna quis gravida semper.
						In condimentum, est a faucibus luctus, mi dolor cursus mi, id
						vehicula arcu risus a nibh. Pellentesque blandit sapien lacus, vel
						vehicula nunc feugiat sit amet.</p>
				</div>
				<hr>
				<div id="section5">
					<h2>Section Five</h2>
					<p>Nam eget purus nec est consectetur vehicula. Nullam ultrices
						nisl risus, in viverra libero egestas sit amet. Etiam porttitor
						dolor non eros pulvinar malesuada. Vestibulum sit amet est mollis
						nulla tempus aliquet. Praesent luctus hendrerit arcu non laoreet.
						Morbi consequat placerat magna, ac ornare odio sagittis sed. Donec
						vitae ullamcorper purus. Vivamus non metus ac justo porta
						volutpat.</p>
					<p>Vivamus mattis accumsan erat, vel convallis risus pretium
						nec. Integer nunc nulla, viverra ut sem non, scelerisque vehicula
						arcu. Fusce bibendum convallis augue sit amet lobortis. Cras porta
						urna turpis, sodales lobortis purus adipiscing id. Maecenas
						ullamcorper, turpis suscipit pellentesque fringilla, massa lacus
						pulvinar mi, nec dignissim velit arcu eget purus. Nam at dapibus
						tellus, eget euismod nisl. Ut eget venenatis sapien. Vivamus
						vulputate varius mauris, vel varius nisl facilisis ac. Nulla
						aliquet justo a nibh ornare, eu congue neque rutrum.</p>
					<p>Suspendisse a orci facilisis, dignissim tortor vitae,
						ultrices mi. Vestibulum a iaculis lacus. Phasellus vitae convallis
						ligula, nec volutpat tellus. Vivamus scelerisque mollis nisl, nec
						vehicula elit egestas a. Sed luctus metus id mi gravida, faucibus
						convallis neque pretium. Maecenas quis sapien ut leo fringilla
						tempor vitae sit amet leo. Donec imperdiet tempus placerat.
						Pellentesque pulvinar ultrices nunc sed ultrices. Morbi vel mi
						pretium, fermentum lacus et, viverra tellus. Phasellus sodales
						libero nec dui convallis, sit amet fermentum sapien auctor.
						Vestibulum ante ipsum primis in faucibus orci luctus et ultrices
						posuere cubilia Curae; Sed eu elementum nibh, quis varius libero.</p>
					<p>Morbi sed fermentum ipsum. Morbi a orci vulputate tortor
						ornare blandit a quis orci. Donec aliquam sodales gravida. In ut
						ullamcorper nisi, ac pretium velit. Vestibulum vitae lectus
						volutpat, consequat lorem sit amet, pulvinar tellus. In tincidunt
						vel leo eget pulvinar. Curabitur a eros non lacus malesuada
						aliquam. Praesent et tempus odio. Integer a quam nunc. In hac
						habitasse platea dictumst. Aliquam porta nibh nulla, et mattis
						turpis placerat eget. Pellentesque dui diam, pellentesque vel
						gravida id, accumsan eu magna. Sed a semper arcu, ut dignissim
						leo.</p>
					<p>Sed vitae lobortis diam, id molestie magna. Aliquam
						consequat ipsum quis est dictum ultrices. Aenean nibh velit,
						fringilla in diam id, blandit hendrerit lacus. Donec vehicula
						rutrum tellus eget fermentum. Pellentesque ac erat et arcu ornare
						tincidunt. Aliquam erat volutpat. Vivamus lobortis urna quis
						gravida semper. In condimentum, est a faucibus luctus, mi dolor
						cursus mi, id vehicula arcu risus a nibh. Pellentesque blandit
						sapien lacus, vel vehicula nunc feugiat sit amet.</p>
					<p>Gonvallis eget pretium eu, bibendum non leo. Proin suscipit
						purus adipiscing dolor gravida, in fermentum sapien blandit.
						Praesent pellentesque ligula dui, in gravida turpis vehicula ac.
						Pellentesque hendrerit nunc ut luctus hendrerit. Aliquam nec
						tincidunt urna. Ut interdum nec odio non interdum. Curabitur
						ligula justo, dapibus non ligula tristique, dapibus tristique
						nulla. Aliquam pulvinar dapibus eros, rutrum pretium urna iaculis
						ut. Nam est est, tempus id egestas et, viverra in dui. Aliquam
						gravida orci tortor, sed congue justo ornare vel. Cras in quam
						consectetur eros varius scelerisque. Ut vel fermentum purus.
						Nullam interdum blandit turpis, id pellentesque massa feugiat at.
						Ut sed lectus lectus. Vestibulum ante ipsum primis in faucibus
						orci luctus et ultrices posuere cubilia Curae; Nulla rutrum, ante
						quis convallis ultricies, magna quam rhoncus erat, in lacinia
						libero magna a ipsum.</p>
					<p>Eget purus nec est consectetur vehicula. Nullam ultrices
						nisl risus, in viverra libero egestas sit amet. Etiam porttitor
						dolor non eros pulvinar malesuada. Vestibulum sit amet est mollis
						nulla tempus aliquet. Praesent luctus hendrerit arcu non laoreet.
						Morbi consequat placerat magna, ac ornare odio sagittis sed. Donec
						vitae ullamcorper purus. Vivamus non metus ac justo porta
						volutpat.</p>
					<p>Etiam porttitor dolor non eros pulvinar malesuada.
						Vestibulum sit amet est mollis nulla tempus aliquet. Praesent
						luctus hendrerit arcu non laoreet. Morbi consequat placerat magna,
						ac ornare odio sagittis sed. Donec vitae ullamcorper purus.
						Vivamus non metus ac justo porta volutpat. Meget purus nec est
						consectetur vehicula. Nullam ultrices nisl risus, in viverra
						libero egestas sit amet. Etiam porttitor dolor non eros pulvinar
						malesuada. Vestibulum sit amet est mollis nulla tempus aliquet.
						Praesent luctus hendrerit arcu non laoreet. Morbi consequat
						placerat magna, ac ornare odio sagittis sed. Donec vitae
						ullamcorper purus. Vivamus non metus ac justo porta volutpat.</p>
					<p>Maecenas ullamcorper, turpis suscipit pellentesque
						fringilla, massa lacus pulvinar mi, nec dignissim velit arcu eget
						purus. Nam at dapibus tellus, eget euismod nisl. Ut eget venenatis
						sapien. Vivamus vulputate varius mauris, vel varius nisl facilisis
						ac. Nulla aliquet justo a nibh ornare, eu congue neque rutrum.
						Vamus mattis accumsan erat, vel convallis risus pretium nec.
						Integer nunc nulla, viverra ut sem non, scelerisque vehicula arcu.
						Fusce bibendum convallis augue sit amet lobortis. Cras porta urna
						turpis, sodales lobortis purus adipiscing id. Maecenas
						ullamcorper, turpis suscipit pellentesque fringilla, massa lacus
						pulvinar mi, nec dignissim velit arcu eget purus. Nam at dapibus
						tellus, eget euismod nisl. Ut eget venenatis sapien. Vivamus
						vulputate varius mauris, vel varius nisl facilisis ac. Nulla
						aliquet justo a nibh ornare, eu congue neque rutrum.</p>
					<p>Suspendisse a orci facilisis, dignissim tortor vitae,
						ultrices mi. Vestibulum a iaculis lacus. Phasellus vitae convallis
						ligula, nec volutpat tellus. Vivamus scelerisque mollis nisl, nec
						vehicula elit egestas a. Sed luctus metus id mi gravida, faucibus
						convallis neque pretium. Maecenas quis sapien ut leo fringilla
						tempor vitae sit amet leo. Donec imperdiet tempus placerat.
						Pellentesque pulvinar ultrices nunc sed ultrices. Morbi vel mi
						pretium, fermentum lacus et, viverra tellus. Phasellus sodales
						libero nec dui convallis, sit amet fermentum sapien auctor.
						Vestibulum ante ipsum primis in faucibus orci luctus et ultrices
						posuere cubilia Curae; Sed eu elementum nibh, quis varius libero.</p>
					<p>Fermentum ipsum. Morbi a orci vulputate tortor ornare
						blandit a quis orci. Donec aliquam sodales gravida. In ut
						ullamcorper nisi, ac pretium velit. Vestibulum vitae lectus
						volutpat, consequat lorem sit amet, pulvinar tellus. In tincidunt
						vel leo eget pulvinar. Curabitur a eros non lacus malesuada
						aliquam. Praesent et tempus odio. Integer a quam nunc. In hac
						habitasse platea dictumst. Aliquam porta nibh nulla, et mattis
						turpis placerat eget. Pellentesque dui diam, pellentesque vel
						gravida id, accumsan eu magna.</p>
				</div>
				<div id="section6">
					<div class="card">
						<img src="..." class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">Card title</h5>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
							<a href="#" class="btn btn-primary">Go somewhere</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="<%=baseURL%>webapp/assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>webapp/assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>webapp/assets/js/bootstrap.min.js"></script>
</body>
</html>