<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../include/header.jsp" %> 
<%@ include file="../include/include.jsp" %> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {
		margin: 190px auto;
		padding: 0px;
	}
	a {
		color: white;
    	font-size: 18px;
	}
	#write_all {
		width: 100%
	}
	#write_background {
		padding: 40px 0 0;
		width: 1000px;
	    margin: 10px auto;
	  	border: 1px solid #ddd;
	}
	#write_main {
		padding: 30px 0 10px;
   		font-size: 40px;
    	text-align: center;
	}
	#write_title {
		font-size: 24px;
		display: inline-block;
		text-align: center;
		width: 1000px;
		margin: 10px auto;
		border: 1px solid #ddd;
		padding: 25px 0 25px;
	}
	#input_title {
		width: 700px;
		height: 30px;
		font-size: 18px;
	}
	#write_body {
		font-size: 24px;
		display: inline-block;
		text-align: center;
		width: 1000px;
		margin: 10px auto;
		border: 1px solid #ddd;
	}
	#content {
		width: 800px;
		height: 300px;
		position: relative;
		font-size: 20px;
	}
	#write_body_cont {
		position: absolute;
  	    padding: 130px 0 0 50px;
	}
	#write_body_input {
		padding-left: 90px;
	}
	#write_bar {
		height: 40px;
    	border: 1px solid #eee;
    	text-align: center;
    	line-height: 2.5;
	}
	.bar_fix {
		display: inline-block;
		padding: 0 20px;
		margin: 0 20px;
		background-color: #8D6E8D;
	}
	.error {
		display: none;
		color: red;
		font-size: 16px;
		padding-top: 20px;
	}
	#writer {
		display: none;
	}
	.btn-file {
		width: 80px;
		height: 30px;
		background-color: #8D6E8D;
		color: white;
		
		border-radius: 10px;
	}
</style>

<script type="text/javascript" src="<%=path%>/smarteditor/js/service/HuskyEZCreator.js" charset="uft-8"></script>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">


	$(document).on("click", ".join", function(elClickedObj){
	
		var title = $("#input_title").val();
		// 스마트에디터로 content부분 값 넘겨받는 부분
		oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
		
		if(title == "") {
			$("#input_title").focus();
			$(".error").css("display", "block");
			return false;
		}
		form.submit();
	
	});

	
	$(document).on("click", ".btn-file", function(){
		
		$("#uploadfile").click();
	});
	
	$(document).on("change", "#uploadfile", function(){
		var filesize = this.files[0].name;
		if(filesize.length < 1) {
			$("#file-name").text("선택된 파일 없음");
			$("#close_btn").css("display", "none");
		} else {
			var filename = this.files[0].name;
			$("#file-name").text(filename);
			$("#close_btn").css("display", "block");
		}
		
	});
	
	$(document).on("click", "#close_btn", function(){
		
		$("#uploadfile").replaceWith($("#uploadfile").clone(true));
		$("#uploadfile").val("");
		$("#file-name").text("선택된 파일 없음");
		$("#close_btn").css("display", "none");
	});
	
	
	

</script>
</head>
<body>
	<div id="write_all">
		<form action="boardInsertPlay.bizpoll" method="POST" id="form" name="form" enctype="multipart/form-data">
			<div id="write_background">
				<div id="write_main">
				<span>게시판 글쓰기</span>
				</div>
				<div id="write_title">
					<input type = "text" id="writer" name="writer" value="${sessionScope.loginUser.id}">
					<span id="title" >제목</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" id="input_title" name="title">
					<span class="error">제목을 입력해 주세요.</span>
				</div>
				<div id="write_body">
					<!-- <div id="write_body_cont">
						<span id="body">내용</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</div> -->
					<div id="write_body_input">
						<textarea id="content" name="content" rows="10" cols="100"></textarea>
					</div>
					
				</div>
				<div id="write_bar">
					<div>
						<input type="file" name="uploadfile" id="uploadfile" style="display:none;">
						<input type="button" class="btn btn-file" value="파일선택">
						<span class="files" id="file-name" style="height: 29px; border: none;">선택된 파일 없음</span>
						<i class="fa fa-close" id="close_btn" style="display:none;"></i>
					</div>
			
					<button class="bar_fix"><a href="">목록</a></button>
					<button class="bar_fix join"><a href="#">등록</a></button>
				</div>
			</div>
		</form>
	</div>
	<script type="text/javascript">
		var oEditors = [];
		nhn.husky.EZCreator.createInIFrame({
			oAppRef: oEditors,
			elPlaceHolder: "content",
			sSkinURI: "<%=path%>/smarteditor/SmartEditor2Skin.html",
			fCreator: "createSEditor2"
		});
	</script>
	
	
</body>
</html>