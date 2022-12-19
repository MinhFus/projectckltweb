package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import model.User;

@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public LoginController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String userName = request.getParameter("user");
		String password = request.getParameter("pass");
		
		UserDAO userDao = new UserDAO();
		User u = userDao.login(userName, password);
		
		if (u == null) {
			request.setAttribute("mess", "Wrong user or password");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			return;
		} else {		
			HttpSession session = request.getSession();
			session.setAttribute("acc", u);		
			session.setMaxInactiveInterval(100);
			request.setAttribute("user", userName);
			response.sendRedirect("home");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
