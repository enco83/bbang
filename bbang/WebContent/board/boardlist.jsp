<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../include/header.jsp" %>    
<%@ include file="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {
		margin: 190px auto;
		padding: 0px;
	}
	a {
		text-decoration: none;
		color: #3E173E;
	}
	a:link {text-decoration: none;}
	#all {
		width: 100%
	}
	#all2 {
		width: 1000px;
		margin: 10px auto;
	}
	#title {
		padding: 30px 0 10px;
		font-size: 40px;
		text-align: center;
	}
	#nav {
		padding: 30px 0 15px;
	}
	.choice {
		font-size: 16px;
		display: inline;
		color: black;
	/* 	border: 1px solid black;
		border-radius: 10px;
		background-color: gray; */
	}

	.total_cnt{
		font-size: 12px;
		margin-left: 550px;
	}
	#total_cnt {
		font-size: 12px;
		color: #5795dd;
	}
	#button {
		
	}
	#write {
		color: white;
	}
	.choice a {
		padding-right: 10px;
		color : black;
	}
	#new {
		width: 70px;
		height: 30px;
		display: inline-block;
		font-size: 16px;
		border-radius: 10px;
		background-color: #f8ca00;
		color: #fff;
		cursor: pointer;
	}
	table {
		border-collapse: collapse;/* 선을 합치기 */
		margin: 0 auto;
	}
	talbe, th, td {
		border-bottom: 1px solid black;
		border-top: 1px solid black;
		text-align: center;
		height: 40px;
	}
	th {
		background-color: #8D6E8D;
		color: #fff;
	}
	#no {
		width: 50px;
	}
	#cont {
		width: 800px;
		padding-left: 20px;
		text-align: left !important; 
	}
	#name {
		width: 150px;
	}
	#date {
		width: 150px;
	}
	#click {
		width: 50px;
	}
	#search_bar {
		margin: 0 auto;
   		padding: 10px 0;
   		width: 370px;
	}
	#goodcnt {
		width: 50px;
	}
	#file {
		width: 50px;
	}
	#condition {
		text-align-last:center;
		margin : 5px 0;
		box-sizing: content-box;
		border-radius: 5px;
		font-size: 16px;
		cursor: pointer;
		display: inline-block;
	}
	#search {
		margin: 5px 0;
		padding: 1px 0;
		border-radius: 5px;
		font-size: 16px;
		display: inline-block;
	}
	#submit {
		width: 60px;
		height: 23px;
		display: inline-block;
		font-size: 16px;
		border-radius: 10px;
		background-color: #f8ca00;
		color: #fff;
		cursor: pointer;
	}
	#replycnt{
		color: gray;
	}

	@keyframes texColorAnimation {
		0% {color: red;}		/* 시작부분: 0% = from*/
		100% {color: white;}		/* 마지막부분: 100% = to */
	}
	.new_time {
		font-size: 12px;
		animation-name: texColorAnimation;  /* 설정할 애니메이션 이름 */
		animation-duration: 1s;				/* 1회 애니메이션 동작시간: 5초 */
		animation-iteration-count: infinite;/* 반복 횟수: 무한 반복 */
	}
	.pagination {
		padding: 20px 0 10px;
   		margin: 0px auto;
		text-align: center;
		
	}
	.left_right {
		cursor: pointer;
		width: 25px;
		line-height: 25px;
    	text-align: center;
  		text-decoration: none;
  		display:inline-block;
		border: 1px solid #8D6E8D;
  		border-radius: 5px;
  		color: #5795dd;
	}
	#btn_num {
		width: 25px;
		line-height: 25px;
    	font-size: 16px;
		display:inline-block;
    	cursor: pointer;
  		text-decoration: none;
  		border: 1px solid #8D6E8D;
  		border-radius: 5px;
	}
	.active {
		background-color: #8D6E8D;
		
		border-radius: 5px;
   		color: #5795dd;
	}

	
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		var code = $("#code").val();
		if(code == "new") {
			$("#orderNew").css("color", "#E71D36").css("font-weight", "bold").css("text-decoration", "underline");
		} else if(code == "good"){
			$("#orderGood").css("color", "#E71D36").css("font-weight", "bold").css("text-decoration", "underline");
		} else if(code == "reply") {
			$("#orderReply").css("color", "#E71D36").css("font-weight", "bold").css("text-decoration", "underline");
		} else if(code == "cnt") {
			$("#orderCnt").css("color", "#E71D36").css("font-weight", "bold").css("text-decoration", "underline");
		}
	});	
	
		
		

	$(document).on("click","#submit", function(){
		var keyword = $("#search").val();
		var flag = $("#condition").val();
		
		location.href="boardList.bizpoll?flag="+flag+"&keyword="+keyword;
	});
	

</script>
</head>
<body>
	<div id="all">
	<div id="all2">
	<div id="header">
		<div id="title">게시판</div>		
		<div id="nav">
			<div class="choice"><a href="boardList.bizpoll?flag=${flag}&keyword=${keyword}&key=new" id="orderNew">최신순</a></div>
			<div class="choice"><a href="boardList.bizpoll?flag=${flag}&keyword=${keyword}&key=good" id="orderGood">추천순</a></div>
			<div class="choice"><a href="boardList.bizpoll?flag=${flag}&keyword=${keyword}&key=reply" id="orderReply">댓글순</a></div>
			<div class="choice"><a href="boardList.bizpoll?flag=${flag}&keyword=${keyword}&key=cnt" id="orderCnt">조회순</a></div>
			<div class="choice total_cnt" >총 <span id="total_cnt">${pageMaker.totalCount}</span>개의 글이 있습니다.</div>
			
	
						<c:choose>
							<c:when test="${empty sessionScope.loginUser}">
								<div class="choice" id="button">
									<button type="submit" id="new" class="button" >
									<a id ="write" href="<%=path%>/login.bizpoll">글쓰기</a>
								</div>
							</c:when>
							<c:otherwise>
								<div class="choice" id="button">
									<button type="submit" id="new" class="button" >
									<a id ="write" href="<%=path%>/boardWrite.bizpoll">글쓰기</a>
								</div>
							</c:otherwise>
						</c:choose>
	
	
			
		
	
		<table>
			<tr>
				<th>No.</th><th>제목</th><th>작성자</th><th>작성일</th><th>추천수</th><th>조회수</th><th>첨부</th>
			</tr>
			
<%-- el태그
1. 변수
${변수명}
2. DTO 타입
${DTO.변수}
3. LIST 타입
foreach 반복문 돌면서 1줄씩 옮겨 담아서 출력 --%>
		
			<c:forEach items="${boardList}" var="bDto">
				<fmt:formatDate value="${today}" pattern="yyyy-MM-dd" var="today2"/>
				<fmt:formatDate value="${bDto.regdate}" pattern="yyyy-MM-dd" var="regdate2"/>
			<tr>
				<td id="no">${bDto.bno}</td>
				<td id="cont"><a href="boardViewcnt.bizpoll?bno=${bDto.bno}">${bDto.title}</a><span id="replycnt">[${bDto.replycnt}]</span>
					<c:if test="${today2 == regdate2}">
						<span class="new_time">New</span>
					</c:if>
				</td>
				<td id="name">${bDto.writer}</td>
				<td id="date">
				<c:choose>
					<c:when test="${today2 == regdate2}">
						<fmt:formatDate pattern="HH:mm:ss" value="${bDto.regdate}"/>
					</c:when>
					<c:otherwise>
						<fmt:formatDate pattern="yyyy-MM-dd" value="${bDto.regdate}"/>
					</c:otherwise>
				</c:choose>
				
				</td>
				<td id="goodcnt">${bDto.goodcnt}</td>
				<td id="click">${bDto.viewcnt}</td>
				<td id="file">
					<c:if test="${bDto.filesize > 0}">
						<i class="fa fa-paperclip"></i>
					</c:if>
				</td>
			</tr>
			</c:forEach>
			
			
			
			
			
			
			<!-- <tr>
				<td>2</td><td>필수는 왜 안자고 프렌즈레이싱을 하고 있었을까?</td><td>하하</td><td>2018-11-4</td><td>3</td>
			</tr>
			<tr>
				<td>1</td><td>회식은 언제할까?</td><td>회식매니아</td><td>2018-11-3</td><td>8</td>
			</tr> -->
		</table>
		

		<ul class="pagination">
			<c:if test="${pageMaker.prev}">
				<li class="left_right">
					<a href="boardList.bizpoll?page=${pageMaker.startPage - 1}">&laquo;</a>		
				</li>
			</c:if>
			
			<c:forEach begin="${pageMaker.startPage}"
				end="${pageMaker.endPage}" var="idx">
				<li id="btn_num"<c:out value="${pageMaker.criDto.page == idx? 'class=active':''}"/>>
					<a href="boardList.bizpoll?page=${idx}&flag=${flag}&keyword=${keyword}&key=${code}">${idx}</a>
				</li>
			</c:forEach>
				
				
			<c:if test="${pageMaker.next}">
					<li class="left_right"><a href="">...</a></li>
					<li class="left_right"><a href="boardList.bizpoll?page=${pageMaker.finalPage}">${pageMaker.finalPage}</a></li>
					<li class="left_right"><a href="boardList.bizpoll?page=${pageMaker.endPage + 1}">&raquo;</a></li>
			</c:if>
		</ul>
	
		<div id = "search_bar">
			<select name="condition" id="condition">
				<option value="3">검색 선택</option>
				<option value="1">제목</option>
				<option value="2">내용</option>
				<option value="3">제목+내용</option>
				<option value="4">작성자</option>
			</select>
			<input type="text" class="input-text" id="search" name="keyword" placeholder="검색할 값을 입력하세요" >
			<button type="submit" id="submit" class="button" name='flag'>검색</button>
		</div>
	</div>
</div>

	<input type="hidden" id="code" value="${code}">


		
</body>
</html>
<%@ include file="../include/footer.jsp" %>