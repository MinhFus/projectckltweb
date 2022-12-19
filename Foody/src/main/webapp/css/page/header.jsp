<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
    <fmt:setLocale value="${sessionScope.langName}" />
	<fmt:setBundle basename="i18n.lang"/>
<body>
	<header id="aa-header">
		<div class="aa-header-top">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="aa-header-top-area">
							<div class="aa-header-top-left">
								<div class="aa-language">
									<div class="dropdown">
										<a class="btn dropdown-toggle" href="?lang=en_US" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"> 
										<img src="img/flag/english.jpg" alt="english flag"> <span class="caret"></span>
										</a>
										<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
											<li><a href="?lang=vi_VN"><img src="img/flag/french.jpg" alt=""><fmt:message>menu.vn</fmt:message> </a></li>																													
											<li><a href="?lang=en_US"><img src="img/flag/french.jpg" alt=""><fmt:message>menu.en</fmt:message></a></li>											
										</ul>
									</div>
								</div>
								<div class="aa-currency">
									<div class="dropdown">
										<a class="btn dropdown-toggle" href="#" type="button"
											id="dropdownMenu1" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="true"> <i
											class="fa fa-usd"></i>USD <span class="caret"></span>
										</a>
										<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
											<li><a href="#"><i class="fa fa-euro"></i>EURO</a></li>
											<li><a href="#"><i class="fa fa-pound"></i>POUND</a></li>
										</ul>
									</div>
								</div>
								<div class="cellphone hidden-xs">
									<p>
										<span class="fa fa-phone"></span>00-49-351-248
									</p>
								</div>
							</div>

							<div class="aa-header-top-right">
								<ul class="aa-head-top-nav-right">
									
									<c:if test="${sessionScope.acc.admin == 1}">
										<li><a href="admin"><fmt:message>menu.admin</fmt:message></a></li>
									</c:if>
									<c:if test="${sessionScope.acc.sellIs == 1}">
										<li><a href="manager"><fmt:message>menu.manager</fmt:message></a></li>
									</c:if>									
									<li><a href="checkout.jsp">Checkout</a></li>
									<c:if test="${sessionScope.acc != null}">
										<li><a href="logout"><fmt:message>menu.logout</fmt:message></a></li>
										<li><a href="">Hello ${sessionScope.acc.username}</a></li>
									</c:if>
									<c:if test="${sessionScope.acc == null}">
										<li><a href="login.jsp"><fmt:message>menu.login</fmt:message></a></li>
									</c:if>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="aa-header-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="aa-header-bottom-area">
							<div class="aa-logo">
								<a href="home"> <span class="fa fa-shopping-cart"></span>
									<p>
										Foody<strong>Web</strong> <span>Your Eating Forever</span>
									</p>
								</a>
							</div>
							<div class="aa-cartbox">
								<a class="aa-cart-link" href="cart.jsp"> <span
									class="fa fa-shopping-basket"></span> <span
									class="aa-cart-title">FOODY CART</span> <span
									class="aa-cart-notify"></span>
								</a>
								<div class="aa-cartbox-summary">

									<a class="aa-cartbox-checkout aa-primary-btn"
										href="">Checkout</a>
								</div>
							</div>
							
							<div class="aa-search-box">
								<form action="search" method="post">
									<input value="${txts}" type="text" name="txt" id="" placeholder="Search here ex. 'bun bo' ">
									<button type="submit">
										<span class="fa fa-search"></span>
									</button>
								</form>
							</div>
							

						</div>
					</div>
				</div>
			</div>
		</div>

	</header>
</body>
</html>