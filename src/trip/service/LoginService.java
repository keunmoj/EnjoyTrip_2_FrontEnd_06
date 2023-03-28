package trip.service;

import trip.dto.UserDto;

public interface LoginService {
	UserDto login(String userEmail, String userPassword);
}
