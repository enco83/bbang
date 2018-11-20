<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp" %> 

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.replylist_textarea {
		font-size: 15px;
	}

	#reply_err_div {
		display: none;
		color: red;
	}

</style>
</head>
<script type="text/javascript">








	
	
</script>
<body>

					<div id="reply_line" >
				<c:choose>
						<c:when test="${empty sessionScope.loginUser}">
							<div id="wall">
								로그인한 회원만 댓글 등록이 가능합니다.
							</div>
						</c:when>
						<c:otherwise>
							<form action="replyInsert.bizpoll" method="POST" name="frm_reply" id="frm_reply">
								<div id="replay_write">
									<textarea class="replylist_textarea" name="replyInsert"
											id="replyInsert" rows="" cols="139"></textarea>
									
									<div id="reply_err_div">
										<span id="reply_err_span" >내용을 입력하세요.</span>
									</div>
									
									<div class="choice" id="button">
										<button type="submit" id="new" class="button" >
										<a id ="reply_btn" class="reply_btn" href="#">댓글등록</a>
										<input type="hidden" id="re_writer" name="re_wirter" value="${sessionScope.loginUser.id}">
										<input type="hidden" id="re_bno" name="re_bno">
									</div>
								</div>
							</form>
						</c:otherwise>
						
					</c:choose>
			</div>
			<div id="comment">
				<i class="fa fa-commenting"></i>
				<span class="reply_cnt">${replyList.size()}</span>
				 Comments
			</div>
		
			<div id="reply_line" >
					
				<c:forEach items="${replyList}" var="replyview">
				<div id="reply_body" class="reply">
					<div class = "reply_list">
						<div class = "replyline1">
							<a href="#" class="reply_writer">${replyview.writer}</a>
							<c:if test="${sessionScope.loginUser.id == replyview.writer}">
								<a href="#" class="reply_del" data_num="${replyview.rno}">삭제</a>
							</c:if>
							<fmt:formatDate value="${today}" pattern="yyyy-MM-dd" var="today2"/>
							<fmt:formatDate value="${replyview.regdate}" pattern="yyyy-MM-dd" var="regdate2"/>
							<span id="replylist_date">
								<i class="fa fa-clock-o"></i>
							
								<c:choose>
									<c:when test="${today2 == regdate2}">
										<fmt:formatDate pattern="HH:mm:ss" value="${replyview.regdate}"/>
									</c:when>
									<c:otherwise>
											<fmt:formatDate pattern="yyyy-MM-dd" value="${replyview.regdate}"/>
									</c:otherwise>
								</c:choose>
							</span>
						</div>
					
						<div class="reply_line2">
							<textarea class="replylist_textarea" name="replylist_textarea"
								id="replylist_textarea" rows="" cols="131" readonly="readonly">${replyview.content}</textarea>
						</div>				
					</div>	
					</div>
					<input type="hidden" id="rno" name="rno" value="${replyview.rno}">
				</c:forEach>	
					
					
			
				
				
					
				</div>
				
			</div>

</body>
</html>