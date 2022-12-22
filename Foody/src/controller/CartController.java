package controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProductDAO;
import model.Cart;
import model.Product;
import model.ProductCart;
import model.User;

@WebServlet("/cart")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("acc");

		if (u == null) {
			request.setAttribute("mess", "Login to cart");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		} else {
			request.setAttribute("user", u.getUsername());

			ServletContext sc = getServletContext();
			String action = request.getParameter("action");
			if (action == null) {
				action = "cart";
			}

			String url = "/product";

			if (action.equals("shop")) {
				url = "/product";
			} else if (action.equals("cart")) {
				String id = request.getParameter("id");
				String quantityString = request.getParameter("quantity");

				Cart cart = (Cart) session.getAttribute("cart");
				if (cart == null) {
					cart = new Cart();
				}
				int quantity;
				try {
					quantity = Integer.parseInt(quantityString);
					System.out.println(quantity);
					if (quantity < 0) {
						quantity = 1;
					}
				} catch (NumberFormatException nfe) {
					quantity = 1;
				}

				ProductDAO productDao = new ProductDAO();
				Product product = productDao.getProductByIDDAO(id);
				ProductCart lineItem = new ProductCart();
				lineItem.setProduct(product);
				lineItem.setQuantity(quantity);

				if (quantity > 0) {
					lineItem.setQuantity(quantity);
					cart.addItem(lineItem);
					lineItem.setSerial(cart.serial());
					session.setAttribute("quantity", quantity);
					System.out.println(quantity);
				} else if (quantity == 0) {
					cart.removeItem(lineItem);
				}
				session.setAttribute("cart", cart);
				url = "/cart.jsp";
			} else if (action.equals("checkout")) {
				url = "/checkout.jsp";
			}
			sc.getRequestDispatcher(url).forward(request, response);
		}
	}
}