<%@page import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false"%>
												   		    <!-- 输出时的编码           .jsp页面文字的编码;两者是不同的-->
<html>
	<head></head>
	<body style="font-size:30px; font-style:italic;">
		现在时间是:<%
			out.println(new Date());
		 %>
		 <br/>
		 now time is:<%=new Date() %>
		<%
			for(int i = 0; i < 100; i++) {
				out.println("Hello World!<br/>");
				
			}		
		 %>
	</body>
</html>