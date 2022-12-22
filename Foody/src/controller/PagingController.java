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

@WebServlet("/pagingList")
public class PagingController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String indexPage = request.getParameter("index");
		if (indexPage == null) {
			indexPage = "0";
		}
		int index = Integer.parseInt(indexPage);

		ProductDAO productDAO = new ProductDAO();
		List<Product> p = productDAO.pagingProduct(index);

		List<Category> listCategories = productDAO.getCatogoryDAO();

		request.setAttribute("ListP", p);
		request.setAttribute("ListCategories", listCategories);
		request.getRequestDispatcher("product").forward(request, response);

		// int count = productDAO.getNumber();
		// int pageSize = 9;
		// int endPage = count / pageSize;
		// if(count%9 != 0) {
		// endPage++;
		// }
		// request.setAttribute("endP", endPage);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}