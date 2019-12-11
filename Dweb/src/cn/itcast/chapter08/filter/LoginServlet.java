package cn.itcast.chapter08.filter;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;
import cn.itcast.chapter08.entity.User;
public class LoginServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = -2102181319487967425L;
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException , IOException{
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if("itcast".contentEquals(username)&&"123456".equals(password)) {
			User user = new User();
			user.setUsername(username);
			user.setPassword(password);
			request.getSession().setAttribute("user", user);
			String autoLogin = request.getParameter("autologin");
			if(autoLogin!=null) {
				Cookie cookie = new Cookie("autologin" , username +"-" + password);
				cookie.setMaxAge(Integer.parseInt(autoLogin));
				cookie.setPath(request.getContextPath());
				response.addCookie(cookie);
			}
			response.sendRedirect(request.getContextPath()+"/index.jsp");
		}else {
			request.setAttribute("errorMsg" , "用户名或密码错误");
			request.getRequestDispatcher("/login.jsp").forward(request, response);			
		}
	}
	public void doPost(HttpServletRequest request , HttpServletResponse response) throws ServletException , IOException{
		doGet(request , response);
	}
}
