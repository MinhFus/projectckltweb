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

@WebServlet("/category")
public class CategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public CategoryController() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String cateId = request.getParameter("cid");
		
		ProductDAO productDAO = new ProductDAO();
		List<Product> listProductID = productDAO.getProductByCIDDAO(cateId);
		List<Category> listCategories = productDAO.getCatogoryDAO();
		
		request.setAttribute("ListP", listProductID);
		request.setAttribute("ListCategories", listCategories);
		request.getRequestDispatcher("product.jsp").forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
