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

@WebServlet("/edit")
public class EditController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

		// Product-----------
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String price = request.getParameter("price");
		String descript = request.getParameter("descript");
		String time = request.getParameter("time");
		String url = request.getParameter("url");
		String cate = request.getParameter("catogogy");

		ProductDAO productDAO = new ProductDAO();
		productDAO.editProduct(name, address, time, price, descript, url, cate, id);

		// User-------------------
		String idUser = request.getParameter("idUser");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String sellIs = request.getParameter("sellIs");
		String admin = request.getParameter("admin");

		UserDAO userDAO = new UserDAO();
		userDAO.editUser(username, password, sellIs, admin, idUser);

		response.sendRedirect("manager");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}
}