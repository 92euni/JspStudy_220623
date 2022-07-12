<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 모델1 배열방식 -->

	<%!
		String[] name = new String[5];
		String[] email = new String[5];
		
		String madeName(String name){
			return name + "님";
		}
		String madeEmail(String email){
			return email + "@google.com";
		}
	%>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
			</tr>
		</thead>
		<tbody>
		<% 
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
			
		
		%>
		<%
			for(int i = 0; i < name.length; i++){
				
		%>
			<tr>
					<td><%= i+1 %></td>
					<td><%= madeName(name[i]) %></td>
					<td><%= madeEmail(email[i]) %></td>
					
			</tr>
		<%
			}
		%>
			
			</tbody>
	</table>

</body>
</html>