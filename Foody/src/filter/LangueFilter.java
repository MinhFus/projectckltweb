package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

@WebFilter("/*")
public class LangueFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest rq = (HttpServletRequest) request;
		rq.setCharacterEncoding("utf-8");
		String lang = request.getParameter("lang");
		if (lang != null) {
			rq.getSession().setAttribute("langName", lang);
		}
		chain.doFilter(request, response);
	}
}