package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import model.User;

@WebServlet("/register")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		String rePass = request.getParameter("repass");

		if (!rePass.equals(pass)) {
			request.setAttribute("messPass", "password not same!");
			request.getRequestDispatcher("register.jsp").forward(request, response);
		} else {
			UserDAO userDao = new UserDAO();
			User u = userDao.checkUser(user);
			if (u == null) {
				userDao.signUp(user, pass);
				request.getRequestDispatcher("home.jsp").forward(request, response);
			} else {
				request.setAttribute("messUser", "User was exits!");
				request.getRequestDispatcher("register.jsp").forward(request, response);
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}