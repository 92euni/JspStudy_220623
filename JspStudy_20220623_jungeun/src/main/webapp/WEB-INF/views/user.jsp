<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%--
	String name = (String) request.getAttribute("name");
--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>사용자 정보</h1>
	<label>이름 :</label>
	<%-- <input type="text" value ="<%= (String) request.getAttribute("name") %>">--%>
	<input type="text" value ="${name}">
	<%--${} -> EL표현식으로 쓰는 이유? get, set, 다운캐스팅 필요 없다 / getattribute랑 같다--%>
	
	<%-- 선언되지 않는 객체  ex) request , response : JSP내장 객체 --%>
	<%--M : Model (값, 데이터)
		V : View(JSP)
		C : Controller(Servlet)
		MVC패턴 : 컨트롤러가 모델이랑 뷰를 합쳐춘다--%>
</body>
</html>

<%--

선언문 <%! %> - 자바 변수나 메소드를 정의하는 데 사용
스크립틀릿  <% %> - 자바 로직 코드를 작성하는 데 사용
표현문 <%= %> - 변수, 계산식, 메소드 호출 결과를 문자열 형태로 출력하는 데 사용

지시자 : <%@ %> 
주석 : <%-- --%>
