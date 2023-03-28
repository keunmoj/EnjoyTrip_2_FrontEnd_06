<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
    String name = (String)session.getAttribute("name");
    String email = (String)session.getAttribute("email");
    String address = (String)session.getAttribute("address");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/Trip/css/userInfo.css" rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
	integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	crossorigin="anonymous"></script>
<script
	src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css" />
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css" />

<title>Insert title here</title>
</head>
<body>
	<main class="container">
  <div class="card">
    <img src="../assets/img/cat.jpg" alt="User image" class="card__image" />
    <div class="card__text">
      <h2><%=name%></h2>
      <p><%=email %></p>
    </div>
    <ul class="card__info">
      <li>
        <span class="card__info__stats">address</span>
        <span ><%=address %></span>
      </li>
    </ul>
    <div class="card__action">
      <button class="card__action__button card__action--follow" id="btnUpdate">비밀번호 찾기</button>
      <button class="card__action__button card__action--message" id="btnDelete">탈퇴</button>
    </div>
  </div>
</main>
<script>
        window.onload = function(){
            document.querySelector("#btnUpdate").onclick = function(){
                alert("비밀번호 찾기 버튼을 클릭하셨습니다.");
            }
            document.querySelector("#btnDelete").onclick = function(){
                var answer = confirm("탈퇴하시겠습니까?");
                if(answer){
                	register();
                } else{
                	alert("취소되었습니다.")
                }
            }
            
        }

        async function register() {

        	var url = '<%=contextPath%>/user/Delete';
    		var urlParams = "?email=" + "<%=email%>";
    		
    		try{
    		    let response = await fetch(url + urlParams);
    		    let data = await response.json();
    		    console.log(data);
    		    if(data.result == "success"){
    		        alertify.success("삭제되었습니다.");
    		    }else{
    		        alertify.error("삭제 과정에 문제가 생겼습니다.");
    		    }
    		}catch( error ){
    		    console.error( error );
    		    alertify.error("삭제 과정에 문제가 생겼습니다.");
    		}   
        }
    </script>
</body>
</html>