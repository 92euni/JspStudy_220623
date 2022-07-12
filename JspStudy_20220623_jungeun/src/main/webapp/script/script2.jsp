<%@page import = "java.util.ArrayList" %>
<%@page import = "java.util.List" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<%!
	String[] name = new String[5];
	String[] email = new String[5];
	List<String> names = new ArrayList<String>();
	
	String madeName(String name){
		return name + "님";
	}
	String madeEmail(String email){
		return email + "@google.com";
	}
%>
<% 
	names.add("으니");
	names.add("으니");
	names.add("으니");
	names.add("으니");
	name[0] = "으니";
	email[0] = "euni";
	name[1] = "으니1";
	email[1] = "euni1";
	name[2] = "으니2";
	email[2] = "euni2";
	name[3] = "으니3";
	email[3] = "euni3";
	name[4] = "으니4";
	email[4] = "euni4";
	System.out.println(names);
			
		
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 모델2 방식 -> 상단에 자바소스 코드 몰아넣고 안에는 태그만 사용 -->
<!--그 다음 MVC패턴 이다 - 모델 / 뷰/ 컨트롤러가 나온다 
서블릿을 같이 써서 피씽처리 함

jsp파일에는 자바코드 안들어 온다 
자바코드는 클래스파일로 다 뺀다
여기서는 임포트(생성)만 할것-->


	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
			</tr>
		</thead>
		<tbody>
		
		<!-- jstl방식 안쓴다 -->
		<c:forEach var="name1" items="${names}" >
			<tr>
				<td>${name1 }></td>
				<td>${name1 }</td>
				<td>${name1 }</td>
			</tr>
		</c:forEach>
		
		<!--------------- jstl방식 안쓴다 오류남--------------------------
		<c:forEach var = "name" items = "${name}" varStatus="status" >
			<tr>
				<td>${status.index + 1}</td>
				<td>${madeName(name[status.index]) }</td>
				<td>${madeEmail(email[status.index] }</td>
			</tr>
		</c:forEach>
		------------------------------------------------------------------>
		
		</tbody>
	</table>


</body>
</html>