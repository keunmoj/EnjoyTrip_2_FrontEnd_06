<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Grayscale - Start Bootstrap Theme</title>
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
<link href="css/index.css" rel="stylesheet" />
<!--serviceKey-->
<script src="js/key.js"></script>
</head>
<style>
</style>
<body id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container px-4 px-lg-5">
			<a class="navbar-brand" href="#page-top">6조 Enjoy Trip</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link" href="#package">패키지
							여행</a></li>
					<li class="nav-item"><a class="nav-link" href="#free">자유
							여행</a></li>	
					<% // 로그인된 이메일 있는지 읽기
						String email = (String)session.getAttribute("email");
					%>
					<%if(email==null) {%>
					<li class="nav-item"><a class="nav-link" href="jsp/login.jsp">로그인</a></li>
					<li class="nav-item"><a class="nav-link" href="jsp/register.jsp">회원가입</a></li>
					<%} else{%>
					
					<li class="nav-item"><a class="nav-link" href="<%=contextPath%>/logout">로그아웃</a></li>
					<li class="nav-item"><a class="nav-link" href="jsp/user.jsp">회원정보</a></li>
					<%} %>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Masthead-->

	<header class="masthead">
		<div
			class="container px-4 px-lg-5 d-flex h-100 align-items-center justify-content-center">
			<div class="d-flex justify-content-center">
				<div class="text-center">
					<h1 class="mx-auto my-0 text-uppercase">Enjoy Trip</h1>
					<h2 class="text-white-50 mx-auto mt-2 mb-5">Everywhere you
						want to go is here.</h2>
					<%if(email==null) {%>
					<a class="btn btn-primary" href="jsp/login.jsp">로그인</a>
					<%} else{%>
					<a class="btn btn-primary" href="<%=contextPath%>/logout">로그아웃</a>
					<%} %>
				</div>
			</div>
		</div>
	</header>

	<!-- package -->
	<section class="text-center" id="package"
		style="margin: 150px 0 150px 0">
		<div class="container">
			<div id="carouselExampleControls"
				class="carousel carousel-dark slide" data-bs-ride="carousel">


				<!-- 서울 모달 창 만들기 -->
				<div id="modalSeoul" class="modal-dialog modal-dialog-scrollable modal modalWrapper">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">서울 맛집 투어</h5>
						</div>
						<div class="modal-body">
							<div>
								<img src="assets/img/seoultrip.jpg" width="400px"><br>
								<h2>코스A</h2>
								<p>
									1. 성수동 카페 거리 -> <a
										href="https://www.google.com/search?q=%EC%84%B1%EC%88%98%EB%8F%99%EC%B9%B4%ED%8E%98%EA%B1%B0%EB%A6%AC%20%EC%A3%BC%EC%86%8C&sxsrf=AJOqlzWEUZ5xCWnK9RZpVa5zH2OZjvp2vQ:1679056297841&ei=pl0UZKjBFZDL-Qae76ioBQ&ved=2ahUKEwiN9cKR_OL9AhWMDN4KHdtEAxkQvS56BAgSEAE&uact=5&oq=%EC%84%B1%EC%88%98%EB%8F%99%EC%B9%B4%ED%8E%98%EA%B1%B0%EB%A6%AC+%EC%A3%BC%EC%86%8C&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIFCCEQoAE6CggAEEcQ1gQQsAM6BAgjECc6BAgAEB5KBAhBGABQ_AFYwQVgwAxoAXABeACAAZABiAHbBJIBAzAuNZgBAKABAcgBCsABAQ&sclient=gws-wiz-serp&tbs=lf:1,lf_ui:9&tbm=lcl&rflfq=1&num=10&rldimm=5516263520261592169&lqi=ChzshLHsiJjrj5nsubTtjpjqsbDrpqwg7KO87IaMIgJIAVogIh7shLHsiJjrj5kg7Lm07Y6YIOqxsOumrCDso7zshoySARJ0b3VyaXN0X2F0dHJhY3Rpb26qAUgKCS9tLzAyMGZiMhABKhgiFOy5tO2OmCDqsbDrpqwg7KO87IaMKAkyHxABIhvHRGJiXKyrt0MpBWxGOd1jDhPtQgEexHp5d5E&sa=X&rlst=f#rlfi=hd:;si:5516263520261592169,l,ChzshLHsiJjrj5nsubTtjpjqsbDrpqwg7KO87IaMIgJIAVogIh7shLHsiJjrj5kg7Lm07Y6YIOqxsOumrCDso7zshoySARJ0b3VyaXN0X2F0dHJhY3Rpb26qAUgKCS9tLzAyMGZiMhABKhgiFOy5tO2OmCDqsbDrpqwg7KO87IaMKAkyHxABIhvHRGJiXKyrt0MpBWxGOd1jDhPtQgEexHp5d5E;mv:[[37.553838,127.0718154],[37.4760527,126.89994240000001]];tbs:lrf:!1m4!1u3!2m2!3m1!1e1!1m4!1u2!2m2!2m1!1e1!2m1!1e2!2m1!1e3!3sIAE,lf:1,lf_ui:9">주소는
										여기!</a><br> 2. 종로 한옥 카페 -> <a
										href="https://www.google.com/search?q=%EC%A2%85%EB%A1%9C+%ED%95%9C%EC%98%A5+%EC%B9%B4%ED%8E%98+%EC%A3%BC%EC%86%8C&biw=1745&bih=852&tbm=lcl&sxsrf=AJOqlzUgTdOaouiLbYYBNSqpI_AFMN7skA%3A1679056510151&ei=fl4UZJzlCOKdseMPj6uBmAc&ved=0ahUKEwicnOH2_OL9AhXiTmwGHY9VAHMQ4dUDCAk&uact=5&oq=%EC%A2%85%EB%A1%9C+%ED%95%9C%EC%98%A5+%EC%B9%B4%ED%8E%98+%EC%A3%BC%EC%86%8C&gs_lcp=Cg1nd3Mtd2l6LWxvY2FsEAMyBQgAEKIEMgUIABCiBDoECCMQJzoLCAAQgAQQsQMQgwE6CggAEIAEEBQQhwI6BQgAEIAEOgQIABADOggIABCABBCxAzoECAAQQzoECAAQHjoGCAAQHhAPUABY-R5goSBoAHAAeACAAdkCiAHRHZIBCDEuMTUuNC4ymAEAoAEBwAEB&sclient=gws-wiz-local#rlfi=hd:;si:;mv:[[37.5841212,127.00949130000001],[37.570679399999996,126.9805297]];tbs:lrf:!1m4!1u3!2m2!3m1!1e1!1m4!1u2!2m2!2m1!1e1!2m1!1e2!2m1!1e3!3sIAE,lf:1,lf_ui:9">주소는
										여기!</a><br> 3. 연남동 카페 골목 -> <a
										href="https://www.google.com/search?q=%EC%97%B0%EB%82%A8%EB%8F%99%20%EC%B9%B4%ED%8E%98%EA%B3%A8%EB%AA%A9%20%EC%A3%BC%EC%86%8C&biw=1745&bih=852&sxsrf=AJOqlzXDtrbo5cZjhWTdtoqkyPRdBbEecg:1679056350670&ei=yF0UZOvCLrqH1e8Pnou-8AQ&ved=2ahUKEwi8pNuq_OL9AhUQEogKHXrNAuUQvS56BAgNEAE&uact=5&oq=%EC%97%B0%EB%82%A8%EB%8F%99+%EC%B9%B4%ED%8E%98%EA%B3%A8%EB%AA%A9+%EC%A3%BC%EC%86%8C&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIFCAAQogQyBQgAEKIEOgkIIxAnEEYQ_wE6BAgjECc6CAgAEIAEELEDOgUIABCABDoLCAAQgAQQsQMQgwE6CwguEIAEELEDEIMBOhEILhCABBCxAxCDARDHARDRAzoQCAAQgAQQFBCHAhCxAxCDAToECAAQQzoLCC4QgwEQsQMQgAQ6BAgAEAM6BQguEIAEOgsILhCABBDHARCvAToKCC4QxwEQrwEQQzoKCAAQgAQQFBCHAjoECAAQHjoFCCEQoAFKBAhBGABQAFidF2CuGGgAcAF4AIABrAGIAcwZkgEEMC4yNZgBAKABAcABAQ&sclient=gws-wiz-serp&tbs=lf:1,lf_ui:9&tbm=lcl&rflfq=1&num=10&rldimm=15769512253428176388&lqi=Ch3sl7Drgqjrj5kg7Lm07Y6Y6rOo66qpIOyjvOyGjCICSAFIq6el5YivgIAIWiEQARACGAAYASIX7Jew64Ko64-ZIOy5tO2OmCDqs6jrqqmSAQRjYWZlqgFBCgkvbS8wMjBmYjIQASoRIg3subTtjpgg6rOo66qpKAkyHxABIhvHREZG1JhH1ijV2iJ5Hq4ELZANR9aaPBdUz7E&phdesc=bPM6Yz1rXvU&sa=X&rlst=f#rlfi=hd:;si:15769512253428176388,l,Ch3sl7Drgqjrj5kg7Lm07Y6Y6rOo66qpIOyjvOyGjCICSAFIq6el5YivgIAIWiEQARACGAAYASIX7Jew64Ko64-ZIOy5tO2OmCDqs6jrqqmSAQRjYWZlqgFBCgkvbS8wMjBmYjIQASoRIg3subTtjpgg6rOo66qpKAkyHxABIhvHREZG1JhH1ijV2iJ5Hq4ELZANR9aaPBdUz7E,y,bPM6Yz1rXvU;mv:[[37.566781,126.92712440000001],[37.5595534,126.9190325]];tbs:lrf:!1m4!1u3!2m2!3m1!1e1!1m4!1u2!2m2!2m1!1e1!2m1!1e2!2m1!1e3!3sIAE,lf:1,lf_ui:9">주소는
										여기!</a><br>
								</p>
								<br>
								<h2>코스B</h2>
								<p>
									1. 남대문 갈치 골목 -> <a
										href="https://www.google.com/search?q=%EC%84%B1%EC%88%98%EB%8F%99%EC%B9%B4%ED%8E%98%EA%B1%B0%EB%A6%AC%20%EC%A3%BC%EC%86%8C&sxsrf=AJOqlzWEUZ5xCWnK9RZpVa5zH2OZjvp2vQ:1679056297841&ei=pl0UZKjBFZDL-Qae76ioBQ&ved=2ahUKEwiN9cKR_OL9AhWMDN4KHdtEAxkQvS56BAgSEAE&uact=5&oq=%EC%84%B1%EC%88%98%EB%8F%99%EC%B9%B4%ED%8E%98%EA%B1%B0%EB%A6%AC+%EC%A3%BC%EC%86%8C&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIFCCEQoAE6CggAEEcQ1gQQsAM6BAgjECc6BAgAEB5KBAhBGABQ_AFYwQVgwAxoAXABeACAAZABiAHbBJIBAzAuNZgBAKABAcgBCsABAQ&sclient=gws-wiz-serp&tbs=lf:1,lf_ui:9&tbm=lcl&rflfq=1&num=10&rldimm=5516263520261592169&lqi=ChzshLHsiJjrj5nsubTtjpjqsbDrpqwg7KO87IaMIgJIAVogIh7shLHsiJjrj5kg7Lm07Y6YIOqxsOumrCDso7zshoySARJ0b3VyaXN0X2F0dHJhY3Rpb26qAUgKCS9tLzAyMGZiMhABKhgiFOy5tO2OmCDqsbDrpqwg7KO87IaMKAkyHxABIhvHRGJiXKyrt0MpBWxGOd1jDhPtQgEexHp5d5E&sa=X&rlst=f#rlfi=hd:;si:5516263520261592169,l,ChzshLHsiJjrj5nsubTtjpjqsbDrpqwg7KO87IaMIgJIAVogIh7shLHsiJjrj5kg7Lm07Y6YIOqxsOumrCDso7zshoySARJ0b3VyaXN0X2F0dHJhY3Rpb26qAUgKCS9tLzAyMGZiMhABKhgiFOy5tO2OmCDqsbDrpqwg7KO87IaMKAkyHxABIhvHRGJiXKyrt0MpBWxGOd1jDhPtQgEexHp5d5E;mv:[[37.553838,127.0718154],[37.4760527,126.89994240000001]];tbs:lrf:!1m4!1u3!2m2!3m1!1e1!1m4!1u2!2m2!2m1!1e1!2m1!1e2!2m1!1e3!3sIAE,lf:1,lf_ui:9">주소는
										여기!</a><br> 2. 이태원 세계 음식 거리 -> <a
										href="https://www.google.com/maps?q=%EC%9D%B4%ED%83%9C%EC%9B%90+%EC%84%B8%EA%B3%84+%EC%9D%8C%EC%8B%9D+%EA%B1%B0%EB%A6%AC+%EC%A3%BC%EC%86%8C&um=1&ie=UTF-8&sa=X&ved=2ahUKEwjprIfg_eL9AhWSO3AKHUsNBWUQ_AUoAnoECAEQBA">주소는
										여기!</a><br> 3. 압구정 로데오 -> <a
										href="https://www.google.com/maps?q=%EC%95%95%EA%B5%AC%EC%A0%95+%EB%A1%9C%EB%8D%B0%EC%98%A4+%EC%A3%BC%EC%86%8C&um=1&ie=UTF-8&sa=X&ved=2ahUKEwit_dXq_eL9AhWLEYgKHdUoAqoQ_AUoAXoECAEQAw">주소는
										여기!</a><br>
								</p>

								<br>
								<iframe width="560" height="315"
									src="https://www.youtube.com/embed/c4jI2yfcALA"
									title="YouTube video player" frameborder="0"
									allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
									allowfullscreen></iframe>
							</div>
						</div>
						<div class="modal-footer">
							<button id="close" type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
				<!-- 부산 모달 창 만들기 -->
				<div id="modalBusan"
					class="modal-dialog modal-dialog-scrollable modal ">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">부산 여행 코스</h5>
						</div>
						<div class="modal-body">
							<div>
								<img src="assets/img/busantrip.jpg" width="400px"><br>
								<h2>코스A</h2>
								<p>
									1. 해운대 블루라인 파크 -> <a
										href="https://www.google.com/maps?q=%ED%95%B4%EC%9A%B4%EB%8C%80+%EB%B8%94%EB%A3%A8%EB%9D%BC%EC%9D%B8+%ED%8C%8C%ED%81%AC+%EC%A3%BC%EC%86%8C&um=1&ie=UTF-8&sa=X&ved=2ahUKEwi4mMnBg-P9AhUi-2EKHQkQABcQ_AUoAXoECAEQAw">주소는
										여기!</a><br> 2. 용소웰빙공원 -> <a
										href="https://www.google.com/maps?q=%EC%9A%A9%EC%86%8C%EC%9B%B0%EB%B9%99%EA%B3%B5%EC%9B%90+%EC%A3%BC%EC%86%8C&um=1&ie=UTF-8&sa=X&ved=2ahUKEwj7-bnSg-P9AhWHNN4KHbQVCCYQ_AUoAXoECAEQAw">주소는
										여기!</a><br> 3. 피크스퀘어 -> <a
										href="https://www.google.com/maps?q=%ED%94%BC%ED%81%AC%EC%8A%A4%ED%80%98%EC%96%B4+%EC%A3%BC%EC%86%8C&um=1&ie=UTF-8&sa=X&ved=2ahUKEwiD78Hlg-P9AhUYDN4KHepICX0Q_AUoAXoECAEQAw">주소는
										여기!</a><br> 4. 학리방파제 -> <a
										href="https://www.google.com/maps?q=%ED%95%99%EB%A6%AC%EB%B0%A9%ED%8C%8C%EC%A0%9C+%EC%A3%BC%EC%86%8C&um=1&ie=UTF-8&sa=X&ved=2ahUKEwiJ6__0g-P9AhVXAIgKHT2rB_gQ_AUoAXoECAEQAw">주소는
										여기!</a>
								</p>
								<br>
								<h2>코스B</h2>
								<p>
									1. 다대포 해수욕장 & 생태 탐방로 -> <a
										href="https://www.google.com/maps?q=%ED%95%99%EB%A6%AC%EB%B0%A9%ED%8C%8C%EC%A0%9C+%EC%A3%BC%EC%86%8C&um=1&ie=UTF-8&sa=X&ved=2ahUKEwiJ6__0g-P9AhVXAIgKHT2rB_gQ_AUoAXoECAEQAw">주소는
										여기!</a><br> 2. 장림포구 -> <a
										href="https://www.google.com/maps?q=%EC%9E%A5%EB%A6%BC%ED%8F%AC%EA%B5%AC+%EC%A3%BC%EC%86%8C&um=1&ie=UTF-8&sa=X&ved=2ahUKEwiCp4aehOP9AhWPH3AKHZX-AmkQ_AUoAXoECAEQAw">주소는
										여기!</a><br> 3. 카페만디 -> <a
										href="https://www.google.com/maps?q=%EC%B9%B4%ED%8E%98%EB%A7%8C%EB%94%94+%EC%A3%BC%EC%86%8C&um=1&ie=UTF-8&sa=X&ved=2ahUKEwjl0YethOP9AhUcQ_UHHfxYDB4Q_AUoAnoECAEQBA">주소는
										여기!</a><br>
								</p>

								<br>
								<iframe width="560" height="315"
									src="https://www.youtube.com/embed/kcoNNBZJgek"
									title="YouTube video player" frameborder="0"
									allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
									allowfullscreen></iframe>
							</div>
						</div>
						<div class="modal-footer">
							<button id="close2" type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
				<!-- 제주 모달 창 만들기 -->
				<div id="modalJeju"
					class="modal-dialog modal-dialog-scrollable modal ">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">제주 여행 코스</h5>
						</div>
						<div class="modal-body">
							<div>
								<img src="assets/img/jejutrip.jpg" width="400px"><br>
								<h2>여행 코스 추천</h2>
								<iframe width="560" height="315"
									src="https://www.youtube.com/embed/VXVp97eI_nE"
									title="YouTube video player" frameborder="0"
									allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
									allowfullscreen></iframe>
							</div>
						</div>
						<div class="modal-footer">
							<button id="close3" type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
				<!--  -->
				
				<!-- 강릉 모달 창 만들기 -->
				<div id="modalGangneung"
					class="modal-dialog modal-dialog-scrollable modal ">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">강릉 여행 코스</h5>
						</div>
						<div class="modal-body">
							<div>
								<h2>여행 코스 추천</h2>
								 <a href="https://growingwhale.tistory.com/entry/%EA%B0%95%EB%A6%89-%EC%97%AC%ED%96%89%EC%A7%80-%EC%B6%94%EC%B2%9C">주소는
										여기!</a><br>
								<iframe width="560" height="315" src="https://www.youtube.com/embed/oMGhScc-jL4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
							</div>
						</div>
						<div class="modal-footer">
							<button id="close4" type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
				<!--  -->
				
				<!-- 가평 모달 창 만들기 -->
				<div id="modalGapyeong"
					class="modal-dialog modal-dialog-scrollable modal ">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">가평 여행 코스</h5>
						</div>
						<div class="modal-body">
							<div>
								<h2>여행 코스 추천</h2>
								 <a href="https://brunch.co.kr/@hotelscomkr/689">주소는
										여기!</a><br>
								<iframe width="560" height="315" src="https://www.youtube.com/embed/pjl_Kb-Uqqw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
								</div>
						</div>
						<div class="modal-footer">
							<button id="close5" type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
				<!--  -->
				
				<!-- 태안 모달 창 만들기 -->
				<div id="modalTaean"
					class="modal-dialog modal-dialog-scrollable modal ">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">태안 여행 코스</h5>
						</div>
						<div class="modal-body">
							<div>
								<h2>여행 코스 추천</h2>
								 <a href="https://brunch.co.kr/@hotelscomkr/1102">주소는
										여기!</a><br>
								<iframe width="560" height="315" src="https://www.youtube.com/embed/xWqGTXzIa-M" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
								</div>
						</div>
						<div class="modal-footer">
							<button id="close6" type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
				<!--  -->
				
				<div class="text-center" style="font-size: 50px;">
					<strong>국내 패키지 여행 추천</strong>
				</div>

				<div class="carousel-inner">
					<div class="carousel-item active">
						<div
							class="card-wrapper container-lg d-flex  justify-content-around"
							style="padding: 30px">
							<div class="card  " style="width: 30rem; margin-right: 100px;">
								<img src="./assets/img/seoul.jpg" class="card-img-top" alt="...">
								<div class="card-body" style="margin-top: 20px;">
									<h5 class="card-title">서울</h5>
									<!-- 버튼 추가 -->
									<input id="seoulmodalbtn" class="btn btn-primary" type="button"
										value="여행 코스 보기">

								</div>
							</div>
							<div class="card" style="width: 30rem; margin-right: 100px;">
								<img src="./assets/img/busan.jpg" class="card-img-top" alt="...">
								<div class="card-body" style="margin-top: 20px;">
									<h5 class="card-title">부산</h5>
									<!-- 버튼 추가 -->
									<input id="busanmodalbtn" class="btn btn-primary" type="button"
										value="여행 코스 보기">

								</div>
							</div>
							<div class="card" style="width: 30rem;">
								<img src="./assets/img/jeju.jpg" class="card-img-top" alt="...">
								<div class="card-body" style="margin-top: 20px;">
									<h5 class="card-title">제주</h5>
									<!-- 버튼 추가 -->
									<input id="jejumodalbtn" class="btn btn-primary" type="button"
										value="여행 코스 보기">

								</div>
							</div>
						</div>
					</div>

					<div class="carousel-item active">
						<div
							class="card-wrapper container-lg d-flex  justify-content-around"
							style="padding: 30px">
							<div class="card  " style="width: 30rem; margin-right: 100px;">
								<img src="./assets/img/강릉.png" class="card-img-top" alt="...">
								<div class="card-body" style="margin-top: 20px;">
									<h5 class="card-title">강릉</h5>
									<!-- 버튼 추가 -->
									<input id="Gangneung" class="btn btn-primary" type="button"
										value="여행 코스 보기">

								</div>
							</div>
							<div class="card" style="width: 30rem; margin-right: 100px;">
								<img src="./assets/img/가평.png" class="card-img-top" alt="...">
								<div class="card-body" style="margin-top: 20px;">
									<h5 class="card-title">가평</h5>
									<!-- 버튼 추가 -->
									<input id="Gapyeong" class="btn btn-primary" type="button"
										value="여행 코스 보기">

								</div>
							</div>
							<div class="card" style="width: 30rem;">
								<img src="./assets/img/태안.png" class="card-img-top" alt="...">
								<div class="card-body" style="margin-top: 20px;">
									<h5 class="card-title">태안</h5>
									<!-- 버튼 추가 -->
									<input id="Taean" class="btn btn-primary" type="button"
										value="여행 코스 보기">

								</div>
							</div>
						</div>
					</div>

					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleControls" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleControls" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>
	</section>
	<!-- Projects-->
	<section class="projects-section bg-light" id="free">
		<!--지도-->
		<div
			style="display: flex; justify-content: center; align-items: center;">
			<div class="col-md-9 map">
				<div class="text-center" style="font-size: 50px;">
					<strong>전국 관광지 정보</strong>
				</div>
				<!-- 관광지 검색 start -->
				<form class="d-flex my-3 box" onsubmit="return false;" role="search">
					<select id="search-area" class="form-select me-2">
						<option value="0" selected>검색 할 지역 선택</option>
					</select> <select id="search-content-id" class="form-select me-2">
						<option value="0" selected>관광지 유형</option>
						<option value="12">관광지</option>
						<option value="14">문화시설</option>
						<option value="15">축제공연행사</option>
						<option value="25">여행코스</option>
						<option value="28">레포츠</option>
						<option value="32">숙박</option>
						<option value="38">쇼핑</option>
						<option value="39">음식점</option>
					</select> <input id="search-keyword" class="form-control me-2" type="search"
						placeholder="검색어" aria-label="검색어" />
					<button id="btn-search" class="btn btn-outline-success box"
						type="button">검색</button>
				</form>
				<!-- kakao map start -->
				<div id="map" class="mt-3" style="width: 100%; height: 700px"></div>
				<!-- kakao map end -->
				<div class="row">
					<table class="table table-sm" style="display: none">
						<thead>
							<tr>
								<th>대표이미지</th>
								<th>관광지명</th>
								<th>주소</th>
								<th>위도</th>
								<th>경도</th>
							</tr>
						</thead>
						<tbody id="trip-list"></tbody>
					</table>
				</div>
				<!-- 관광지 검색 end -->
			</div>
		</div>
	</section>
	<!-- Contact-->
	<section class="contact-section bg-black">
		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5">
				<div class="col-md-4 mb-3 mb-md-0">
					<div class="card py-4 h-100">
						<div class="card-body text-center"
							onclick="window.open('https://www.youtube.com/@KTOkorea')">
							<i class="fas fa-map-marked-alt text-primary mb-2"></i>
							<h4 class="text-uppercase m-0">YouTube</h4>
							<hr class="my-4 mx-auto" />
							<div class="small text-black-50">한국관광공사 유튜브</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 mb-3 mb-md-0">
					<div class="card py-4 h-100">
						<div class="card-body text-center"
							onclick="window.open('https://www.instagram.com/kto9suk9suk/')">
							<i class="fas fa-envelope text-primary mb-2"></i>
							<h4 class="text-uppercase m-0">Instargram</h4>
							<hr class="my-4 mx-auto" />
							<div class="small text-black-50">한국관광공사 인스타그램</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 mb-3 mb-md-0">
					<div class="card py-4 h-100">
						<div class="card-body text-center"
							onclick="window.open('https://www.facebook.com/9suk9suklive/?locale=ko_KR')">
							<i class="fas fa-mobile-alt text-primary mb-2"></i>
							<h4 class="text-uppercase m-0">FaceBook</h4>
							<hr class="my-4 mx-auto" />
							<div class="small text-black-50">한국관광공사 페이스북</div>
						</div>
					</div>
				</div>
			</div>
			<div class="social d-flex justify-content-center">
				<a class="mx-2" href="#!"><i class="fab fa-twitter"></i></a> <a
					class="mx-2" href="#!"><i class="fab fa-facebook-f"></i></a> <a
					class="mx-2" href="#!"><i class="fab fa-github"></i></a>
			</div>
		</div>
	</section>
	<!-- Footer-->
	<footer class="footer bg-black small text-center text-white-50">
		<div class="container px-4 px-lg-5">Copyright &copy; Your
			Website 2022</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=930b4d9dd864b2e0eeb90dba3f41e378&libraries=services,clusterer,drawing"></script>

	<!-- map창 띄우기 -->
	<script src="js/map.js"></script>
	<script>
	
        // 서울 모달 창 버튼 액션 수행
        const modalSeoul = document.querySelector('#modalSeoul');
        const seoulmodalbtn = document.querySelector('#seoulmodalbtn');

        seoulmodalbtn.addEventListener('click', () => {
            modalSeoul.style.display = 'flex';
        });

        let closeBtn = document.querySelector('#close');
        
        closeBtn.addEventListener('click', () => {
            modalSeoul.style.display = 'none';
        });

        // 부산 모달 창 버튼 액션 수행
        const modalBusan = document.querySelector('#modalBusan');
        const busanmodalbtn = document.querySelector('#busanmodalbtn');

        busanmodalbtn.addEventListener('click', () => {
            modalBusan.style.display = 'flex';
        });
        
        let closeBtn2 = document.querySelector('#close2');

        closeBtn2.addEventListener('click', () => {
            modalBusan.style.display = 'none';
        });

        // 제주 모달 창 버튼 액션 수행
        const modalJeju = document.querySelector('#modalJeju');
        const jejumodalbtn = document.querySelector('#jejumodalbtn');

        jejumodalbtn.addEventListener('click', () => {
            modalJeju.style.display = 'flex';
        });
        
        let closeBtn3 = document.querySelector('#close3');

        closeBtn3.addEventListener('click', () => {
            modalJeju.style.display = 'none';
        });
        
        
     // 강릉 모달 창 버튼 액션 수행
        const modalGangneung = document.querySelector('#modalGangneung');
        const Gangneungmodalbtn = document.querySelector('#Gangneung');

        Gangneungmodalbtn.addEventListener('click', () => {
        	modalGangneung.style.display = 'flex';
        });

        let closeBtn4 = document.querySelector('#close4');
        
        closeBtn4.addEventListener('click', () => {
        	modalGangneung.style.display = 'none';
        });
        
     // 가평 모달 창 버튼 액션 수행
        const modalGapyeong = document.querySelector('#modalGapyeong');
        const Gapyeongmodalbtn = document.querySelector('#Gapyeong');

        Gapyeongmodalbtn.addEventListener('click', () => {
        	modalGapyeong.style.display = 'flex';
        });

        let closeBtn5 = document.querySelector('#close5');
        
        closeBtn5.addEventListener('click', () => {
        	modalGapyeong.style.display = 'none';
        });
        
        
        
        // 가평 모달 창 버튼 액션 수행
        const modalTaean = document.querySelector('#modalTaean');
        const Taeanmodalbtn = document.querySelector('#Taean');

        Taeanmodalbtn.addEventListener('click', () => {
        	modalTaean.style.display = 'flex';
        });

        let closeBtn6 = document.querySelector('#close6');
        
        closeBtn6.addEventListener('click', () => {
        	modalTaean.style.display = 'none';
        });
    </script>
</body>

</html>