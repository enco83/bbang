<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
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
	#footer {
		padding: 15px 0;
	}
	#footer * {
		font-size: 12px;
		line-height: normal;
		list-style: none;
		color: #333;
		text-decoration: none;
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
	#phone {
	    padding: 20px 0 5px;
	}

</style>
</head>
<body>
	<footer>
			<div id="footer">
				<ul>
					<li><a href="#">이용약관</a></li>
					<li><strong><a href="#">개인정보처리방침</a></strong></li>
					<li><a href="#">책임의 한계와 법적고지</a></li>
					<li><a href="#">찾아오시는 길</a></li>
					<li><a href="#">고객센터</a></li>
				<div id = "phone">
					<li><strong><a href="#">대표전화 : 010-3333-5555</a></strong></li>
				</div>	
					
				</ul>
				<div id="address">
					<span>
						<a href="#">
							<img id="addr_logo" alt="꼬기 로고" src="img/bbang_b.png">
						</a>
					</span>
					<span>Copyright</span>
					<span>ⓒ</span>
					<span>
						<strong>
							<a href="#">bbang Copr.</a>
						</strong>
					</span>
					<span>All Rights Reserved.</span>
				</div>
			</div>
		</footer>
</body>
</html>