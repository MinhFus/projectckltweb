<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Daily Shop | Cart Page</title>

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
 	<a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
	<jsp:include page="css/page/header.jsp"></jsp:include>
    <jsp:include page="css/page/menu.jsp"></jsp:include>
    
  

 <!-- Cart view section -->
 <section id="cart-view">

   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="cart-view-area">
           <div class="cart-view-table">
        
               <div class="table-responsive">
                  <table class="table">
                       <thead>
                      <tr>
                        <th></th>
                        <th></th>
                        <th>Product</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>
                      </tr>   
                      </thead>             
                    <tbody>
              		<c:forEach var="item" items="${cart.items}">
                      <tr>
                      	<td>${item.serial}</td>
                        <td>
	                        <form action="" method="post">
		                        <input type="hidden" name="id" value="<c:out value='${item.product.id}'/>">
		                        <input type="hidden" name="quantity" value="0">
    	                    	<input type="submit" value="Remove Item"> 	      
                        	</form>
                        </td>
                        
                        <td><img alt="" src="<c:out value='${item.product.image}'/>"></td>
                        
                        <td><a class="aa-cart-title" href="#"><c:out value='${item.product.name}'/></a></td>
                        
                        <td>${item.product.price}</td>
                        
                        <td>
                         <form action="" method="post">
	                         <input type="hidden" name="id" value="<c:out value='${item.product.id}'/>">
                        	 <input class="aa-cart-quantity" name="quantity" type="text" value="<c:out value='${item.quantity}'/>" id="quantity">
                        	 <input type="submit" value="Update">
                        </form>
                        </td>
                        
                        <td>${item.total}</td>
                       </tr>
  
                    </c:forEach>
                      <tr>
                        <td colspan="6" class="aa-cart-view-bottom">
                 			<form action="" method="post">
	                      		<input type="hidden" name="action" value="shop">
	                            <input class="aa-cart-view-btn" type="submit" value="Continue Shopping">
                          	</form>           
                            <form action="" method="post">
	                          <input type="hidden" name="action" value="checkout">
	                          <input class="aa-cart-view-btn" type="submit" value="Checkout">
                          </form>
                        </td>
                      </tr>          
                      </tbody>
                  </table>
                </div>   
           </div>
         </div>
       </div>
     </div>
   </div>
 </section>

  
  <jsp:include page="css/page/footer.jsp"></jsp:include>   
  <!-- / footer -->
      
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.js"></script>  
    <!-- SmartMenus jQuery plugin -->
    <script type="text/javascript" src="js/jquery.smartmenus.js"></script>
    <!-- SmartMenus jQuery Bootstrap Addon -->
    <script type="text/javascript" src="js/jquery.smartmenus.bootstrap.js"></script>  
    <!-- To Slider JS -->
    <script src="js/sequence.js"></script>
    <script src="js/sequence-theme.modern-slide-in.js"></script>  
    <!-- Product view slider -->
    <script type="text/javascript" src="js/jquery.simpleGallery.js"></script>
    <script type="text/javascript" src="js/jquery.simpleLens.js"></script>
    <!-- slick slider -->
    <script type="text/javascript" src="js/slick.js"></script>
    <!-- Price picker slider -->
    <script type="text/javascript" src="js/nouislider.js"></script>
    <!-- Custom js -->
    <script src="js/custom.js"></script> 

  </body>
</html>