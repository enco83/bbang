<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="include/include.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>bbang Member</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');
	body, div, span, p {
		margin: 0;
		padding: 0;
		border: 0;
		font-size: 100%;
		font-style: normal;
		font: inherit;
		vertical-align: baseline;
	}
	div {
		display: block;
	}
	td {
	min-height: 38px;
	font-size: 15px;
	line-height: 38px;
	}

	

	
	#content_logo {
		width: 460px;
		margin: 0 auto;
	}
	#content {
		margin: 0 auto;
		width: 680px;
	}
	.content_input {
		margin: 0;
		font-size: 100%;
		vertical-align: baseline;
	}
	#contnt-basic{
		color: #1f1f1f;
		font-size: 16px;
		width: 100%;
		border-collapse: collapse;
	}
	#header_div img {
		width: 300px;
		height: 130px;
		display: block;
		padding: 45px 0 0;
		margin: auto;
	}
	th {
		padding: 5px 0;
		padding-left: 45px;
		width: 158px;
		position: relative;
		box-sizing: border-box;
		line-height: 38px;
		text-align: right;
		vertical-align: baseline;
	}
	td {
		width: 390px;
		padding: 0 0 10px 50px;
	}
	hr {
		display: block;
		margin: 15px 0 20px 50px;
		width: 85%;
		height: 2px;
		background-color: #ababab;
		
		
	}
	.input-text {
		margin: 0;
		padding: 0 10px;
		background-color: #fff;
		border: 1px solid #ababab;
		border-radius: 0;
		-webkit-appearance: none;
		height: 38px;
		box-sizing: border-box;
		color: #1f1f1f;
		font-weight: 400;
		font-size: 16px;
		line-height: 36px
	}
	.input-text1 {
	margin: 0;
		padding: 0 10px;
		background-color: #fff;
		border: 1px solid #ababab;
		border-radius: 0;
		-webkit-appearance: none;
		height: 38px;
		box-sizing: border-box;
		color: #1f1f1f;
		font-weight: 400;
		font-size: 16px;
		line-height: 36px;
	}
	#name {
		width: 100%;
	}
	.input-text-xl {
		width: 396px;
	}
	#mobile01 {
		width: 102px;
		z-index: 10;
	}
	#mobile02 {
		width: 102px!important;
	}
	#mobile03 {
		width: 102px!important;
	}
	.phone_info_size {
		width: 102px!important;
		vertical-align: middle;
		position: relative;
		display: inline-block;
		line-height: 1;
	}
	.phone_info_size > select {
		margin: 0;
		padding: 0 10px;
		background-color: #fff;
		color: #1f1f1f;
		border-radius: 0;
		
		
		box-sizing: border-box;
		-webkit-appearance: none;
		width: 102px;
		height: 38px;
		z-index: 10;
		
		font-weight: 400;
		font-size: 16px;
		line-height: 36px;
		position: relative;
	}
	
	
	
	#mm {
		width: 102px;
		z-index: 10;
		margin: 0;
		padding: 0 10px;
		background-color: #fff;
		color: #1f1f1f;
		border-radius: 0;
		
		
		box-sizing: border-box;
		-webkit-appearance: none;
		
		height: 38px;
		
		
		font-weight: 400;
		font-size: 16px;
		line-height: 36px;
		position: relative;
	}
	#bir_yy {
		width: 102px!important;
	}
	#bir_dd {
		width: 102px!important;
		
	}
	.bir_mm {
		width: 102px!important;
		vertical-align: middle;
		position: relative;
		display: inline-block;
		line-height: 1;
	}
	.birth_info > select {
		margin: 0;
		padding: 0 10px;
		background-color: #fff;
		color: #1f1f1f;
		border-radius: 0;
		box-sizing: border-box;
		-webkit-appearance: none;
		width: 102px;
		height: 38px;
		z-index: 10;
		font-weight: 400;
		font-size: 16px;
		line-height: 36px;
		position: relative;
	}
	
	
	
	
	
	.form-table .f-size-full {
    width: 100%;
	}
	.form-email.f-size-full {
    overflow: hidden;
	}
	.mb-10 {
    margin-bottom: 10px!important;
	}
	.form-email.f-size-full .input-text {
    float: left;
    width: 46.9696969697%;
    }
    .form-email > span {
    	line-height: 36px;
    }
    .form-email.f-size-full > span {
    float: left;
    margin: 0;
    width: 6.0606060606%;
    text-align: center;
	}
	.form-email .input-text {
		font-weight: 400;
		vertical-align: top;
		margin: 0;
		background: #fff;
		border-radius: 0;
		padding: 0 10px;
		background-color: #fff;
		
		box-sizing: border-box;
		color: #1f1f1f;
		font-size: 16px;
		line-height: 36px;
		
	}
	#email03 {
		width: 390px;
		z-index: 10;
		
		margin: 0;
		padding: 0 10px;
		height: 38px;
		background: #fff;
		border-radius: 0;
		padding: 0 10px;
		background-color: #fff;
		
		box-sizing: border-box;
		color: #1f1f1f;
		font-weight: 400;
		font-size: 16px;
		line-height: 36px;
		
	}
	.custom-select select {
		position: relative;
	}
	
	.oper {
		text-align: center;
	}
	#oper01 {
		width: 210px;
		height: 60px;
		font-size: 25px;
		line-height: 60px;
		border: 1px solid #ababab;
		color: #333;
		display: inline-block;
		padding: 0 7px;
		border-radius: 2px;
		box-sizing: border-box;
		text-decoration: none;
	}
	#oper02 {
		margin-left: 60px;
		width: 210px;
		height: 60px;
		font-size: 25px;
		line-height: 60px;
		background-color: #3E173E;
		color: #fff;
		display: inline-block;
		padding: 0 7px;
		border-radius: 2px;
		box-sizing: border-box;
		text-decoration: none;
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
	#pwUpdate {
		text-align: center;
		font-size: 25px;
	}
	.error {
	display: none;
	color: red;
	margin-bottom: -10px;
	}
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){

});


$(document).on("blur", "#pw1", function(){
	// 현재 비밀번호 입력받은 값이 일치한지 확인하는 과정
	var nowPw = $("#pw1").val();

	
	if(pw1 != "") {
		$.ajax({
			url : "pwCheck.bizpoll",
			type : "POST",
			dataType : "json",
			data : "id=${sessionScope.loginUser.id}&pw=" + nowPw,
			success : function(data) {
			
				if(data.message == "-1") {
			
					$("#pw1").parent().next().text("비밀번호가 일치합니다.").css("display", "block").css("color", "#F46665");
					$("#pw2").focus();
				} else {
			
					$("#pw1").parent().next().text("비밀번호가 일치하지 않음.").css("display", "block").css("color", "#0000FF");
					$("#pw1").focus();
				}
			},
			error:function(){
				alert("System Error!!");
			}
		});
	}
});



$(document).ready(function(){
	
	$(".input-text").blur(function(){
		/* input태그에 입력된 값을 가져옴  */
	var inputval = $(this).val();
		/* input 태그값이 없으면 경고메세지 출력  */
	if (inputval == "") {
		$(this).parent().next().css("display", "block");
	} else {
		$(this).parent().next().css("display", "none");
	}
		
	});	
	
	var mpw1 = $("#pw1");
	var mpw2 = $("#pw2");
	var mpw3 = $("#pw3");
	var checkTest = $("pw1").next().text();
	/* checkTest = 필수정보입니다.
				비밀번호가 일치하지 않습니다.
				비밀번호가 일치합니다. */
	
	
	
	
	
	
	
});
	
	$(document).on("click","#oper02", function(){
	/* 유효성 체크하는 값을 받아온다. */
	
	
	 	var form = $("#frm_mem");
		var mpw1 = $("#pw1");
		var mpw2 = $("#pw2");
		var mpw3 = $("#pw3");
		
		var pw1 = $.trim(mpw1.val());
		var pw2 = $.trim(mpw2.val());
		var pw3 = $.trim(mpw3.val());
		var checkTest = $("pw1").next().text();
		/* 영문자, 숫자 포함 특수문자 사용가능. 8~20자리 */
		var regPass =/^.*(?=.{8,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;
		
		if(pw2 == "") {
			mpw.focus();
			mpw.parent().next().text("필수정보 입니다.").css("display", "block");
			/* mpw.parent().css("margin-bottom", "30px"); */
			return false;
		} else if(!regPass.test(pw2)) {
			mpw2.focus();
			mpw2.parent().next().text("8~20자 이내 영문자, 숫자, 특수문자만 입력해주세요").css("display", "block");
			/* mpw.parent().css("margin-bottom", "30px"); */
			return false;
		} else if(pw3 == "") {
			mpw3.focus();
			mpw3.parent().next().text("필수정보입니다.").css("display", "block");
			/* mpw2.parent().css("margin-bottom", "30px"); */
			return false;
		} else if (pw2 != pw3) {
			mpw3.select();
			mpw3.parent().next().text("비밀번호가 일치하지 않습니다.").css("display", "block");
			/* mpw2.parent().css("margin-bottom", "30px"); */
			return false;
		} else if (checkTest != "비밀번호가 일치합니다.") {
			
			
		} 
		 if(pw2 == pw1) {
			mpw2.focus();
			mpw2.val("");
			mpw3.val("");
			mpw2.parent().next().text("현재 비밀번호와 동일합니다.").css("display", "block");
			/* pw2.parent().css("margin-bottom","30px"); */
			return false;
		}
		
		
	form.submit();

	});

		


</script>
</head>
<body>
	<div id="content_logo">
		<header>
			<div id="header_div">
				<a href="#">
					<img alt="꼬기 로고" src="img/free_horizontal_on_white_by_logaster_4d1d4d.png">
				</a>
			</div>
		</header>
	</div>
		
		<section>
		<div id="content">
		<form action = "memberpwplay.bizpoll" method = "POST" name = "frm_mem" id = "frm_mem">
		<div class="content_input">
			<h3 id="pwUpdate">비밀번호 수정</h3>
				
	            <table class="contnt-basic">
				
				<tr>
	                <th><i class="input-info"></i>아이디</th>
			        	<td>
			        		<div>
			        			<input type="text" readonly="readonly" value="${sessionScope.loginUser.id}" class="input-text input-text-xl checkpw" id="id" name="id" data-valid-name="아이디" data-valid-type="alphaNumeric" placeholder="">
			        		</div>
			           </td>
			            
	            </tr>
	            <tr>
	                <th><i class="input-info"></i>기존 비밀번호</th>
			        	<td>
			        		<div>
			        			<input type="password" class="input-text input-text-xl checkpw" id="pw1" name="pw1" data-valid-name="아이디" data-valid-type="alphaNumeric" placeholder="">
			        		</div>
			            	<span class="error">필수정보입니다.</span>
			           </td>
			            
	            </tr>
	            <hr>
	            <tr>
	                <th><i class="input-info"></i>새 비밀번호</th>
	                	<td>
	                		<div>
	                			<input type="password" class="input-text input-text-xl checkpw" id="pw2" name="pw2"  data-valid-name="비밀번호"  data-valid-type="password" placeholder="8~16자리 / 영문, 숫자, 특수문자 중 2가지 조합 필수">
	                		</div>
	                		<span class="error">필수정보입니다.</span>
	                	</td>
	            </tr>
	            <tr>
	            	<th><i class="input-info"></i>비밀번호 확인</th>
	                	<td>
	                		<div>
	                			<input type="password" class="input-text input-text-xl" id="pw3" name="pw3"  data-valid-name="비밀번호 확인" data-valid-type="password" placeholder="비밀번호 확인을 위해 재입력">  
	                		</div>
	                			<span class="error">필수정보입니다.</span>
	               			</td>
	            </tr>
	            </table>
	           <input type="hidden" name="updateId" value="${sessionScope.loginUser.id}">
	           <hr>
	            <div class="oper">
	            	<a href="#" id="oper01">취소</a>
	            	<a href="#" id="oper02">가입</a>
	            
	            </div>
			
			
            
		</div>
		</form>
	
		
		
		
	</div>
	</section>
		
</body>
</html>
<%@ include file="include/footer.jsp" %>