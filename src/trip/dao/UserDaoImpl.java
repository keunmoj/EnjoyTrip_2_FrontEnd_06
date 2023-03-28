package trip.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import trip.common.DBManager;
import trip.dto.UserDto;

public class UserDaoImpl implements UserDao {

	private static UserDaoImpl instance = new UserDaoImpl();

	private UserDaoImpl() {
	}

	public static UserDaoImpl getInstance() {
		return instance;
	}

	@Override
	public int userRegister(UserDto userDto) {
		Connection con = null;
		PreparedStatement pstmt = null;

		int ret = -1;

		try {
			con = DBManager.getConnection();

			StringBuilder sb = new StringBuilder();
			sb.append("insert into users ").append("(user_name, user_password, user_email, user_address)")
					.append("values(?,?,?,?)");

			pstmt = con.prepareStatement(sb.toString());
			pstmt.setString(1, userDto.getUserName());
			pstmt.setString(2, userDto.getUserPwd());
			pstmt.setString(3, userDto.getUserEmail());
			pstmt.setString(4, userDto.getUserAddress());

			ret = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.releaseConnection(pstmt, con);
		}

		return ret;
	}


	@Override
	public int userDelete(String userEmail) {
		Connection con = null;
        PreparedStatement pstmt = null;

        int ret = -1;

        try {
            con = DBManager.getConnection();

            StringBuilder sb = new StringBuilder();
            sb.append("delete from users ")
              .append("where user_email = ?");

            pstmt = con.prepareStatement(sb.toString());
            pstmt.setString(1, userEmail);

            ret = pstmt.executeUpdate();
        } catch(Exception e) {
            e.printStackTrace();
        } finally {
            DBManager.releaseConnection(pstmt, con);
        }

        return ret;
	}


}
