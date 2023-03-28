package trip.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import trip.dto.UserDto;
import trip.service.LoginService;
import trip.service.LoginServiceImpl;

@WebServlet({ "/login", "/logout" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	LoginService loginService = LoginServiceImpl.getInstance();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// encoding
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		
		String userEmail = request.getParameter("userEmail");
		String userPwd = request.getParameter("userPwd");
		System.out.println(userPwd);
		
		
		UserDto userDto = loginService.login(userEmail, userPwd);
		System.out.println(userDto.toString());
		
		Gson gson = new Gson();
		JsonObject jsonObject = new JsonObject();
		String jsonStr = null;
		
		if(userDto != null) {
			HttpSession session = request.getSession();
			session.setAttribute("name",userDto.getUserName());
            session.setAttribute("email",userDto.getUserEmail());
            session.setAttribute("address",userDto.getUserAddress());
			
			//result
			jsonObject.addProperty("result", "success");			
			jsonStr = gson.toJson(jsonObject);
		} else {
			jsonObject.addProperty("result", "fail");			
			jsonStr = gson.toJson(jsonObject);
		}
		
		response.getWriter().write(jsonStr);
	}

	// logout
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.invalidate();
		
		Gson gson = new Gson();
		JsonObject jsonObject = new JsonObject();
		jsonObject.addProperty("result", "success");			
		String jsonStr = gson.toJson(jsonObject);
		
		response.getWriter().write(jsonStr);
		response.sendRedirect(request.getContextPath()+"/index.jsp");
	}

}
