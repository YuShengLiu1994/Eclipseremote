package my_project;

import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Jdbc {

	public static void main(String[] args) {
		try {
			Class.forName("com.mysql.jdbc.Driver"); // ����MYSQL JDBC��������
// Class.forName("org.gjt.mm.mysql.Driver");
			System.out.println("Success loading Mysql Driver!");
		} catch (Exception e) {
			System.out.print("Error loading Mysql Driver!");
			e.printStackTrace();
		}
		try {
			Connection connect = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/sys?useUnicode=true&characterEncoding=utf8", "root", "password");// java�������д�������Լ��������
			// Connection connect =
			// DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?useSSL=false&serverTimezone=UTC",
			// "root",
			// "password" + "");
			System.out.println("Success connect Mysql server!");
			Statement stmt = connect.createStatement();
			ResultSet rs = stmt.executeQuery("select * from table1");
			// user Ϊ�������ƣ�������MySQL��������show tables����ʾ
			while (rs.next()) {
				// 更改文件测试提交
				System.out.println(rs.getString("name"));
			}
		} catch (Exception e) {
			System.out.print("get data error!");
			e.printStackTrace();
		}
	}
}
