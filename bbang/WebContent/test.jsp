<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String referer = request.getHeader("referer");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
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
					$("#err_check_msg").text("ID나 PW가 등록되지 않은 회원입니다.");
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
	<form action="LoginPlay.bizpoll" method="POST" name="frm_login" id="frm_login">
				<div class="div_input" id="naver_id">
					<input type="text" placeholder="아이디" id="inputid" name="inputid">
				</div>
				<div class="div_input" id="naver_pw">
					<input type="password" placeholder="비밀번호" id="inputpw" name="inputpw">
					
				</div>
				
				<div id="err_check">
					<span id="err_check_msg"></span>
				</div>
				<div><a href="#" id="btn_login">로그인</a></div>
			</form>
</body>
</html>