package web.servlet.api;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/api/v1/username")	//api 요청
public class GetUsername extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public void init(ServletConfig config) throws ServletException {
		System.out.println("최초 1회만 실행");
	}


	public void destroy() {
		System.out.println("서비스 객체가 소멸될 때 1회만 실행");
	}


//	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		System.out.println(request.getMethod());
//		System.out.println("서비스 호출");
//	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String t = request.getParameter("test");
		String name = request.getParameter("name");
		System.out.println("Get요청 들어옴");
		System.out.println("Read");
		
		System.out.println("test : " + t);
		
		//MVC패턴 : 컨트롤러가 모델이랑 뷰를 합쳐춘다
		request.setAttribute("name", name);		//key , value값
//		request.getAttribute("name");
		
		//getRequestDispatcher : getter
		//RequestDispatcher 역할? -> 서블릿역할(연결할대상)을 WEB-INF/views/user.jsp을 가지게 됨 , 전달자 역할
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/user.jsp");
		dispatcher.forward(request, response);
		//forword -> 요청에 대한 연결 해서 열여줌 , 페이지를 넘겨줌, requset, response 들고 다시 호출
																		
		
		// [응답타입 - 사용자가 원하는 데이터 응답 가능]
//		response.setContentType("text/html; charset=UTF-8");				-> html형식
//		response.setContentType("application/json; charset=UTF-8");			//응답 json	
		
		//작업꼭하기
//		response.setCharacterEncoding("UTF-8");
//		response.setContentType("text/plain; charset=UTF-8");				//응답 text
//		//----------------------------------------------
//		response.getWriter().print("<html><head></head><body>");
//		response.getWriter().print("<h1>안녕하세요</h1></body></html>");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Post요청 들어옴");
		System.out.println("Create");
	}
	
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Put요청 들어옴");
		System.out.println("Uptate");
	}
	
	
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Delete요청 들어옴");
		System.out.println("Delete");
	}

}


