package trip.common;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBManager {
	
	public static Connection getConnection() {
		Connection con = null;
		
		try {
			Context context = (Context) new InitialContext().lookup("java:comp/env/");
			DataSource dataSource = (DataSource)context.lookup("jdbc/trip");	// context.xml�� Resource name �Ӽ�
			con = dataSource.getConnection();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	
	public static void releaseConnection(PreparedStatement pstmt, Connection con) {
		try {
	        if( pstmt != null ) pstmt.close();
	        if( con != null ) con.close();
	    }catch(SQLException e) {
	        e.printStackTrace();
	    }
	}
	
	
	public static void releaseConnection(ResultSet rs, PreparedStatement pstmt, Connection con) {
	    try {
	        if( rs != null ) rs.close();
	        if( pstmt != null ) pstmt.close();
	        if( con != null ) con.close();
	    }catch(SQLException e) {
	        e.printStackTrace();
	    }
	}
	
	
	public void releaseConnection(AutoCloseable... params) {
	    for (AutoCloseable ac : params) {
	        if( ac != null ) {
	            try {
	                ac.close();
	            }catch(Exception e) {
	                e.printStackTrace();
	            }
	        }
	    }
	}
}
