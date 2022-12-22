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

@WebServlet("/changepass")
public class ChangePassController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("acc");

		if (u == null) {
			request.setAttribute("mess", "Login to cart");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		} else {
			request.setAttribute("user", u.getUsername());
			int id = u.getId();

			String oldPass = request.getParameter("oldpass");
			String newPass = request.getParameter("newpass");
			String re_newPass = request.getParameter("renewpass");

			UserDAO userDao = new UserDAO();

			if (!oldPass.equals(u.getPassword())) {
				request.setAttribute("mess", "Old password is wrong");
			} else if (!re_newPass.equals(newPass)) {
				request.setAttribute("mess", "New Password and Re-New Password not same");
			} else {
				// User updatePassUser = new User(u.getId(), userName, newPass,
				// u.getSellIs(), u.getAdmin());
				userDao.editPass(id, newPass);
				request.setAttribute("mess", "Password has been changed");
			}
			request.getRequestDispatcher("changepass.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}