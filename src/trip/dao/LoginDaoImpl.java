package trip.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import trip.common.DBManager;
import trip.dto.UserDto;

public class LoginDaoImpl implements LoginDao{
	
	private static LoginDaoImpl instance = new LoginDaoImpl();

	private LoginDaoImpl() {}
	
	public static LoginDaoImpl getInstance() {
		return instance;
	}
	
	@Override
	public UserDto login(String email) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		UserDto userDto = null;
		
		try {
			con = DBManager.getConnection();

			StringBuilder sb = new StringBuilder();
			sb.append("select user_seq, user_name, user_password, user_email, user_address from users where user_email = ?");
			
			pstmt = con.prepareStatement(sb.toString());
			pstmt.setString(1, email);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				userDto = new UserDto();
				userDto.setUserSeq(rs.getInt("user_seq"));
				userDto.setUserName(rs.getString("user_name"));
				userDto.setUserPwd(rs.getString("user_password"));
				userDto.setUserEmail(rs.getString("user_email"));
				userDto.setUserAddress(rs.getString("user_address"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.releaseConnection(pstmt, con);
		}
		
		return userDto;
	}

}
