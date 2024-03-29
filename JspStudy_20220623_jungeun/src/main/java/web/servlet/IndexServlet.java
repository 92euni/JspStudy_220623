package web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/*
 * 요청의 종류
 * 1. view(HTML) 요청 -> 무조건 Get요청(주소창) 
 * 2. api(Application Programming Interface) 요청 -> CRUD(post, get, put, delete) :JavaScript(AJAX 동기, 비동기)
 * */


@WebServlet("/index")	//Page 요청 -> servlet한테 요청이 들어간다
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//JSP응답해야한다
//		RequestDispatcher requdDispatcher = request.getRequestDispatcher("WEB-INF/views/index.jsp");
		request.getRequestDispatcher("WEB-INF/views/index.jsp").forward(request, response);
		//서블릿이 받은 요청과 response객체를 그대로 해당 JSP에게 전달해준다
	}

}
