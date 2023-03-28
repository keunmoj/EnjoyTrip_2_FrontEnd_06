package trip.dao;

import trip.dto.UserDto;

public interface LoginDao {
	UserDto login(String email);
}
