<%@page pageEncoding="utf-8" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@page import="dao.*,util.*,entity.*,java.util.*,java.text.SimpleDateFormat" isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
	Object obj = session.getAttribute("user");
	if(obj == null) {
		response.sendRedirect("login.jsp");
 		return;
	}
 %>


<html>
	<head>
		<title>员工列表</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="css/style.css" />
	</head>
	<body>
		<div id="wrap">
			<div id="top_content"> 
				<div id="header">
					<div id="rightheader">
						<p>
							<%
								Date date = new Date();
								SimpleDateFormat fmt = new SimpleDateFormat("yyyy/MM/dd");
								out.println(fmt.format(date));
							 %>
							
							<br />
						</p>
					</div>
					<div id="topheader">
						<h1 id="title">
							<a href="#">员工信息管理系统</a>
						</h1>
					</div>
					<div id="navigation">
					
					</div>
				</div>
				<div id="content">
					<p id="whereami">
					</p>
					<h1>
						员工列表
					</h1>
					<table class="table">
						<tr class="table_header">
							<td>
								ID
							</td>
							<td>
								姓名
							</td>
							<td>
								薪水
							</td>
							<td>
								年龄
							</td>
							<td>
								操作
							</td>
						</tr>
					
						<c:forEach var="e" items="${employees}" varStatus="status">
							<tr class="row${status.index %2 + 1}">
								<td>${e.id}</td>
								<td>${e.name}</td>
								<td>${e.salary}</td>
								<td>${e.age}</td>
								<td><a href="<%=request.getContextPath() %>/emplist.jsp">删除</a>&nbsp;<a href="<%=request.getContextPath() %>/updateEmp.jsp">修改</a></td>
							</tr>
						</c:forEach>
									
					</table>
					<p>
						<input type="button" class="button" value="添加员工" onclick="location='<%=request.getContextPath() %>addEmp.jsp'"/>
					</p>
				</div>
			</div>
			<div id="footer">
				<div id="footer_bg">
				ABC@126.com
				</div>
			</div>
		</div>
	</body>
</html>