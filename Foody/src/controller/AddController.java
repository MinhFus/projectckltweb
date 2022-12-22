package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProductDAO;
import dao.UserDAO;
import model.User;

@WebServlet("/add")
public class AddController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		//Product-------------------
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String price = request.getParameter("price");
		String descript = request.getParameter("descript");
		String time = request.getParameter("time");
		String url = request.getParameter("url");
		String cate = request.getParameter("catogogy");
		
		HttpSession session = request.getSession();
		
		User u = (User) session.getAttribute("acc");
		int sid = u.getSellIs();

		ProductDAO productDAO = new ProductDAO();
		productDAO.insertProduct(name, address, time, price, descript, url, cate, sid);
		
		//User
		String userName = request.getParameter("username");
		String password = request.getParameter("password");

		UserDAO userDAO = new UserDAO();
		userDAO.insertUser(userName, password);

		response.sendRedirect("manager");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}