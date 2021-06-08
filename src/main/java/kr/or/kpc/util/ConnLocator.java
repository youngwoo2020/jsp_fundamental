package kr.or.kpc.util;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ConnLocator {
	public static Connection getConnection() {
		DataSource ds = null;
		Connection con = null;
		
		
		try {
			Context context = new InitialContext();
			//java:comp/env/는 고정
			//jdbc.kpc => context.xml의 name 속성을 참조해야 함. 
			
			ds = (DataSource) context.lookup("java:comp/env/jdbc/kpc");
			//ConnectionPool에 만들어진 Connection 객체를 반환
			con = ds.getConnection();
		
	
		
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
		
	}

}
