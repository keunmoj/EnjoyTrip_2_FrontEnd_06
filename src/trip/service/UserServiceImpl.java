package trip.service;

import java.sql.SQLException;

import trip.dao.UserDao;
import trip.dao.UserDaoImpl;
import trip.dto.UserDto;

public class UserServiceImpl implements UserService{
	private static UserServiceImpl instance = new UserServiceImpl();
	
	private UserServiceImpl() {}

	public static UserServiceImpl getInstance() {
		return instance;
	}
	
	UserDao userDao = UserDaoImpl.getInstance();

	@Override
	public int userRegister(UserDto userDto) {
		return userDao.userRegister(userDto);
	}

	@Override
	public int userDelete(String userEmail) {
		 return userDao.userDelete(userEmail);
	}

}
