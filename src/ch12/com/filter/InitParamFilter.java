package ch12.com.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class InitParamFilter implements Filter {

	private FilterConfig filterConfig = null;
	
	@Override
	public void destroy() {
		System.out.println("Filter02 해제");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("filter02 수행");
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		String param1 = filterConfig.getInitParameter("param1");
		String param2 = filterConfig.getInitParameter("param2");
		
		String msg = "";
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		
		if(id.equals(param1) && pw.equals(param2)) {
			msg = "로그인 성공";
		} else {
			msg = "로그인 실패";
		}
		
		writer.println(msg);
		chain.doFilter(request, response);
	}
	

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("Filter02 초기화");
		System.out.println("web.xml 에 설정한 param을 담고 있는 filterConfig를 전역 변수에서 먼저 세팅");
		System.out.println(filterConfig.getInitParameter("param1"));
		System.out.println(filterConfig.getInitParameter("param2"));
		this.filterConfig = filterConfig;
	}

}
