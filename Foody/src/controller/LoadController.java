package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import model.Category;
import model.Product;

@WebServlet("/load")
public class LoadController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String id = request.getParameter("pid");

		ProductDAO productDAO = new ProductDAO();
		Product p = productDAO.getProductByIDDAO(id);
		List<Category> listCategories = productDAO.getCatogoryDAO();

		request.setAttribute("detail", p);
		request.setAttribute("ListCategories", listCategories);
		request.getRequestDispatcher("editProduct.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}