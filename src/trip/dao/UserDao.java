package trip.dao;

import java.sql.SQLException;

import trip.dto.UserDto;

public interface UserDao {
	int userRegister(UserDto userDto);
    public int userDelete(String userEmail);
}
