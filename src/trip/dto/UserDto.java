package trip.dto;

public class UserDto {
	private int userSeq;
	private String userName;
	private String userPwd;
	private String userEmail;
	private String userAddress;
	
	public int getUserSeq() {
		return userSeq;
	}


	public void setUserSeq(int userSeq) {
		this.userSeq = userSeq;
	}

	
	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPwd() {
		return userPwd;
	}


	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}


	public String getUserEmail() {
		return userEmail;
	}


	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}


	public String getUserAddress() {
		return userAddress;
	}


	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public UserDto() {}


	public UserDto(int userSeq,String userName, String userPwd, String userEmail, String userAddress) {
		super();
		this.userSeq = userSeq;
		this.userName = userName;
		this.userPwd = userPwd;
		this.userEmail = userEmail;
		this.userAddress = userAddress;
	}


	@Override
	public String toString() {
		return "UserDto [userSeq=" + userSeq + ", userName=" + userName + ", userPwd=" + userPwd + ", userEmail="
				+ userEmail + ", userAddress=" + userAddress + "]";
	}


	
	
	
}

