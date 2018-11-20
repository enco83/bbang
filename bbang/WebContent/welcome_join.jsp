<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="refresh" content="3; url=index.bizpoll">
<title>Insert title here</title>
<style type="text/css">
	#join_ok {
	
	}
</style>

<script type="text/javascript">
	var cnt=2;
	function countdown(){
		if(cnt == 0) {
			clearInterval(s);
			location.href="index.bizpoll";
		}
		document.getElementById("rCnt").innerHTML=cnt;
		cnt--;
	}
	var s = setInterval(countdown, 1000);


</script>
</head>
<body>

	<div id="join_ok">
		<div class="welcome_text text1">가입해 주셔서 감사합니다.</div>
		<div class="welcome_text text2"><span id="rCnt">3</span>초후에 이동됩니다</div>
	</div>
	
	<!-- 카운트다운 방법
		1.meta 태그 활용
		2.JavaScript의 setInterval() 활용 -->
	
</body>
</html>