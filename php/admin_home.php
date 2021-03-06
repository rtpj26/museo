<!DOCTYPE html>
<?php include_once "control/authenticate.php"; ?>
<html>
	<head>
		<title>Museo De La Salle</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="../css/style.css">
		<script src="../js/jquery.js"></script>
		<script src="../js/bootstrap.min.js"></script>
		<script src="../js/searchbar.js"></script>
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
						<li><a class="navbar-brand" href="admin_home.php"><img class="brand_img" src="../img/logo.png" height="50px" /></a></li>
						<li class="active"><a href="admin_home.php">Dashboard</a></li>
						<li class="active"><a href="../index.php">Exhibits and Artworks</a></li>
						<li><a href="control/logout.php">Logout</a></li>
					</ul>
				</div>
			</div>
			<!--Main Content-->
			<div>
			<ul class="page-content main_content">
				<li>
					<!--Search Bar-->
				</li>
				<li class="topContent">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<strong>Featured Exhibit: </strong>None
						</div>
						<div class="col-md-2"></div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<div class="featureExhibitBox"></div>
						</div>
						<div class="col-md-2"></div>
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