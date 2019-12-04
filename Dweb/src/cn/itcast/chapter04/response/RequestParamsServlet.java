package cn.itcast.chapter04.response;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class RequestParamsServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5689770797388259869L;
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException , IOException{
		response.setContentType("text/html;charset=utf-8");
		String name=request.getParameter("username");
		name=new String(name.getBytes("iso8859-1"),"utf-8");
		String password=request.getParameter("password");
		System.out.println("用户名："+name);
		System.out.println("密码："+password);
		String[] hobbies = request.getParameterValues("hobby");
		System.out.println("爱好：");
		for(int i=0;i<hobbies.length;i++) {
			System.out.print(hobbies[i]+",");
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException , IOException{
		doGet(request,response);
	}
}
