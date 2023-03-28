package trip.service;

import java.sql.SQLException;

import trip.dto.UserDto;

public interface UserService {
	int userRegister(UserDto userDto);
	int userDelete(String userEmail);
}
