<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Daily Shop | Account Page</title>

<link href="css/font-awesome.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/jquery.simpleLens.css">
<link rel="stylesheet" type="text/css" href="css/slick.css">
<link rel="stylesheet" type="text/css" href="css/nouislider.css">
<link id="switcher" href="css/theme-color/default-theme.css"
	rel="stylesheet">
<link href="css/sequence-theme.modern-slide-in.css" rel="stylesheet"
	media="all">
<link href="css/style.css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Raleway'
	rel='stylesheet' type='text/css'>

</head>
<body>

	<div id="wpf-loader-two">
		<div class="wpf-loader-two-inner">
			<span>Loading</span>
		</div>
	</div>
	
		<section id="aa-myaccount">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="aa-myaccount-area">
							<div class="row">
								<div class="col-md-6">
									<div class="aa-myaccount-login">
										<h4>Login</h4>
										
										<form action="login" class="aa-login-form" method="post">
										
											<label for="name">Username or Email address<span>*</span></label>
											<input name="user" type="text" placeholder="Username or email"> 
											<label for="password">Password<span>*</span></label> 
											<input  name="pass" type="password" placeholder="Password">
											<h5 class="text-danger">${mess}</h5>
											<button type="submit" class="aa-browse-btn">Login</button>
											<label class="rememberme" for="rememberme">
											<input type="checkbox" id="rememberme"> Remember me </label>
											<p class="aa-lost-password">
												<a href="">Lost your password?</a> 
												<a href="register.jsp">Register now</a>
											</p>
										</form>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</section>





 <jsp:include page="css/page/footer.jsp"></jsp:include>
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="js/bootstrap.js"></script>
		<script type="text/javascript" src="js/jquery.smartmenus.js"></script>
		<script type="text/javascript" src="js/jquery.smartmenus.bootstrap.js"></script>
		<script src="js/sequence.js"></script>
		<script src="js/sequence-theme.modern-slide-in.js"></script>
		<script type="text/javascript" src="js/jquery.simpleGallery.js"></script>
		<script type="text/javascript" src="js/jquery.simpleLens.js"></script>
		<script type="text/javascript" src="js/slick.js"></script>
		<script type="text/javascript" src="js/nouislider.js"></script>
		<script src="js/custom.js"></script>
</body>
</html>