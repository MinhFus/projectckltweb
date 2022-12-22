package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import domain.Email;
import domain.EmailUtils;
import model.User;

@WebServlet("/forgotpass")
public class ForgotPassController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String emailAddress = request.getParameter("email");
			String user = request.getParameter("user");

			UserDAO userDao = new UserDAO();
			User u = userDao.findByUserAndEmail(user);

			if (u == null) {
				request.setAttribute("mess", "Username or email are incorrect");
			} else {
				Email email = new Email();
				email.setFrom("benianhthu3@gmail.com");
				email.setFromPassword("yourpassword");
				email.setTo(emailAddress);
				email.setSubject("Forgot Password Function");
				StringBuilder sb = new StringBuilder();
				sb.append("Dear ").append(user).append("<br>");
				sb.append("You are usend the forgot password function. <br> ");
				sb.append("Your password is: <b> ").append(u.getPassword()).append("</b>");

				email.setContent(sb.toString());
				EmailUtils.send(email);

				request.setAttribute("mess", "Email sent to the email address");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("forgotpass.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}