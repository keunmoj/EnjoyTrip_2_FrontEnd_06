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
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
<!-- CSS -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css" />
<!-- Default theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css" />
<title>회원가입</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<style>
body {
	min-height: 100vh;
	background: -webkit-gradient(linear, left bottom, right top, from(#92b5db),
		to(#1d466c));
	background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
}

.input-form {
	max-width: 680px;
	margin-top: 80px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}
</style>
</head>

<body>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">회원가입</h4>
				<form novalidate class="validation-form">
					<div class="mb-3">
						<label for="name">이름</label> <input type="text"
							class="form-control" name="name" id="name" placeholder="김싸피"
							required>

						<div class="valid-feedback">Valid</div>
						<div class="invalid-feedback">Invalid</div>
					</div>
					<div class="mb-3">
						<label for="pwd">비밀번호</label> <input type="password"
							class="form-control" name="pwd" id="pwd" value="" required>

						<div class="valid-feedback">Valid</div>
						<div class="invalid-feedback">Invalid</div>
					</div>
					<div class="mb-3">
						<label for="pwd2">비밀번호 확인</label> <input type="password"
							class="form-control" name="pwd2" id="pwd2" value="" required>

						<div class="valid-feedback">Valid</div>
						<div class="invalid-feedback">Invalid</div>
					</div>

					<div class="mb-3">
						<label for="email">이메일</label> <input type="email"
							class="form-control" name="email" id="email"
							placeholder="ssafy@ssafy.com" required>
						<div class="valid-feedback">Valid</div>
						<div class="invalid-feedback">Invalid</div>
					</div>

					<div class="mb-3">
						<label for="address">주소</label> <input type="text"
							class="form-control" name="address" id="address"
							placeholder="부산광역시 사상구" required>
						<div class="valid-feedback">Valid</div>
						<div class="invalid-feedback">Invalid</div>
					</div>
				</form>
				<hr class="mb-4">
				<button id="btnRegister" class="btn btn-primary btn-lg btn-block"
					type="button">회원가입</button>
			</div>
		</div>
	</div>
	<script>
        window.onload = function() {
                document.querySelector("#name").onblur = function() {
                    if(validateUserName(this.value)){
                        this.classList.remove("is-invalid");
                        this.classList.add("is-valid");
                        console.log(1);
                    }else{
                        this.classList.remove("is-valid");
                        this.classList.add("is-invalid");
                        console.log(2);
                    }
                }
                document.querySelector("#pwd").onblur = function() {
                    if(validatePassword(this.value)){
                        this.classList.remove("is-invalid");
                        this.classList.add("is-valid");
                        console.log(1);
                    }else{
                        this.classList.remove("is-valid");
                        this.classList.add("is-invalid");
                        console.log(2);
                    }
                }
                document.querySelector("#pwd2").onblur = function() {
                    if(validatePassword(this.value)){
                        this.classList.remove("is-invalid");
                        this.classList.add("is-valid");
                        console.log(1);
                    }else{
                        this.classList.remove("is-valid");
                        this.classList.add("is-invalid");
                        console.log(2);
                    }
                }
                document.querySelector("#email").onblur = function() {
                    if(validateEmail(this.value)){
                        this.classList.remove("is-invalid");
                        this.classList.add("is-valid");
                        console.log(1);
                    }else{
                        this.classList.remove("is-valid");
                        this.classList.add("is-invalid");
                        console.log(2);
                    }
                }

                document.querySelector("#address").onblur = function() {
                    if(this.value.length >= 2){
                        this.classList.remove("is-invalid")
                        this.classList.add("is-valid");
                    }else{
                        this.classList.remove("is-valid")
                        this.classList.add("is-intvalid");
                    }
                }

                document.querySelector("#btnRegister").onclick = function(){
                    if(document.querySelectorAll("form .is-invalid").length > 0){
                            alert("입력이 올바르지 않습니다.");
                    }else{
                        register();
                    }
                }
        }

        function validateUserName(userName){
            if(userName.length >= 2){
                return true;
            }else{
                return false;
            }
        }

        function validatePassword(userPassword){
            var patternEngAtListOne = new RegExp(/[a-zA-Z]+/);// + for at least one
            var patternSpeAtListOne = new RegExp(/[~!@#$%^&()+|<>?:{}]+/);// + for at least one
            var patternNumAtListOne = new RegExp(/[0-9]+/);// + for at least one

            if(patternEngAtListOne.test(userPassword)
                    && patternSpeAtListOne.test(userPassword)
                    && patternNumAtListOne.test(userPassword)) return true;

            return false;

        }

        function validatePassword2(userPassword2){
            if(userPassword2 == document.querySeletor("#pwd")) return true;

            return false;
        }

        function validateEmail(userEmail){
        	let regexp = new RegExp(/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i);
            if(regexp.test(userEmail)) return true;

            return false;
        }


        async function register() {
            let userName = document.querySelector("#name").value;
            let userPassword = document.querySelector("#pwd").value;
            let userEmail = document.querySelector("#email").value;
            let userAddress = document.querySelector("#address").value;

            // POST /user/register
            let urlParams = new URLSearchParams({
                userName: userName,
                userPassword: userPassword,
                userEmail: userEmail,
                userAddress: userAddress,
            });

            let fetchOptions = {
                method: "POST",
                body: urlParams
            }

            let response = await fetch("<%=contextPath%>/user/register", fetchOptions);
            let data = await response.json(); // json -> javascript object
            // data.result "success" 또는 "fail" 로 back-end 에서 받는다.
            if (data.result == "success") {
                alertify.alert("Welcome!","회원가입을 축하합니다. 로그인 페이지로 이동합니다.", function(){
                    window.location.href="<%=contextPath%>/jsp/login.jsp";
                  });
            }
            else alert("fail");
        }
    </script>
</body>

</html>