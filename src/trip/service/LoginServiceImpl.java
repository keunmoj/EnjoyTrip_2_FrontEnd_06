package trip.service;

import trip.dao.LoginDao;
import trip.dao.LoginDaoImpl;
import trip.dto.UserDto;

public class LoginServiceImpl implements LoginService {
	private static LoginServiceImpl instance = new LoginServiceImpl();
	
	private LoginServiceImpl() {}

	public static LoginServiceImpl getInstance() {
		return instance;
	}
	
	LoginDao loginDao = LoginDaoImpl.getInstance();

	@Override
	public UserDto login(String userEmail, String userPassword) {
		
		UserDto userDto = loginDao.login(userEmail);
		
		if(userDto != null && userDto.getUserPwd().equals(userPassword)) {
			userDto.setUserPwd(null);
			return userDto;
		}
		
		return null;
	}

}
