package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.OrderDAO;
import dao.UserDAO;
import model.Cart;
import model.Order;
import model.Product;
import model.User;

@WebServlet("/order")
public class OrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("acc");

		// kiem tra dang nhap
		if (u == null) {
			request.setAttribute("mess", "Login to order");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		} else {
			request.setAttribute("user", u.getUsername());

			ServletContext sc = getServletContext();

			Cart cart = (Cart) session.getAttribute("cart");

			// doc cac tham so
			String fullName = request.getParameter("fullName");
			String address = request.getParameter("address");
			String phone = request.getParameter("phone");
			String note = request.getParameter("note");

			String status = "Chờ xác nhận";
	    	double totalAll = cart.totalAll();
	    	String detailOrder = cart.toString();
	    	
	    	System.out.println(totalAll);
	    	System.out.println(cart.toString());
	    	 	
	    	System.out.println(fullName);
	    	System.out.println(address);
	    	System.out.println(phone);
	    	System.out.println(note);
	    	
			OrderDAO orderDAO = new OrderDAO();
			orderDAO.addOrder(status, totalAll, detailOrder, u.getId(), fullName, address, phone, note);
	    
			Order order = orderDAO.getOrderIDDAO(u.getId());
			System.out.println(order);
			session.setAttribute("order", order);
			
			sc.getRequestDispatcher("/order.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}