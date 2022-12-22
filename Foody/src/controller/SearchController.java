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

@WebServlet("/search")
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String txtSearch = request.getParameter("txt");
		ProductDAO productDAO = new ProductDAO();
		List<Product> list = productDAO.getProductByNameDAO(txtSearch);
		List<Category> listCategories = productDAO.getCatogoryDAO();

		request.setAttribute("ListCategories", listCategories);
		request.setAttribute("ListP", list);
		request.setAttribute("txts", txtSearch);
		request.getRequestDispatcher("product.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}