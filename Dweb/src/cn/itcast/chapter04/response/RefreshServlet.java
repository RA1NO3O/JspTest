package cn.itcast.chapter04.response;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class RefreshServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 7584338519126879904L;
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException , IOException{
		response.setHeader("refresh", "3");
		response.getWriter().println(new java.util.Date());
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException , IOException{
		doGet(request,response);
	}
}
