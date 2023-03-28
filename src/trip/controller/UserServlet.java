package trip.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import trip.common.DBManager;
import trip.dto.UserDto;
import trip.service.UserService;
import trip.service.UserServiceImpl;

@WebServlet("/user/*")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	UserService userService = UserServiceImpl.getInstance();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        process(request, response);
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		process(request, response);
	}

	protected void process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// encoding
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		String contextPath = request.getContextPath();
		String path = request.getRequestURI().substring(contextPath.length());

		switch (path) {
		case "/user/register":
			register(request, response);
			break;
		case "/user/login":
			break;
		case "/user/Delete":
			delete(request, response);
			break;
		}
	}

	protected void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String email = request.getParameter("email");

    int ret = userService.userDelete(email);
    
    System.out.println("delete= " + ret);
    // result
    Gson gson = new Gson();
    JsonObject jsonObject = new JsonObject();
    String jsonStr = null;
    if (ret == 1) {
        jsonObject.addProperty("result", "success");
        response.sendRedirect(request.getContextPath()+"/index.jsp");
    } else {
        jsonObject.addProperty("result", "fail");
    }
    
    response.getWriter().write(jsonStr);
}

	protected void register(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// parameter
		String userName = request.getParameter("userName");
		String userPassword = request.getParameter("userPassword");
		String userEmail = request.getParameter("userEmail");
		String userAddress = request.getParameter("userAddress");
		System.out.println("userName : " + userName);
		System.out.println("userPassword : " + userPassword);
		System.out.println("userEmail : " + userEmail);
		System.out.println("userAddress : " + userAddress);
		UserDto userDto = new UserDto();
		userDto.setUserName(userName);
		userDto.setUserPwd(userPassword);
		userDto.setUserEmail(userEmail);
		userDto.setUserAddress(userAddress);
		// service - dao
		int ret = userService.userRegister(userDto);

		// result
		Gson gson = new Gson();
		JsonObject jsonObject = new JsonObject();

		if (ret == 1) {
			jsonObject.addProperty("result", "success");

		} else {
			jsonObject.addProperty("result", "fail");
		}

		String jsonStr = gson.toJson(jsonObject); // json ���ڿ�
		response.getWriter().write(jsonStr);

	}

}
