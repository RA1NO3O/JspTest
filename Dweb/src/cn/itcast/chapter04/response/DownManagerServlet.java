package cn.itcast.chapter04.response;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class DownManagerServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 8319361922893187418L;

	public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException , IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String referer = request.getHeader("referer");
		String sitePart = "http://" + request.getServerName();
		
		if(referer != null && referer.startsWith(sitePart)) {
			out.println("dealing download...");
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("/download.html");
			rd.forward(request, response);
		}
	}
}
