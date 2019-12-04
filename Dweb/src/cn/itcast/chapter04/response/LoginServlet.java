package cn.itcast.chapter04.response;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = -5247361241509603422L;
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException , IOException{
		response.setContentType("text/html;charset=utf-8");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		if(("itcast").equals(username)&&("123").equals(password)) {
			response.sendRedirect("/Dec4th/welcome.html");
		}else {
			response.sendRedirect("/Dec4th/login.html");
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException , IOException{
		doGet(request,response);
	}
}
