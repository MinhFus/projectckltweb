<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
    <fmt:setLocale value="${sessionScope.langName}" />
	<fmt:setBundle basename="i18n.lang"/>
	<section id="menu">
		<div class="container">
			<div class="menu-area">
				<!-- Navbar -->
				<div class="navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="navbar-collapse collapse">
						<!-- Left nav -->
						<ul class="nav navbar-nav">
							<li><a href="home"><fmt:message>menu.home</fmt:message></a></li>
							<li><a href="product"><fmt:message>menu.food</fmt:message></a></li>

							<li><a href="#"><fmt:message>menu.dis</fmt:message><span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">Quận 1</a></li>
									<li><a href="#">Quận 2</a></li>
									<li><a href="#">Quận 3</a></li>
									<li><a href="#">Quận 4</a></li>
									<li><a href="#">Quận 5</a></li>
									<li><a href="#">Quận 6</a></li>
									<li><a href="#">Quận 7</a></li>
									<li><a href="#">Quận 8</a></li>
									<li><a href="#">And more.. <span class="caret"></span></a>
										<ul class="dropdown-menu">
											<li><a href="#">Quận 9</a></li>
											<li><a href="#">Quận 10</a></li>
											<li><a href="#">Quận 12</a></li>
										</ul></li>
								</ul></li>
							<li><a href="#"><fmt:message>menu.menu</fmt:message><span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">Đồ ăn</a></li>
									<li><a href="#">Đồ Uống</a></li>
									<li><a href="#">Đồ Chay</a></li>
									<li><a href="#">Bánh Ngọt</a></li>
									<li><a href="#">Trái Cây</a></li>
									<li><a href="#">And more.. <span class="caret"></span></a>
										<ul class="dropdown-menu">
											<li><a href="#">Trẻ em</a></li>
											<li><a href="#">Người lớn</a></li>
											<li><a href="#">Người già</a></li>
											<li><a href="#">And more.. <span class="caret"></span></a>
										</ul></li>
								</ul></li>
							<li><a href="#"><fmt:message>menu.com</fmt:message><span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">Tích Cực</a></li>
									<li><a href="#">Tiêu Cực</a></li>
								</ul>
							<li><a href="blog-archive.jsp">Blog <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="blog-archive.html">Blog Style 1</a></li>
									<li><a href="blog-archive-2.html">Blog Style 2</a></li>
									<li><a href="blog-single.html">Blog Single</a></li>
								</ul></li>
							<li><a href="contact.jsp"><fmt:message>menu.con</fmt:message></a></li>
							<li><a href="#">Pages <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="product.html">Shop Page</a></li>
									<li><a href="product-detail.html">Shop Single</a></li>
									<li><a href="404.html">404 Page</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>