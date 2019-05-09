/*===========================
 * Test005.java
 * - Servlet 실습
 * ===========================
 */

package com.text;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test005 extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// get 방식 요청에 대해 호출해 실행하는 메소드
		doGetPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// post 방식 요청에 대해 호출해 실행하는 메소드
		doGetPost(request, response);
	}

	protected void doGetPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		// get 방식 요청에 대해 호출해 실행하는 메소드
		// post 방식 요청에 대해 호출해 실행하는 메소드

		// 한글깨짐 방지처리
		request.setCharacterEncoding("UTF-8");

		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");

		response.setContentType("text/html; charset=UTF-8");

		String str = "아이디 : " + userId + ", 패스워드 : " + userPwd;

		PrintWriter out = response.getWriter();

		out.print("<html>");
		out.print("<head>");
		out.print("<title>");
		out.print("Test005.java");
		out.print("</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<div>");
		out.print("<h1>");
		out.print("서블릿 관련 실습");
		out.print("</h1>");
		out.print("<hr>");
		out.print("</div>");
		out.print("<div>");
		out.print("<h2>");
		out.print("httpServlet 클래스를 활용한 서블릿 테스트");
		out.print("</h2>");
		out.print("<p>" + str + "</p>");
		out.print("<p>" + "method : " + request.getMethod() + "</p>");
		out.print("<p>");
		out.print("클라이언트 ip adress" + request.getRemoteAddr());
		out.print("</p>");
		out.print("<p>" + "uri : " + request.getRequestURI() + "</p>");
		out.print("</div>");
		out.print("</body>");
		out.print("</html>");

	}

}
