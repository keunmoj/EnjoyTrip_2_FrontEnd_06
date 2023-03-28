<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link href="/Trip/css/loginstyle.css" rel="stylesheet" />
</head>
<body>
    <div class="container right-panel-active">
        <!-- Sign In -->
        <div class="container__form container--signup">
          <form class="form" id="form1">
            <h2 class="form__title">Sign In</h2>
            <input type="text" id = "userEmail" name="userEmail" placeholder="User Email" class="input" />
            <input type="password" id="userPwd" name = "userPwd" placeholder="Password" class="input" />
          	<button id="btnLogin" type="button" class="btn">로그인</button>
          </form>
        </div>
      	
        <!-- Overlay -->
        <div class="container__overlay">
          <div class="overlay">
            	
          </div>
        </div>
    </div>
      
    <script>
      	window.onload = function(){
      		
      		document.querySelector("#userEmail").focus();
      		
      		document.querySelector("#btnLogin").onclick = function(){
      			if(validate()){
      				login();
      			}else{
      				alert("입력이 올바르지 않습니다.");
      			}
      		}
    		  		
      	}
      	
      	function validate(){
      		let isUserEmailValid = false;
        	let isUserPasswordValid = false;
        	
        	if(document.querySelector("#userEmail").value.length > 0) isUserEmailValid = true;
        	if(document.querySelector("#userPwd").value.length > 0) isUserPasswordValid = true;
        	
        	if(isUserEmailValid && isUserPasswordValid) return true;
        	return false; 
      	}
      	
      	async function login(){
        	let userEmail = document.querySelector("#userEmail").value;
        	let userPassword = document.querySelector("#userPwd").value;
           	
            
            // POST /login
            let urlParams = new URLSearchParams({
            	userEmail: userEmail,
            	userPwd: userPassword,
            });
            
            let fetchOptions = {
                    method: "POST",
                    body: urlParams
                }
            
            let response = await fetch("<%=contextPath%>/login", fetchOptions);
            let data = await response.json(); // json -> javascript object
            // data.result "success" 또는 "fail" 로 back-end 에서 받는다.
            if (data.result == "success") {
            	alert("success");
            	window.location.href="<%=contextPath%>/index.jsp";
            }
            else alert("fail");
        }
    </script>
</body>
</html>