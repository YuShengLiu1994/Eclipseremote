<%@page pageEncoding="utf-8" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@page import="java.text.SimpleDateFormat,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>regist</title>
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
								<a href="#">Java技术论坛</a>
							</h1>
						</div>
						<div id="navigation">
						</div>
					</div>
				<div id="content">
					<p id="whereami">
					</p>
					<h1>
						注册
					</h1>
					<form action="regist.do" method="post">
						<table cellpadding="0" cellspacing="0" border="0"
							class="form_table">
							<tr>
								<td valign="middle" align="right">
									用户名:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="username" />
								</td>
								<td style="color: red">
									<% //用户名不能为空
										if(request.getAttribute("username")!=null)
											out.println(request.getAttribute("username"));
											//用户已存在
										if(request.getAttribute("result") != null) 
											out.println(request.getAttribute("result"));
									 %>
								
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									真实姓名:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="name" />
								</td>
								<td style="color: red">
									<% 
										if(request.getAttribute("name")!=null) 
											out.println(request.getAttribute("name"));
									 %>
								
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									密码:
								</td>
								<td valign="middle" align="left">
									<input type="password" class="inputgri" name="pwd" />
								</td>
								<td style="color: red">
									<% 
										if(request.getAttribute("password")!=null)
										out.println(request.getAttribute("password"));
									 %>
								
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									性别:
								</td>
								<td valign="middle" align="left">
									男
									<input type="radio" class="inputgri" name="sex" value="m" checked="checked"/>
									女
									<input type="radio" class="inputgri" name="sex" value="f"/>
								</td>
							</tr>
							
							<tr>
								<td valign="middle" align="right">
									验证码:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="number" />
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									<a href="javascript:;" onclick="document.getElementById('num').src = 'CheckcodeServlet1?'+(new Date()).getTime()">换一张</a>
								</td>
								<td valign="middle" align="left">
									<img id="num" src="CheckcodeServlet1" />
								</td>
								<% 
										if(request.getAttribute("checkcode_msg")!=null)
										out.println(request.getAttribute("checkcode_msg"));
								 %>
							</tr>
						</table>
						<p>
							<input type="submit" class="button" value="确认 &raquo;" />
						</p>
					</form>
				</div>
			</div>
			<div id="footer">
				<div id="footer_bg">
				wdhjll@126.com
				</div>
			</div>
		</div>
	</body>
</html>