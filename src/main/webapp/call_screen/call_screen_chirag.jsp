<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Salesken Call Screen</title>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=baseURL%>assets/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=baseURL%>assets/css/call_screen_chirag.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">

</head>

<body>
	<div class="container border">
		<header>
			<div class="row px-4 py-2 border-bottom background-color">
				<div class="col-md-2 p-1 d-flex align-items-center">
					<button class="btn p-0" type="submit">
						<i class="fa fa-arrow-left left-arrow d-flex align-items-center"></i>
					</button>
					<h5 class="d-flex align-items-center verticalBorder m-0 px-4">Call
						Task</h5>
				</div>
				<div class="col-md-8 d-flex align-items-center">
					<ol
						class="breadcrumb breadcrumbBg d-flex align-items-center m-0 p-0">
						<li><a class="breadcrumbText" href="#">Task Details</a></li>
						<li><i
							class="fa fa-chevron-circle-right chevron-color pt-1 px-2 d-flex align-items-center"></i></li>
						<li><a class="breadcrumbText" href="#">Call Task</a></li>
					</ol>
				</div>
			</div>
		</header>
		<div class="row">
			<div class="col-md-3 pt-2 background-color  px-4">
				<ul class="nav nav-tabs pt-3" id="myTab" role="tablist">
					<li class="nav-item p-0 m-0"><a
						class="nav-link active tabText" id="dialer-tab" data-toggle="tab"
						href="#dialer" role="tab" aria-controls="dialer"
						aria-selected="true">Dialer</a></li>

					<li class="nav-item p-0 m-0"><a class="nav-link tabText"
						id="recent-tab" data-toggle="tab" href="#recent" role="tab"
						aria-controls="recent" aria-selected="false">Recent</a></li>

					<li class="nav-item p-0 m-0"><a class="nav-link tabText"
						id="leads-tab" data-toggle="tab" href="#leads" role="tab"
						aria-controls="leads" aria-selected="false">Leads</a></li>
				</ul>

				<div class="tab-content p-3" id="myTabContent">
					<div class="tab-pane fade show active" id="dialer" role="tabpanel"
						aria-labelledby="dialer-tab">
						<div class="row p-0 m-0 border-bottom">
							<div class="col-md-12 m-0 p-1">
								<div class="input-group d-flex align-items-center">
									<input
										class="form-control removeShadow border-0  f-size p-0 m-0 background-color"
										type="text" oninput="numberOnly(this.id)" maxLength="14"
										onblur="isValid(this);" id="num" />
									<div class="input-group-append">
										<button class="btn p-0 " onclick="del();">
											<i class="fa fa-backspace py-2"></i>
										</button>
									</div>
								</div>
							</div>
						</div>
						<!-- =======================================DIALER PAD======================================= -->
						<div class="row pt-4 marginBottom">
							<div class="col-md-4 col-4 m-0 p-0">
								<div
									class="digit d-flex flex-column justify-content-center align-items-center ">
									<div class="sp">1</div>
								</div>
							</div>
							<div class="col-md-4 col-4 m-0 p-0">
								<div
									class="digit d-flex flex-column justify-content-center align-items-center">
									<div class="sp">2</div>
									<div class="sub">ABC</div>
								</div>
							</div>
							<div class="col-md-4 col-4 m-0 p-0">
								<div
									class="digit d-flex flex-column justify-content-center align-items-center">
									<div class="sp">3</div>
									<div class="sub">DEF</div>
								</div>
							</div>
							<div class="col-md-4 col-4 m-0 p-0">
								<div
									class="digit d-flex flex-column justify-content-center align-items-center">
									<div class="sp">4</div>
									<div class="sub">GHI</div>
								</div>
							</div>
							<div class="col-md-4 col-4 m-0 p-0">
								<div
									class="digit d-flex flex-column justify-content-center align-items-center">
									<div class="sp">5</div>
									<div class="sub">JKL</div>
								</div>
							</div>
							<div class="col-md-4 col-4 m-0 p-0">
								<div
									class="digit d-flex flex-column justify-content-center align-items-center">
									<div class="sp">6</div>
									<div class="sub">MNO</div>
								</div>
							</div>
							<div class="col-md-4 col-4 m-0 p-0">
								<div
									class="digit d-flex flex-column justify-content-center align-items-center">
									<div class="sp">7</div>
									<div class="sub">PQRS</div>
								</div>
							</div>
							<div class="col-md-4 col-4 m-0 p-0">
								<div
									class="digit d-flex flex-column justify-content-center align-items-center">
									<div class="sp">8</div>
									<div class="sub">TUV</div>
								</div>
							</div>
							<div class="col-md-4 col-4 m-0 p-0">
								<div
									class="digit d-flex flex-column justify-content-center align-items-center">
									<div class="sp">9</div>
									<div class="sub">WXYZ</div>
								</div>
							</div>
							<div class="col-md-4 col-4 m-0 p-0">
								<div
									class="digit d-flex flex-column justify-content-center align-items-center">
									<div class="fa fa-asterisk AstHash"></div>
								</div>
							</div>
							<div class="col-md-4 col-4 m-0 p-0">
								<div
									class="digit d-flex flex-column justify-content-center align-items-center">
									<div class="sp">0</div>
									<div class="subplus fa fa-plus"></div>
								</div>
							</div>
							<div class="col-md-4 col-4 m-0 p-0">
								<div
									class="digit d-flex flex-column justify-content-center align-items-center">
									<div class="fa fa-hashtag AstHash"></div>
								</div>
							</div>
							<div class="col-md-12 col-12">
								<div
									class="digit mx-auto d-flex flex-column justify-content-center align-items-center">
									<div class="button rowShadow rounded-circle rounded-circle-num">
										<i
											class="fa fa-phone phone mt-1 d-flex flex-column justify-content-center align-items-center"
											aria-hidden="true"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- =======================================RECENT TAB======================================= -->
					<div class="tab-pane fade" id="recent" role="tabpanel"
						aria-labelledby="recent-tab">
						<div class="row pb-3">
							<div class="col-md-12 background-color border p-0">
								<div class="input-group d-flex align-items-center">
									<input
										class="form-control removeShadow border-0 calendar-font px-4 m-0 background-color"
										placeholder="Calendar">
									<div class="input-group-append">
										<button class="btn p-0">
											<i class="fa fa-calendar-alt px-2"></i>
										</button>
									</div>
								</div>
							</div>
						</div>
						<div class="row py-3 pr-3 dashedBorder">
							<div class="col-md-11 col-11  p-0">
								<div class="outgoingCall fontRecentNum">
									+91 989 898 8789
									<p class="fontRecentTime p-0 m-0">05:10 Mins</p>
								</div>
							</div>
							<div class="col-md-1 col-1 p-0 d-flex align-items-center">
								<button class="btn">
									<i class="fa fa-volume-control-phone"></i>
								</button>
							</div>
						</div>
						<div class="row py-3 pr-3 dashedBorder">
							<div class="col-md-11 col-11  p-0">
								<div class="outgoingCall fontRecentNum">
									ACME Corporation Inc.
									<p class="fontRecentTime p-0 m-0">Not responded</p>
								</div>
							</div>
							<div class="col-md-1 col-1 p-0 d-flex align-items-center">
								<button class="btn">
									<i class="fa fa-volume-control-phone"></i>
								</button>
							</div>
						</div>
						<div class="row py-3 pr-3 dashedBorder">
							<div class="col-md-11 col-11 p-0">
								<div class="outgoingCall fontRecentNum">
									+91 989 898 8789
									<p class="fontRecentTime p-0 m-0">Not responded</p>
								</div>
							</div>
							<div class="col-md-1 col-1 p-0 d-flex align-items-center">
								<button class="btn">
									<i class="fa fa-volume-control-phone"></i>
								</button>
							</div>
						</div>
						<div class="row py-3 pr-3 dashedBorder">
							<div class="col-md-11 col-11  p-0">
								<div class="outgoingCall fontRecentNum">
									+91 989 898 8789
									<p class="fontRecentTime p-0 m-0">07:10 Mins</p>
								</div>
							</div>
							<div class="col-md-1 col-1 p-0 d-flex align-items-center">
								<button class="btn">
									<i class="fa fa-volume-control-phone"></i>
								</button>
							</div>
						</div>
						<div class="row py-3 pr-3 dashedBorder">
							<div class="col-md-11 col-11  p-0">
								<div class="outgoingCall fontRecentNum">
									+91 989 898 8789
									<p class="fontRecentTime p-0 m-0">05:10 Mins</p>
								</div>
							</div>
							<div class="col-md-1 col-1 p-0 d-flex align-items-center">
								<button class="btn">
									<i class="fa fa-volume-control-phone"></i>
								</button>
							</div>
						</div>
					</div>

					<!-- =======================================LEADS TAB======================================= -->
					<div class="tab-pane fade" id="leads" role="tabpanel"
						aria-labelledby="leads-tab">
						<div class="row pb-3">
							<div class="col-md-12 background-color border p-0">
								<div class="input-group d-flex align-items-center">
									<input
										class="form-control removeShadow border-0 calendar-font px-4 m-0 background-color"
										placeholder="Search">
									<div class="input-group-append">
										<button class="btn p-0">
											<i class="fa fa-search px-2"></i>
										</button>
									</div>
								</div>
							</div>
						</div>
						<div class="row py-3 pr-3 dashedBorder">
							<div class="col-md-11 col-11  p-0">
								<div class="outgoingCall fontRecentNum">
									Global Corporation Inc.
									<p class="fontRecentTime p-0 m-0">+91 989 898 8789</p>
								</div>
							</div>
							<div class="col-md-1 col-1 p-0 d-flex align-items-center">
								<button class="btn">
									<i class="fa fa-phone"></i>
								</button>
							</div>
						</div>
						<div class="row py-3 pr-3 dashedBorder">
							<div class="col-md-11 col-11  p-0">
								<div class="outgoingCall fontRecentNum">
									ACME Corporation Inc.
									<p class="fontRecentTime p-0 m-0">+91 989 898 8789</p>
								</div>
							</div>
							<div class="col-md-1 col-1 p-0 d-flex align-items-center">
								<button class="btn">
									<i class="fa fa-phone"></i>
								</button>
							</div>
						</div>
						<div class="row py-3 pr-3 dashedBorder">
							<div class="col-md-11 col-11  p-0">
								<div class="outgoingCall fontRecentNum">
									TEK System Pvt. Ltd.
									<p class="fontRecentTime p-0 m-0">+91 989 898 8789</p>
								</div>
							</div>
							<div class="col-md-1 col-1 p-0 d-flex align-items-center">
								<button class="btn">
									<i class="fa fa-phone"></i>
								</button>
							</div>
						</div>
						<div class="row py-3 pr-3 dashedBorder">
							<div class="col-md-11 col-11  p-0">
								<div class="outgoingCall fontRecentNum">
									Infotech System Ltd.
									<p class="fontRecentTime p-0 m-0">07:10 Mins</p>
								</div>
							</div>
							<div class="col-md-1 col-1 p-0 d-flex align-items-center">
								<button class="btn">
									<i class="fa fa-phone"></i>
								</button>
							</div>
						</div>
						<div class="row py-3 pr-3 dashedBorder">
							<div class="col-md-11 col-11  p-0">
								<div class="outgoingCall fontRecentNum">
									Siskotech Ficto Ltd.
									<p class="fontRecentTime p-0 m-0">+91 989 898 8789</p>
								</div>
							</div>
							<div class="col-md-1 col-1 p-0 d-flex align-items-center">
								<button class="btn">
									<i class="fa fa-phone"></i>
								</button>
							</div>
						</div>
						<div class="row py-3 pr-3 dashedBorder">
							<div class="col-md-11 col-11  p-0">
								<div class="outgoingCall fontRecentNum">
									Umbrella Corporation Inc.
									<p class="fontRecentTime p-0 m-0">+91 989 898 8789</p>
								</div>
							</div>
							<div class="col-md-1 col-1 p-0 d-flex align-items-center">
								<button class="btn">
									<i class="fa fa-phone"></i>
								</button>
							</div>
						</div>
						<div class="row py-3 pr-3 dashedBorder">
							<div class="col-md-11 col-11  p-0">
								<div class="outgoingCall fontRecentNum">
									Vehement Capital Partners
									<p class="fontRecentTime p-0 m-0">+91 989 898 8789</p>
								</div>
							</div>
							<div class="col-md-1 col-1 p-0 d-flex align-items-center">
								<button class="btn">
									<i class="fa fa-phone"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>



			<div class="col-md-9 imgShadow">
				<div
					class="imageMargin marginBottom d-flex flex-column justify-content-center align-items-center">
					<img alt="" src="<%=baseURL%>assets/images/call_screen/call.png">
					<h5>Start the process</h5>
					<p class="text-color">lorem lopsum is simply dummy text of the
						printing and typesetting industry.</p>
				</div>
			</div>
		</div>
	</div>





	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>


	<script type="text/javascript">
		/* The below code is to remove number one by one on clicking backspace button. */
		function del() {
			var num = document.getElementById('num').value;
			num = num.substr(0, num.length - 1);
			document.getElementById('num').value = num;
		}
		function isValid(a) {
			if (!(/^[0-9]+$/.test(a.value))) {
				a.focus();
				console.clear();
				console.log("Please enter number");
			}
		}

		/* Below code is to enter only numbers in input group and limit to 14 */
		function numberOnly(id) {
			var element = document.getElementById(id);
			var regex = /[^0-9]/gi;
			element.value = element.value.replace(regex, "");
		}
	</script>
</body>
</html>
