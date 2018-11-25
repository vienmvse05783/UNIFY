<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico">

<!-- Web Fonts -->
<link rel='stylesheet' type='text/css'
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

<!-- CSS Global Compulsory -->
<link rel="stylesheet"
	href="http://localhost:8080/Shop/static/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://localhost:8080/Shop/static/css/shop.style.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet"
	href="http://localhost:8080/Shop/static/css/headers/header-v5.css">
<link rel="stylesheet"
	href="http://localhost:8080/Shop/static/css/footers/footer-v4.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet"
	href="http://localhost:8080/Shop/static/plugins/animate.css">
<link rel="stylesheet"
	href="http://localhost:8080/Shop/static/plugins/line-icons/line-icons.css">
<link rel="stylesheet"
	href="http://localhost:8080/Shop/static/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="http://localhost:8080/Shop/static/plugins/scrollbar/css/jquery.mCustomScrollbar.css">
<!-- <link rel="stylesheet" href="http://localhost:8080/Shop/static/plugins/sky-forms-pro/skyforms/css/sky-forms.css"> -->
<!-- <link rel="stylesheet" href="http://localhost:8080/Shop/static/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css"> -->

<!-- CSS Page Styles -->
<link rel="stylesheet"
	href="http://localhost:8080/Shop/static/css/pages/log-reg-v3.css">

<!-- Style Switcher -->
<link rel="stylesheet"
	href="http://localhost:8080/Shop/static/css/plugins/style-switcher.css">

<!-- CSS Theme -->
<link rel="stylesheet"
	href="http://localhost:8080/Shop/static/css/theme-colors/default.css"
	id="style_color">

<!-- CSS Customization -->
<link rel="stylesheet"
	href="http://localhost:8080/Shop/static/css/custom.css">
</head>
<body>
<body class="header-fixed">
	<div class="wrapper">
		<!--=== Header v5 ===-->
		<div class="header-v5 header-static">
			<!-- Topbar v3 -->
			<jsp:include page="topbar.jsp"></jsp:include>
			<!-- End Topbar v3 -->

			<!-- Navbar -->
			<jsp:include page="navbar.jsp"></jsp:include>
			<!-- End Navbar -->
		</div>
		<!--=== End Header v5 ===-->

		<!--=== Breadcrumbs v4 ===-->
		<div class="breadcrumbs-v4">
			<div class="container">
				<span class="page-name">Log In</span>
				<h1>
					Maecenas <span class="shop-green">enim</span> sapien
				</h1>
				<ul class="breadcrumb-v4-in">
					<li><a href="../">Home</a></li>
					<li><a href="">Product</a></li>
					<li class="active">Log In</li>
				</ul>
			</div>
			<!--/end container-->
		</div>
		<!--=== End Breadcrumbs v4 ===-->

		<!--=== Registre ===-->
		<div class="log-reg-v3 content-md margin-bottom-30">
			<div class="container">
				<div class="row">
					<div class="col-md-7 md-margin-bottom-50">
						<h2 class="welcome-title">Welcome to Unify</h2>
						<p>Suspendisse et tincidunt ipsum, et dignissim urna.
							Vestibulum nisl tortor, gravida at magna et, suscipit vehicula
							massa.</p>
						<br>
						<div class="row margin-bottom-50">
							<div class="col-sm-4 md-margin-bottom-20">
								<div class="site-statistics">
									<span>20,039</span> <small>Products</small>
								</div>
							</div>
							<div class="col-sm-4 md-margin-bottom-20">
								<div class="site-statistics">
									<span>54,283</span> <small>Reviews</small>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="site-statistics">
									<span>376k</span> <small>Sale</small>
								</div>
							</div>
						</div>
						<div class="members-number">
							<h3>
								Join more than <span class="shop-green">13,000</span> members
								worldwide
							</h3>
							<img class="img-responsive"
								src="http://localhost:8080/Shop/static/img/map.png" alt="">
						</div>
					</div>

					<div class="col-md-5">
						<form id="sky-form4" class="log-reg-block sky-form" action="register" method="post">
							<h2>Create New Account</h2>

							<div class="login-input reg-input">
								<div class="row">
									<div class="col-sm-6">
										<section>
											<label class="input"> <input type="text"
												name="firstname" placeholder="First name"
												class="form-control">
											</label>
										</section>
									</div>
									<div class="col-sm-6">
										<section>
											<label class="input"> <input type="text"
												name="lastname" placeholder="Last name" class="form-control">
											</label>
										</section>
									</div>
								</div>
								<label class="select margin-bottom-15"> <select
									name="gender" class="form-control">
										<option value="0" selected disabled>Gender</option>
										<option value="1">Male</option>
										<option value="2">Female</option>
										<option value="3">Other</option>
								</select>
								</label>
								<div class="row margin-bottom-10">
									<div class="col-xs-6">
										<label class="select"> <select name="month"
											class="form-control">
												<option disabled="" selected="" value="0">Month</option>
												<option>January</option>
												<option>February</option>
												<option>March</option>
												<option>April</option>
												<option>May</option>
												<option>June</option>
												<option>July</option>
												<option>August</option>
												<option>September</option>
												<option>October</option>
												<option>November</option>
												<option>December</option>
										</select>
										</label>
									</div>
									<div class="col-xs-3">
										<input type="text" name="day" placeholder="Day"
											class="form-control">
									</div>
									<div class="col-xs-3">
										<input type="text" name="year" placeholder="Year"
											class="form-control">
									</div>
								</div>
								<section>
									<label class="input"> <input type="text"
										name="username" placeholder="Username" class="form-control">
									</label>
								</section>
								<section>
									<label class="input"> <input type="email" name="email"
										placeholder="Email address" class="form-control">
									</label>
								</section>
								<section>
									<label class="input"> <input type="password"
										name="password" placeholder="Password" id="password"
										class="form-control">
									</label>
								</section>
								<section>
									<label class="input"> <input type="password"
										name="passwordConfirm" placeholder="Confirm password"
										class="form-control">
									</label>
								</section>
							</div>

							<label class="checkbox margin-bottom-10"> <input
								type="checkbox" name="checkbox" /> <i></i> Subscribe to our
								newsletter to get the latest offers
							</label> <label class="checkbox margin-bottom-20"> <input
								type="checkbox" name="checkbox" /> <i></i> I have read agreed
								with the <a href="#">terms &amp; conditions</a>
							</label>
							<button class="btn-u btn-u-sea-shop btn-block margin-bottom-20"
								type="submit">Create Account</button>
						</form>

						<div class="margin-bottom-20"></div>
						<p class="text-center">
							Already you have an account? <a href="shop-ui-login.html">Sign
								In</a>
						</p>
					</div>
				</div>
				<!--/end row-->
			</div>
			<!--/end container-->
		</div>
		<!--=== End Registre ===-->

		<!--=== Shop Suvbscribe ===-->
		<div class="shop-subscribe">
			<div class="container">
				<div class="row">
					<div class="col-md-8 md-margin-bottom-20">
						<h2>
							subscribe to our weekly <strong>newsletter</strong>
						</h2>
					</div>
					<div class="col-md-4">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Email your email..."> <span
								class="input-group-btn">
								<button class="btn" type="button">
									<i class="fa fa-envelope-o"></i>
								</button>
							</span>
						</div>
					</div>
				</div>
			</div>
			<!--/end container-->
		</div>
		<!--=== End Shop Suvbscribe ===-->

		<!--=== Footer v4 ===-->
<jsp:include page="footer.jsp"></jsp:include>
		<!--=== End Footer v4 ===-->
	</div>
	<!--/wrapper-->

	<!-- JS Global Compulsory -->
	<script
		src="http://localhost:8080/Shop/static/plugins/jquery/jquery.min.js"></script>
	<script
		src="http://localhost:8080/Shop/static/plugins/jquery/jquery-migrate.min.js"></script>
	<script
		src="http://localhost:8080/Shop/static/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script src="http://localhost:8080/Shop/static/plugins/back-to-top.js"></script>
	<script src="http://localhost:8080/Shop/static/plugins/smoothScroll.js"></script>
	<script
		src="http://localhost:8080/Shop/static/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>
	<script
		src="http://localhost:8080/Shop/static/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<!-- JS Customization -->
	<script src="http://localhost:8080/Shop/static/js/custom.js"></script>
	<!-- JS Page Level -->
	<script src="http://localhost:8080/Shop/static/js/shop.app.js"></script>
	<script
		src="http://localhost:8080/Shop/static/js/forms/page_registration.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			App.initScrollBar();
			Registration.initRegistration();
		});
	</script>

	<!--[if lt IE 9]>
    <script src="http://localhost:8080/Shop/static/plugins/respond.js"></script>
    <script src="http://localhost:8080/Shop/static/plugins/html5shiv.js"></script>
    <script src="http://localhost:8080/Shop/static/js/plugins/placeholder-IE-fixes.js"></script>    
    <script src="http://localhost:8080/Shop/static/plugins/sky-forms-pro/skyforms/js/sky-forms-ie8.js"></script>
<![endif]-->
	<!--[if lt IE 10]>
    <script src="http://localhost:8080/Shop/static/plugins/sky-forms-pro/skyforms/js/jquery.placeholder.min.js"></script>
<![endif]-->

</body>

</body>
</html>