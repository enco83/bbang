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
	
	.error {
		display: none;
		color: red;
		margin-bottom: -10px;
	}
	#join_title {
		text-align: center;
	}
	
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
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
		
	/* var pw1=$("pw1").val();
	var pw2=$("pw2").val();
	if(pw1 != "" && pw2 !="") {
		if(pw1 == pw2) {
			$(".checkpw").next().css("display","none";)
		} else {
			$(this).next().text("비밀번호가 일치하지 않습니다.").css("display", "block");
			$(this).val("");
			$(this).focus();
		}
		
	} */
	});
	
	/* @의 index 값 추출 -> 0~@:emailid @~끝까지:emailurl */
	var email_info = "${sessionScope.loginUser.email}";
	var index = email_info.indexOf('@');
	alert(index);
	var emailid = email_info.substring(0, index);
	var emailurl = email_info.substring(index + 1);
	
	$("#email01").val(emailid);
	$("#email02").val(emailurl);
	

	var birth_info = "${sessionScope.loginUser.birth}";
	var birth_yy = birth_info.substring(0, 4);
	var birth_mm = birth_info.substring(5, 7);
	var birth_dd = birth_info.substring(8);
	
	$("#bir_yy").val(birth_yy);
	$("#mm").val(birth_mm);
	$("#bir_dd").val(birth_dd);
	
	
	var phone_info = "${sessionScope.loginUser.phone}";
	var phone_1 = phone_info.substring(0, 3);
	var phone_2 = phone_info.substring(4, 8);
	var phone_3 = phone_info.substring(9);
	
	$("#mobile01").val(phone_1);
	$("#mobile02").val(phone_2);
	$("#mobile03").val(phone_3);
	
	
	
	
	var emailSelect = $("#email03");
	var emailTarget = $("#email02");
	emailSelect.bind("change", null, function() {
	    var host = this.value;
	    if (host != "etc" && host != "") {
	        emailTarget.attr("readonly", true);
	        emailTarget.val(host).change();
	    } else if (host == "etc") {
	        emailTarget.attr("readonly" , false);
	        emailTarget.val("").change();
	        emailTarget.focus();
	    } else {
	        emailTarget.attr("readonly", true);
	        emailTarget.val("").change();
	    }
	});
	
});
	$(document).on("click","#oper02", function(){
		/* 유효성 체크하는 값을 받아온다. */
		
		var 
		form = $("#frm_mem"),
		mid = $("#id"),
		mpw = $("#pw1"),
		mpw2 = $("#pw2"),
		mname = $("#name"),
		mbirth_yy = $("#bir_yy"),
		mbirth_mm = $("#mm"),
		mbirth_dd = $("#bir_dd"),
		mphone1 = $("#mobile01"),
		mphone2 = $("#mobile02"),
		mphone3 = $("#mobile03"),
		memailid = $("#email01"),
		memailurl = $("#email02");
		
		var birth = mbirth_yy.val() + "-" + mbirth_mm.val() + "-" + mbirth_dd.val();
		
		
	
		/* trim: 앞뒤 공백 제거 */
		var id = $.trim(mid.val());
		var regId =/^[a-zA-Z0-9]{4,12}$/; /* 4~12자까지 영대소문자와 숫자만 입력 가능 */
		
		if(id == "") {
			mid.focus();
			mid.parent().next().text("필수정보 입니다.").css("display", "block");
			/* mid.parent().css("margin-bottom", "30px"); */
			return false;
		} else if(!regId.test(id)) {
			
			mid.focus();
			mid.parent().next().text("영어와 숫자 조합을 입력하세요.").css("display", "block");
			/* mid.parent().css("margin-bottom", "30px"); */
			return false;
		}	/* ID 중복체크 */
		alert("test1");
		var pw = $.trim(mpw.val());
		var pw2 = $.trim(mpw2.val());
		/* 영문자, 숫자 포함 특수문자 사용가능. 8~20자리 */
		var regPass =/^.*(?=.{8,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;
		
		if(pw == "") {
			mpw.focus();
			mpw.parent().next().text("필수정보 입니다.").css("display", "block");
			/* mpw.parent().css("margin-bottom", "30px"); */
			return false;
		} else if(!regPass.test(pw)) {
			mpw.focus();
			mpw.parent().next().text("8~20자 이내 영문자, 숫자, 특수문자만 입력해주세요").css("display", "block");
			/* mpw.parent().css("margin-bottom", "30px"); */
			return false;
		} else if(pw2 == "") {
			mpw2.focus();
			mpw2.parent().next().text("필수정보입니다.").css("display", "block");
			/* mpw2.parent().css("margin-bottom", "30px"); */
			return false;
		} else if (pw != pw2) {
			mpw2.select();
			mpw2.parent().next().text("비밀번호가 일치하지 않습니다.").css("display", "block");
			/* mpw2.parent().css("margin-bottom", "30px"); */
			return false;
		}
		alert("test3");
		var name = $.trim(mname.val());
		
		if(name == "") {
			mname.focus();
			mname.parent().next().text("필수정보입니다.").css("display", "block");
			/* mname.parent().css("margin-bottom", "30px"); */
			return false;
		}
		 alert("test4");
		 var phone1 = $.trim(mphone1.val());
			var phone2 = $.trim(mphone2.val());
			var phone3 = $.trim(mphone3.val());
			
			var phone = phone1 + "-" + phone2 + "-" + phone3;
			
			/* var regPhone =/^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/; */
			/* var regPhone = /^(?:(010\d{4})|(01[1[6[7[8[9]\d{3,4}))(\d{4})$/; */
			/* var regPhone = /(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/g; */
			/* var regPhone = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/; */
				if(phone1 == "") {
				mphone1.focus();
				mphone1.parent().next().text("필수정보입니다.").css("display", "block");
				/* mname.parent().css("margin-bottom", "30px"); */
				return false;
			} else if(phone2 == "") {
				mphone2.focus();
				mphone2.parent().next().text("필수정보입니다.").css("display", "block");
				/* mname.parent().css("margin-bottom", "30px"); */
				return false;
			} else if(phone3 == "") {
				mphone3.focus();
				mphone3.parent().next().text("필수정보입니다.").css("display", "block");
				/* mname.parent().css("margin-bottom", "30px"); */
				return false;
			} else if($.isNumeric(phone2) == false) { //숫자값만 들어왔는지 체크
				mphone2.focus();
				mphone2.parent().next().text("숫자만 입력하세요.").css("display", "block");
				/* mname.parent().css("margin-bottom", "30px"); */
				return false;
			} else if($.isNumeric(phone3) == false) { //숫자값만 들어왔는지 체크
				mphone3.focus();
				mphone3.parent().next().text("숫자만 입력하세요.").css("display", "block");
				/* mname.parent().css("margin-bottom", "30px"); */
				return false;
			} else if(!regPhone.test(phone)) {
				mphone.focus();
				mphone.parent().children().next().text("올바른 값을 입력하세요.").css("display", "block");
				/* mname.parent().css("margin-bottom", "30px"); */
				return false;
			} 
			

	
		
		
		alert("test5");
		var mailid = $.trim(memailid.val());
		var mailurl = $.trim(memailurl.val());
		
		var email = mailid + "@" + mailurl;
		var regEmail =/([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		
		if(mailid == "") {
			memailid.focus();
			memailid.parent().next().text("필수정보입니다.").css("display", "block");
			/* memailid.parent().css("margin-bottom", "30px"); */
			return false;
		} else if(memailurl == "") {
			memailurl.focus();
			memailurl.parent().next().text("필수정보입니다.").css("display", "block");
			/* memailurl.parent().css("margin-bottom", "30px"); */
			return false;
		} 
		
		/* 우편번호 */
		/* var zipcodeVal = $.trim(zipcode.val());
		var addr1 = $.trim(maddr1.val());
		var addr2 = $.trim(maddr2.val()); */
		
		/* 유효성체크 값이 유효한값 확인 끝 */
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
		<h3 id="join_title">회원정보 수정</h3>
		<div id="content">
		<form action = "memberupdateplay.bizpoll" method = "POST" name = "frm_mem" id = "frm_mem">
		<div class="content_input">
			
				<hr>
	            <table class="contnt-basic">
				
	            <tr>
	                <th><i class="input-info"></i>아이디</th>
			        	<td>
			        		<div>
			        		<input type="text" class="input-text input-text-xl" id="id" name="id" data-valid-name="아이디" data-valid-type="alphaNumeric" value="${sessionScope.loginUser.id}" placeholder="영문, 숫자 사용가능하며, 6~20자 가능">
			        		</div>
			            	<span class="error">필수정보입니다.</span> 
			           </td>
			            
	            </tr>
	            <tr>
	                <th><i class="input-info"></i>비밀번호</th>
	                	<td>
	                		<div>
	                		<input type="password" class="input-text input-text-xl" id="pw1" name="pw"  data-valid-name="비밀번호"  data-valid-type="password" placeholder="8~16자리 / 영문, 숫자, 특수문자 중 2가지 조합 필수">
	                		</div>
	                		<span class="error">필수정보입니다.</span>
	                	</td>
	            </tr>
	            <tr>
	            	<th><i class="input-info"></i>비밀번호 확인</th>
	                	<td>
	                	<div>
	                	<input type="password" class="input-text input-text-xl" id="pw2" name="pw2"  data-valid-name="비밀번호 확인" data-valid-type="password" placeholder="비밀번호 확인을 위해 재입력">  
	                	</div>
	                		<span class="error">필수정보입니다.</span>
	               		</td>
	            </tr>
	            </table>
	            <hr>
	            <table class="contnt-basic2">
	           		 <tr>
						<th><i class="input-info"></i>이름</th>
	              			<td>
	              				<div>
	              				<input type="text" class="input-text" id="name" name="name" maxlength="20"  data-valid-name="이름" value="${sessionScope.loginUser.name}">
	              				</div>
	                  			<span class="error">필수정보입니다.</span>
	             			</td>
	           		 </tr>
	         
	           		 <tr>
	                	<th><i class="birthday"></i>생년월일</th>
	                        <td>
	                        	<div class="birthday_info">
	                            	
	                            		<input type="text" id="bir_yy" class="input-text" name = "biryy" placeholder="년(4자)" maxlength="4" data-valid-type="numeric" ><span> -</span>
	                                    
	                                    
	                                    
	                                 <div class="bir_mm">
	                                    <select id="mm" name = "birmm" value="" >
	                                     	<option value="">월</option>
	                                        <option value="01">01</option>
	                                        <option value="02">02</option>
	                                        <option value="03">03</option>
	                                        <option value="04">04</option>
	                                        <option value="05">05</option>
	                                        <option value="06">06</option>
	                                        <option value="07">07</option>
	                                        <option value="08">08</option>
	                                        <option value="09">09</option>
	                                        <option value="10">10</option>
	                                        <option value="11">11</option>
	                                        <option value="12">12</option>
	                                        
	                                      </select>
	                                     
	                                 </div>
	                                       <span>-</span>
	                                       <input type="text" id="bir_dd" class="input-text" name = "birdd" placeholder="일" maxlength="2" data-valid-type="numeric" >
	                             </div>
	                             <span class="error">필수정보입니다.</span> 
	                         </td>
	                         
	                 </tr>
	          
	            	 <tr>
	                	<th><i class="phone"></i>휴대전화</th>
	                        <td>
	                        	<div class="phone_info">
	                            	<div class="phone_info_size">
	                                     <select id="mobile01" name = "phone1"  data-valid-name="휴대전화" >
	                                     	<option value="" >선택</option>
	                                        <option value="010">010</option>
	                                        <option value="011">011</option>
	                                        <option value="016">016</option>
	                                        <option value="017">017</option>
	                                        <option value="018">018</option>
	                                        <option value="019">019</option>
	                                      </select>
	                                     
	                                 </div>
	                                       <span>-</span>
	                                       <input  id="mobile02" name = "phone2"class="input-text"  >
	                                       <span>-</span>
	                                       <input  id="mobile03" class="input-text" name = "phone3" >
	                             </div>
	                             <span class="error">필수정보입니다.</span>
	                         </td>
	                 </tr>                               
	                
	                 <tr>
	                     <th><i class="icon-required"></i>이메일</th>
	                         <td>
	                             <div class="form-email-extend">
	                                  <div class="form-email f-size-full mb-10">
	                                       <input type="text" class="input-text" style="ime-mode: disabled;" id="email01" name="email01" required data-valid-name="이메일" data-valid-type="emailId">
	                                       <span>@</span>
  	                                       <input type="text" class="input-text" id="email02" name="email02" required data-valid-name="이메일" readonly="readonly">
 	                                  </div>
									<span class="error">필수정보입니다.</span>
	                             	  <div class="custom-select f-size-full">
	                                 	 <select id="email03" name="email03">
	                                      	  <option value="" selected="selected">- 이메일 선택 -</option>
	                                      	  <option value="naver.com">naver.com</option>
	                                      	  <option value="daum.net">daum.net</option>
	                                      	  <option value="nate.com">nate.com</option>
	                                      	  <option value="hotmail.com">hotmail.com</option>
	                                      	  <option value="yahoo.com">yahoo.com</option>
	                                      	  <option value="empas.com">empas.com</option>
	                                       	 <option value="korea.com">korea.com</option>
	                                       	 <option value="dreamwiz.com">dreamwiz.com</option>
	                                       	 <option value="gmail.com">gmail.com</option>
	                                       	 <option value="etc">직접입력</option>
	                                  	</select>
	                            	 </div>
	                             </div>
	                        </td>                                    
	                     </tr>
	
	                       
	           </table>
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