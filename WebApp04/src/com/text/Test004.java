/*=========================
 * Test004.java
 * -servlet 실습
 * =========================
 */

// 현재.... 자바의 기본 클래스 Test004
// 이를 Servlet으로 구성하는 방법

// GenericServlet을 상속받는 클래스로 설계 ->Servlet

package com.text;

import java.io.IOException;
import java.io.PrintWriter;

// 상속받는 순간 서블릿
import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Test004 extends GenericServlet
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		
		try
		{
			
			PrintWriter out  = response.getWriter();
			
			out.print("<html>");
			out.print("<head>");
			out.print("<title>");
			out.print("<Test004>");
			out.print("</title>");
			
			out.print("<head>");
			out.print("<body>");
			out.print("<div>");
			out.print("<h1>");
			out.print("서블릿 관련 실습");
			
			out.print("</h1>");
			out.print("<hr>");
			out.print("</div>");
			
			out.print("<div>");
			out.print("<h2>");
			out.print("제너릭서블랫 클래스를 이용한 서블릿 테스트");
			out.print("</h2>");
			out.print("</div>");
			out.print("</body>");
			out.print("</html>");
		
		} catch (Exception e)
		{
			// TODO: handle exception
			System.out.println(e.toString());
		}
	}
	
}
