package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import util.DBConnection;

public class DBConnection {
	//加载配置文件
	static{
				
		//注册驱动
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	//连接数据库
	public static Connection getConnection() throws Exception {
		return DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/sys"+"?useUnicode=true&characterEncoding=utf8","root","mysql123");
	}
	//关闭有结果集的连接
	public static void close(ResultSet rs, Statement stat, Connection conn) throws Exception {
		if(rs != null) {
			rs.close();
		}
		if(stat != null) {
			stat.close();
		}
		if(conn != null) {
			conn.close();
		}
	}

	//关闭无结果集的连接
	public static void close(Statement stat, Connection conn) throws Exception {
		
		if(stat != null) {
			stat.close();
		}
		if(conn != null) {
			conn.close();
		}
	}
}