package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProductDAO;
import dao.UserDAO;
import model.Category;
import model.Product;
import model.User;

@WebServlet("/manager")
public class ManagerController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("acc");
		int id = u.getSellIs();
		ProductDAO productDAO = new ProductDAO();
		List<Product> listSell = productDAO.getProductBySellDAO(id);
		List<Category> listCategories = productDAO.getCatogoryDAO();

		request.setAttribute("ListProduct", listSell);
		request.setAttribute("ListCategories", listCategories);
		request.getRequestDispatcher("manager.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}