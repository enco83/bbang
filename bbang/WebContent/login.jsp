<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
   <%@ include file="include/include.jsp" %>  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
   <!-- 로그인 시 이전페이지로 돌아가기 referrer --> 
<%
	String referer = request.getHeader("referer");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>bbang 로그인 페이지</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Do+Hyeon');
* {
	font-family: 'Do Hyeon', sans-serif;
}
	body {
	
		margin: 0;
		padding: 0;
		background-color: #white;
		font-family: 'Nanum Gothic', sans-serif;
	}
	a {
		text-decoration: none;
	}
	ul {
		list-style-type: none;
	}
	
	#content_layout {
		width: 460px;
		margin: 0 auto;
		background-color: white;
		position: relative;
	}
	#header_div img {
		width: 300px;
		height: 130px;
		display: block;
		padding: 60px 0px;
		margin: auto;
	}
	
	/* Section(그룹로그인, input(id,pw), 로그인버튼, find) */
	#group_login {
		color: #8c8c8c;
		font-size: 11px;
		text-align: right;
		margin: 7px;
	}
	#group_login > a {
		color: inherit;
	}
	.div_input {
		background-color: white;
		border: 1px solid #dadada;
		width: 408px;
		height: 29px;
		margin-bottom: 14px;
		padding: 10px 35px 10px 15px;
		cursor: pointer;
	}
	#ckpw {
		
	}
	.input_login {
		width: 408px;
		height: 30px;
		border-width: 0px;
		padding: 7px 0px 6px 0px;
		cursor: pointer;
	}
	#btn_login {
		width: 460px;
		height: 59px;
		font-size: 22px;
		text-align: center;
		background-color: #3E173E;
		color: white;
		display: block;
		padding-top: 2px;
		line-height: 59px;
	}
	table {
		width: 100%
	}
	td {
		height: 26px;
	}
	#state {
		font-size: 13px;
		position: relative;
	}
	#state > input {
		visibility: hidden;
		position: absolute;
		right: 1px;
		width: 22px;
		height: 22px;
		margin-top: -11px;
	}
	#state > label {
		background: url('img/check_off.gif') no-repeat;
		padding-left: 30px;
		display: block;
		height: 26px;
		line-height: 26px;
	}
	#state > input:checked +label {
		background-image: url('img/check_on.gif');
	}
	#secure {
		text-align: right;
		font-size: 12px;
	}
	#ip_ud {
		color: #747474;
	}
	#ip_ud > a {
		color: inherit;
	}
	#off {
		font-weight: bold;
		width: 22px;
		text-align: left;
		display: inline-block;
	}
	.si {
		color: #D5D5D5;
	}
	#login_ud {
		color: #747474;
		text-decoration: underline;
	}
	#login_ud > a {
		color:inherit;
	}
	#secure img {
		vertical-align: bottom;
	}
	hr {
		width: 98%;
		margin: 20px auto;
		border: thin solid #EAEAEA;
	}
	#member {
		color: #8C8C8C;
		font-size: 12px;
		text-align: center;
	}
	#member > a {
		color: inherit;
	}
	#macketing {
		width: 100%;
	}
	#naver_img {
		width: 460px;
		display: block;
		margin: 47px 0px 15px 0px;
	}
	#footer {
		padding: 15px 0;
	}
	#footer * {
		font-size: 12px;
		line-height: normal;
		list-style: none;
		color: #333;
	}
	#footer > ul {
		text-align: center;
		margin: 0 auto 9px;
	}
	#footer > ul > li {
		display: inline-block;
		border-left: 1px solid #dadada;
		padding: 0 5px 0 7px;
	}
	#footer > ul > li:first-child {
		border-left: 0px!important; /* 최우선으로 CSS 적용(root) */
									/* 남발해서 사용 x */
									/* CSS 속성으로 해결하고, 최우에 사용할 것을 권장 */
	}
	#address {
	margin: 0 auto;
	text-align: center;
	}
	#address * {
		font: 9px verdana;
	}
	#addr_logo {
		width: 30px;
		height: 30px;
		vertical-align: middle;
	}
	#address a {
		font-weight: bold;
	}
	a:hover {
		text-decoration: underline;
	}
	#footer > ul > li:hover {
		color: #1fbc02;
	}
	#err_check_msg {
		display: inline-block;
		width: 428px;
		height: 24px;
		font-size: 16px;
		
		line-height: 24px;
		color: #f46665;
		padding: 0px 15px;
		text-align: center;
	}
	#err_check {
		display: none;
	}
	/* #modal {
		z-index: 3;
		position: fixed;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		overflow: auto;
		background-color: rgba(0,0,0,0.4);
		padding-top: 120px;
	} */
	#close_btn {
		position: absolute;
		right: 15px;
		top: 15px;
		color: black!important;
		font-size: 25px;
		padding: 5px;
		display: block;
	}
	
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#inputid").focus(function(){
			$("#naver_id").css("border", "1px solid #2b90d9");
		});
				
		$("#inputpw").focus(function(){
			$("#naver_pw").css("border", "1px solid #2b90d9");
		});
		
	 	$("#inputid").blur(function(){
			$("#naver_id").css("border", "1px solid #dadada");
		});
		
		$("#inputpw").blur(function(){
			$("#naver_pw").css("border", "1px solid #dadada");
		}); 
		
		/* 
		focus : 초점이 가게하는것
		blur : 초점이 해제하는 것 */
		$("#off").click(function(){
			var val = $("#off").text();
			
			if(val == "OFF"){
				$("#off").text("ON").css("color", "#1fbc02");
			} else {
				$("#off").text("OFF").css("color", "black");
			}
			
		});

		
		$(document).on("click", "#ckpw", function(){
			var pw = $("#inputpw").attr("type");
			if(pw === "password"){/* === 타입까지 비교 */
				$("#inputpw").attr("type", "text");
			} else {
				$("#inputpw").attr("type", "password");
			}
		});
		
	
		$("#close_btn").click(function(){
			$("#inputid").val("");
			$("#inputpw").val("");
			
			$("#modal").css("display","none");
		})
		/* id와pw 중 하나라도 값이 없으면 경고문 출력 */

	});
	
	$(document).on("click","#btn_login", function(){
		var val1 = $("#inputid").val();
		var val2 = $("#inputpw").val();
		if(val1 != "" && val2 != "") {
			
			$.ajax({
				url : "LoginPlay.bizpoll",
				type : "POST",
				dataType : "json",
				data : "id=" + val1 + "&pw=" + val2,
				success : function(data) {
				
					if(data.message == "1") {
						alert("로그인 성공");
						location.href="<%=referer%>"; 
					} else {
						alert("로그인 실패");
						$("#err_check_msg").text("아이디 또는 패스워드가 일치하지않습니다.");
						$("#err_check").css("display","block");
					}
				},
				error:function(){
					alert("System Error!!");
				}
			});
			
		} else {
			$("#err_check_msg").text("ID와 PW를 모두 입력해 주세요.");
			$("#err_check").css("display","block");
		}
	});
			
	
	
	
</script>
</head>
<body>

	<div id="modal">
	<div id="content_layout">
		<!-- <span id="close_btn"><i class="fa fa-close"></i></span> -->
		<header>
			<div id="header_div">
				<a href="index.bizpoll" id="logo">
					<img alt="bbang logo" src="img/free_horizontal_on_white_by_logaster_4d1d4d.png">
				</a>
			</div>
		</header>
		
		
			<form action="LoginPlay.bizpoll" method="POST" name="frm_login" id="frm_login">
				<div class="div_input" id="naver_id">
					<input type="text" placeholder="아이디" id="inputid" name="inputid" class="input_login">
				</div>
				<div class="div_input" id="naver_pw">
					<input type="password" placeholder="비밀번호" id="inputpw" name="inputpw" class="input_login">
					
				</div>
					<div>
					<span><input type="checkbox" id="ckpw">보이기</span>
					</div>
				<div id="err_check">
					<span id="err_check_msg"></span>
				</div>
				<div><a href="#" id="btn_login">로그인</a></div>
			</form>
			<div>
				<table>
					<tbody>
						<tr>
							<td id="state">
								<input type="checkbox" id="loginck">
								<label for="loginck" class="label1">로그인 상태 유지
								</label>
								
							</td>
							
						</tr>
					</tbody>
				</table>
			</div>
			
			<div>
				<hr>
			</div>
			<div id="member">
				<a href="#">아이디 찾기</a>
				&nbsp;
				<span class="si">|</span>
				&nbsp;
				<a href="#">비밀번호 찾기</a>
				&nbsp;
				<span class="si">|</span>
				&nbsp;
				<a href="#">회원가입</a>
			</div>	

	</div>
	
	</div>
</body>
</html>
<%@ include file="include/footer.jsp" %>