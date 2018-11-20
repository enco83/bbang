<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../include/header.jsp" %> 
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
	#wrap {
		width: 100%;
	
	}
	#all {
	    width: 1000px;
	    margin: 10px auto;
	  	border: 1px solid #ddd;
	}
	#title {
		padding: 30px 0 10px 20px;
		font-size: 25px;
	}
	#info {
		padding-left: 20px;
		height: 60px;
		line-height:60px;
		border-top: 1px solid #3E173E;
		border-bottom: 1px solid #3E173E;
		background-color: #8D6E8D;
		color: #fff;
	}
	#content {
		padding: 20px 50px;
    	font-size: 18px;
	}
	#choice {
		text-align: center;
		margin-top: 50px;
	}
	#good_btn {
		margin: 15px 6px;
    	width: 80px;
    	height: 80px;
    	display: inline-block;
	}
	#good_btn :hover {
		background-color: red;
		color: white;
	}
	#view_good {
		background: #F5F5F5;
	    padding-top: 14px;
	    border-radius: 50%;
	    width: 90px;
	    height: 80px;
	    text-align: center;
	    color: black;
	    font-size: 22px;
	    line-height: 30px;
	    display: inline-block;
	}
	.fa {
		display: inline-block;
	    font-size: inherit;
	    
	}
	#bar {
		height: 40px;
    	border: 1px solid #eee;
    	text-align: center;
    	line-height: 2.5;
	}
	.bar_fix {
		display: inline-block;
		padding: 0 20px;
	}
	#comment {
		padding-top: 10px;
	   	margin-left: 10px;
		border-bottom: 1px solid #333333;
		display: inline-block;
		font-size: 18px;
	}
	#reply_line {
		padding-top: 10px;
	}
	#reply_line :first-child.reply {
		border-top: 0px;
		margin-top: 0px;
		padding-top: 0px;
	}
	.reply {
	    border-top: 1px solid #eee;
	    margin: 0px 30px;
    	padding: 7px 0px 8px;
	}
	#wall {
		padding: 19px;
		/* margin-bottom: 20px; */
		background-color: #f5f5f5;
		/* border: 1px solid #e3e3e3; */
		text-align: center;
	}
	.sp {
		display: inline-block;
	    width: 25px;
	    text-align: center;
	    font-size: 11px;
	}
	
	@keyframes texColorAnimation {
		0% {color: red;}		/* 시작부분: 0% = from*/
		100% {color: white;}		/* 마지막부분: 100% = to */
	}
	.fa-paperclip {
		
		animation-name: texColorAnimation;  /* 설정할 애니메이션 이름 */
		animation-duration: 1s;				/* 1회 애니메이션 동작시간: 5초 */
		animation-iteration-count: infinite;/* 반복 횟수: 무한 반복 */
	}
	#clip {
		font-size: 18px;
	}
	#size_color{
		color: gray;
	}
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		/* 문서가 준비되면 댓글 목록을 조회하는 AJAX 실행 */
		comment_list();
	});
	
	$(document).on("click", ".reply_del", function(){
		var rno = $(this).attr("data_num");
		var bno = ${boardview.bno};
		
		$.ajax({
			type: "post",
			url: "replyDelete.bizpoll",
			data: "rno=" + rno +"&bno=" + bno ,
			success: function() {
				comment_list();
			},
			error: function() {
				alert("System Error!!!");
			}
	});
	
});
	
	
	
	
	
	$(document).on("click", "#reply_btn", function(){
		var reply = $("#replyInsert").val();
		
		if(reply == "") {
			$("#replyInsert").focus();
			$("#replyInsert").next().css("display","block");
			return false;
		} else {
			var bno = ${boardview.bno};
			$("#replyInsert").next().css("display","none");
			$("#re_bno").val(bno);
			
		}
		
		$.ajax({
			type: "post",
			url: "replyInsert.bizpoll",
			data: $("#frm_reply").serialize(),
			contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
			success: function() {
				comment_list();
				$("replyInsert").val("");
			},
			error: function() {
				alert("System Error!!!");
			}
		});
	
		
	});
	
	
	function comment_list() {
		$.ajax({
			type: "post",
			url: "commentlist.bizpoll",
			data: "bno=${boardview.bno}",
			success: function(result) {
				$("#commentlist").html(result);
			}
		});
		
	}


</script>
</head>
<body>
	<div id="wrap">
		<div id="all">
			<div id="main">
				<div id="title"><span>${boardview.title}</span></div>
				<div id="info">
					<span>${boardview.writer}</span>
					<span class="sp"></span>
					<i class="fa fa-comment"></i>
					${boardview.replycnt}
					<span class="sp"></span>
					<i class="fa fa-eye"></i>
					${boardview.viewcnt}
					<span class="sp"></span>
					<i class="fa fa-thumbs-up"></i>
					${boardview.goodcnt}
					
				</div>
				<div>
				
				</div>
				<div id="content">
					<span>
						${boardview.content}
					</span>
					<div id="choice">
						<span id="good_btn">
							<a href="" id="view_good">
								<b id="wr_good">${boardview.goodcnt}</b>
								<br>
								<i class="fa fa-thumbs-up"></i>
							</a>
						</span>
					</div>
				</div>
				
					<c:choose>
						<c:when test="${boardview.filesize == 0 }">
							<div id="wall">
								<span class="files" id="file-name" style="height: 24px; border: none;">선택된 파일 없음</span>
							</div>
						</c:when>
						<c:otherwise>
								<div id="file">
									&nbsp;<i id="clip" class="fa fa-paperclip"></i>&nbsp; ${boardview.filename}
									<span id="size_color">(<fmt:formatNumber value="${(boardview.filesize/1024)}" pattern="0.0"/>Kb)</span> 
								</div>
						</c:otherwise>
						
					</c:choose>
				
				
				
				
				<div id="bar">
					<div class="bar_fix"><a href="">답글</a></div>
				<!-- 로그인 당사자가 쓴 게시글에서만 수정 삭제 버튼이 나오게 만들기 -->		
					<c:if test="${sessionScope.loginUser.id == boardview.writer}">
						<div class="bar_fix"><a href="boardUpdate.bizpoll?bno=${boardview.bno}">수정</a></div>
						<div class="bar_fix"><a href="boardDelete.bizpoll?bno=${boardview.bno}">삭제</a></div>
					</c:if>
				
				</div>
				

			
			<div id="commentlist">
			</div>
			
			
		</div>
	
	</div>
	
</div>
</body>
</html>
<%@ include file="../include/footer.jsp" %>