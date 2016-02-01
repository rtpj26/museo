<!DOCTYPE html>
<html>
	<head>
		<title>Museo De La Salle</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="../css/style.css">
		<script src="../js/jquery.js"></script>
		<script src="../js/bootstrap.min.js"></script>
		<script src="js/stt.js"></script>
	</head>
	<body>
		<div class="container">
			<div class="navbar navbar-fixed-top navbar-custom">
				<div class="navbar-header">
					<a class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li><a class="navbar-brand" href="../index.php"><img class="brand_img" src="../img/logo.png" height="50px" /></a></li>
						<li class="active"><a href="../index.php">HOME</a></li>
						<li><a href="about.php">ABOUT US</a></li>
						<li><a href="news.php">EXHIBITS</a></li>
						<li><a href="admin.php">ADMIN LOGIN</a></li>
					</ul>
				</div>
			</div>
			<!--Main Content-->
			<div>
			<ul class="page-content main_content">
				<li class="topContent">
					<div class="text-center">
						<img src="../img/logo.png"/><br><br>
						<form role="form" method="post" action="control/admin_ctrl.php">
							<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4">
									<input type="text" class="form-control input-sm text-center" placeholder="Username" name="login_username"/><br>
									<input type="password" class="form-control input-sm text-center" placeholder="Password" name="login_password"/><br>
									<button type="submit" class="btn btn-primary login_expand">Login</button>
								</div>
								<div class="col-md-4"></div>
							</div>
						</form>
					</div>
				</li>
					
			</ul>
			</div>
			<!--End of main content-->
		</div>
		<a href="#" class="scrollToTop text-center footer_custom">
			<span class="glyphicon glyphicon-menu-up text-center stt_margin_top"></span></a>
	</body>
	
	<!--JQuery scripts-->
	
</html>