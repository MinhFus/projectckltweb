<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Foody Web | Thêm Người Dùng</title>

<link href="css/font-awesome.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/jquery.simpleLens.css">
<link rel="stylesheet" type="text/css" href="css/slick.css">
<link rel="stylesheet" type="text/css" href="css/nouislider.css">
<link id="switcher" href="css/theme-color/default-theme.css" rel="stylesheet">
<link href="css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">
<link href="css/style.css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>

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
							<div class="col-md-6">
								<div class="aa-myaccount-register">
									<h4>Edit User</h4>
					<form action="edit" class="aa-login-form" method="post">
						<label for="">ID Người dùng:<span>*</span></label> 
						<input value="${detailUser.id}" name="idUser" type="text" placeholder="ID Người dùng" readonly> 
						<label for="">Tên Người Dùng:<span>*</span></label> 
						<input value="${detailUser.username}" name="username" type="text" placeholder="Tên Sản Phẩm"> 
						<label for="">Mật Khẩu:<span>*</span></label>
						<input value="${detailUser.password}" name="password" type="text" placeholder="Mật Khẩu"> 
						<label for="">Quyền người bán:<span>*</span></label>
						<input value="${detailUser.sellIs}" name="sellIs" type="text" placeholder="Quyền người bán"> 
						<label for="">Quyền quản trị:<span>*</span> </label> 
						<input value="${detailUser.admin}" name="admin" type="text" placeholder="Quyền quản trị"> 
						<button type="submit" class="aa-browse-btn">Thêm người dùng</button>
					</form>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>
	
	
    <jsp:include page="css/page/footer.jsp"></jsp:include>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
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

