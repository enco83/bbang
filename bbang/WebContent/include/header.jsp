<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
 	String path = request.getContextPath(); // 컨텍스트 경로
 %>
<!DOCTYPE html>
<html>
<head>

<link rel="icon" href="img/favicon.ico" type="image/x-icon">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>bbang header</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Do+Hyeon');
* {
	font-family: 'Do Hyeon', sans-serif;
}
	body, ul {
		margin: 0px;
		padding: 0px;
	}
	ul {
		list-style-type: none; /* 헤더 목록의 ●표시를 없앤다 */
	}
	a {
		text-decoration: none;/* 해더 목록의 앵커 색을 없앤다 */
	}
	  #header_wrap {
		box-sizing: border-box;
		position: fixed;
		top: 0px;
		left: 0px;
		width: 100%;
		background-color: #3E173E;
		z-index: 100;
	} 
	/* header(로그인, 회원가입 마이페이지 고객센터) */
	#header_line1 {
		height: 30px;
		width: 100%; /* 가로 사이즈 전체화면 사용할 때   */
		background-color: #3E173E;
		box-sizing: border-box;
		/* box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),
					0 6px 20px 0 rgba(0,0,0,0.19); */
	
	}
	#header_line1_in {
		width: 70%;
		margin: 0 auto;
	}
	#header_line1_ul {
		float:right;/* ul목록을 오른쪽으로 이동 */
		list-style-type: none;
	}
	#header_line1_ul > li > a {/* 앵커 */
		color: white;
		font-size: 12px;
		font-weight: bold;
		height: 30px;
		padding: 0 10px;
		display: inline-block;
		line-height: 30px;
	}
	#header_line1_dropdown{
		box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2),
					0 6px 20px 0 rgba(0, 0, 0, 0.19);
		display: none;
		position: absolute;
		z-index: 1;
	}
	
	/*   li {
		float: left;  태그들을 좌측, 우측 유동배치  
		height: 30px;
		position: relative;
	}   */
	
	#header_line1_ul > li {
		float: left;/* 태그들을 좌측, 우측 유동 배치 */
		height: 30px;
		position: relative;
	}
	#header_line1_ul > li:hover {/* li태그에 마우스를 올렸을 때 동작하는 내용*/
		background-color: #fcbe32;
		boder-top: 5px solid ;
	}
	#header_line1_ul > li:hover #header_line1_dropdown {
		/* #header_line1_ul > li:hover 했을 때
		#header_line1_dropdown 어떻게 변경할지 적용 */
		display: block;
	}
	
	#header_line1_dropdown > a {
		display: block;
		font-size: 13px;
		/* padding-left: 10px; 왼쪽 여백 10px */
		background-color: #3E173E;
		color: white;
		/* padding: 5px 0px; 위, 아래 여백 5px 좌우측 여백 0px */
		border-bottom: 1px solid white;
		padding: 5px 10px;
		width: 84px;
		
	}
	#header_line1_dropdown > a:hover{
		background-color: #fcbe32;
		text-decoration: none;
		display: inline-block;
	}
	
	#header_line1_mypage {
		width: 84px;
		text-align: center;
	}
	/* 로고이미지 검색창 */
	#header_line2 {
		height: 80px;
		width: 70%;
		margin: 15px auto;
		box-sizing:border-box;
		
	}
	 
	#header_line2 img {
		display: inline-block;
		margin-top: 5px;
		height: 80px;
		width: 180px;
		padding-left: 550px;
	}
	#header_line2_wrap_search {
		height: 34px;
		display: inline-block;
		float: right;
		padding-top: 30px;
	}
	#header_line2_search {
		border: 2px solid #white;
		height: 34px;
		box-sizing: border-box;
		position: relative;
	}
	#search_keyword {
		width: 353px;
		height: 30px;
		font-size: 13px;
		box-sizing: border-box;
		border: 0px; /* input으로 하면 저절로 테두리 선 생기는데 테두리선 제거 */
		padding-left: 10px;
		border-radius: 5px;
	}
	#search_btn {
		width: 55px;
		height: 30px;
		background-color: #f8ca00;
		color: white;
		font-size: 13px;
		border: 0px;
		position: absolute;
		right: 0px;
		top: 0px;
		border-radius: 5px;
	}
	hr {
		width: 98%;
		margin: 0 auto;
		border: thin solid #EAEAEA;
	}
	/* 네비게이션 메뉴바  */
	#header_line3 {
		width: 100%;
		height: 50px;
		background-color: #3E173E;
		box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2),
					0 4px 20px 0 rgba(0,0,0,0.19);
		box-sizing:border-box;  /* 크기 고정 */
		position: absolute;
		padding-left: 200px;
		
	}

	#header_line3_ul > li {
		float: left;
		box-sizing: border-box;
		height: 49px;
		position: relative;
	}
	#header_line3_ul > li:hover {
		background-color: #fcbe32;
		border-top: 5px solid white;
		
		
	}
	#header_line3_ul > li:hover #dropdown {
		display: block;
	}
	#header_line3_in {
		width: 80%;
		margin: 0 auto;
	}

	#header_line3_ul > li > a {
		width:180px;
		color: white;
		line-height: 49px;
		font-size: 25px;
		padding: 0 25px;
		display: inline-block;
		text-align: center;
 	}
	#header_line3_dropdown {
		position : absolute;
		background-color: #3E173E;
		border-bottom: 1px solid white;
		display: none;
		width: 230px
	}#header_line3_dropdown > a {
		display: block;
		color: white;
		
		line-height: 49px;
		font-size: 20px;
		padding: 0 13px; 
		text-align: center;
		border-bottom: 1px solid white;

	}
	#header_line3_dropdown > a:hover{
		background-color: #fcbe32;
		
		
	}
	#header_line3_ul > li:hover #header_line3_dropdown {
		/* #header_line1_ul > li:hover 했을 때
		#header_line1_dropdown 어떻게 변경할지 적용 */
		display: block;
	}
	#dropdown {
		position: absolute;
		background-color: #3E173E;
		display: none;
		width: 230px;
	}
	#dropdown2 {
		position: absolute;
		left: 206px;
		top: 0px;
		display:none;
	}
	#dropdown2 > a {
		background-color: #2b90d9;
		display: block;
		color: white;
		line-height: 49px;
		text-align: center;
		padding: 0px 13px;
		font-size: 25px;
		height: 49px;
		border-bottom: 1px solid white;
	}
	#dropdown2 > a:hover {
		background-color: #fcbe32;
	}
	#dropdown > ul > li > a {
 	 	display: block;
  		color: white;
  		line-height: 49px;
  		font-size: 20px;
  		padding: 0 13px;
  		text-align: center;
  		border-bottom: 1px solid white;
	}
	#dropdown > ul > li:hover {
		background-color: #fcbe32;
	}
	#dropdown > ul > li:hover #dropdown2 {
		display: block;
	}
	#dropdown > ul> li {
		position: relative;
	}#header_id {
		color: white;
	    font-size: 12px;
	    font-weight: bold;
	    height: 30px;
	    padding: 0 10px;
	    display: inline-block;
	    line-height: 30px;
	}
	
	
</style>
</head>
<body>
	<header>
		<div id="header_wrap">
			<div id="header_line1">
				<div id="header_line1_in">
					<ul id="header_line1_ul">
						<c:choose>
							<c:when test="${empty sessionScope.loginUser}">
								<li><a href="<%=path%>/login.bizpoll">로그인</a></li>
								<li><a href="<%=path%>/constract.bizpoll">회원가입</a></li>
							</c:when>
							<c:otherwise>
								<li id = "header_id">
									${sessionScope.loginUser.name}
									(${sessionScope.loginUser.id})
								</li>
								<li><a href="<%=path%>/loginOut.bizpoll">로그아웃</a></li>
							</c:otherwise>
						</c:choose>
						<li>
							<a id="header_line1_mypage" href="">마이페이지▼</a>
							<div id="header_line1_dropdown">
								<a href="#">포인트 조회</a>
								<a href="#">보관함</a>
								<a href="#">쪽지함</a>
								<a href="<%=path%>/memberUpdate.bizpoll">내정보 수정</a>
								<a href="<%=path%>/pwUpdate.bizpoll">비밀번호 수정</a>
								<a href="<%=path%>/memberdelete.bizpoll">회원탈퇴</a>
							</div>
						</li>
						<li><a href="">고객센터</a></li>
					</ul>
				</div>
				
			</div>
			<div id="header_line2">
				<a href="<%=path%>/index.bizpoll">
				<img id="header_logo" src="<%=path%>/img/bbang_logo3.png" alt="로고">
				</a>
				<div id="header_line2_wrap_search">
					<div id="header_line2_search">
						<input id="search_keyword" type="text" placeholder="검색어를 입력하세요.">
						<input id="search_btn" type="submit" value="검색">
					</div>
				</div>
			</div>
			<hr>
				
			<div id="header_line3">
				<div id="header_line3_in">
					<ul id="header_line3_ul" >
						<li><a id="header_line3_basic" href="">소개</a>
							<div id="header_line3_dropdown">
							
							</div>
						</li>
						<li><a href="#">제품 안내</a>
							<div id="dropdown">
							<ul>
								<li><a href="">식빵</a></li>
								<li><a href="">케익</a></li>
								<li>
									<a href="">쨈</a>
									<div id="dropdown2">
                             			<a href="">목포</a>
                           				<a href="">통영</a>
                           				<a href="">거제</a>
                       				</div>
								</li>
							</ul>
						</div>
						
						
						</li>
						<li><a href="#">이벤트&제휴</a></li>
						<li><a href="<%=path%>/boardList.bizpoll">게시판</a></li>
						<li><a href="#">주문</a></li>
					</ul>
				</div>
				
			</div>
		
		</div>
		
		<div id="modal_main">
			
		
		
		</div>
		
		
		
		
	</header>
</body>
</html>