package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProductDAO;
import model.User;

@WebServlet("/addadmin")
public class AdminControllerAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public AdminControllerAdd() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
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
		response.sendRedirect("admin");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
