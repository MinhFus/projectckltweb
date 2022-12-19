package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;


@WebServlet("/deleteAdmin")
public class AdminControllerDellete extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public AdminControllerDellete() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pid = request.getParameter("pid");
		ProductDAO productDAO = new ProductDAO();
		
		productDAO.deleteProduct(pid);
		response.sendRedirect("admin");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
