<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="include/include.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');
	body, ul, p {
		margin: 0;
		padding: 0;
		font-family: 'Nanum Gothic', sans-serif;
	}
	body {
		background-color: #white;
	}
	a {
		text-decoration: none;
	}
	ul {
		list-style-type: none;
	}
	input:checked +label {
		background-image: url('img/check_on.gif');
	}
	.divsize {
		width: 768px;
		margin: 0 auto;
		box-sizing: border-box;
	}
	#header {
		height: 100px;
		/* padding-top: 62px; */
		position: relative;
	}
	#main_logo {
		width: 240px;
		padding-left: 260px;
		height: 100px;
	}

	.lang {
		position: absolute;
		right: 0px;
		top: 14px;
	}
	/* #langselect {
		font-size: 12px;
		font-weight: 400;
		height: 30px;
		padding: 6px 8px 5px 7px;
		min-width: 98px;
		color: #333;
		border: 1px solid #ccc;
		-webkit-appearance: none;
		background-color: white!important;
		width: 98px;
		background: url("img/sel_arr.gif") 100% 50% no-repeat; /* select 화살표 지우고 바꾸기 */
	} */
	
	/* Container */
	#container { position: relative; }
	#join_content {
		width: 460px;
		margin: 0 auto;
	}
	.terms {
		margin-bottom: 20px;
		background-color: white;
		border: 1px solid #dadada;
	}
	.terms_p {
		position: relative;
		margin: 0px;
		padding: 15px;
		display: block;
	}
	.terms_span {
		position: relative;
		display: block;
		height: 58px;
	}
	.terms_span > input {
		position: absolute;
		right: 1px;
		top: 50%;
		width: 22px;
		height: 22px;
		margin-top: -11px;
		visibility: hidden;/* 체크박스 숨김 */
	}
	.terms_span > label {
		font-size: 14px;
		font-weight: 700;
		top: -1px;
		height: 58px;
		line-height: 20px;
		display: block;
		cursor: pointer;
		background: url("img/check_off.gif") 100% 50% no-repeat;
	}
	#terms_ul {
		padding-bottom: 7px;
	}
	#terms_ul > li {
		display: block;
		padding: 13px 15px 7px;
	}
	#terms_ul_li1 {
		border-top: 1px solid #f0f0f0;
	}
	.ul_li_span {
		position: relative;
		display: block;
		height: 24px;
	}
	.ul_li_span > input {
		position: absolute;
		right: 1px;
		top: 50px;
		margin-top: -11px;
		width: 22px;
		height: 22px;
		visibility: hidden;
	}
	.ul_li_span > label {
		background: url("img/check_off.gif") 100% 50% no-repeat;
		display: block;
	}
	.label1 {
		height: 24px;
		font-size: 14px;
		font-weight: 700;
		line-height: 24px;
		position: absolute;
		color: #333;
		top: 0px;
		left: 0px;
		width: 100%;
	}
	.span_only {
		color: #2b90d9;
		font-size: 12px;
		font-weight: 400;
	}
	.span_select {
		color: #969696;
		font-size: 12px;
		font-weight: 400;
	}
	.terms_box {
		box-sizing: border-box;
		position: relative;
		height: 88px;
		margin-top: 11px;
		padding: 8px 10px;
		border: 1px solid #f0f0f0;
		background-color: #f7f7f7;
		overflow: auto;
	}
	h3.article_title {
		font-size: 12px;
		font-weight: 700;
		line-height: 16px;
		color: #666;
		margin: 0;
		padding: 0;
	}
	.article > p {
		display: block;
		font-size: 12px;
		line-height: 16px;
		color: #666;
	}
	.btn_type {
		width: auto;
		margin: 0px 5px;
		font-size: 20px;
		font-weight: 600;
		line-height: 61px;
		display: block;
		box-sizing: border-box;
		height: 61px;
		padding-top: 1px;
		text-align: center;
	}
	.btn_agree {
		color: #fff;
		/* border: 1px solid #1fbc02; */
		background-color: #3E173E;
	}
	.btn_default {
		color: #333;
		border: 1px solid #e7e7e7;
		background-color: #fff;
	}
	.btn_double_area {
		margin: 30px -5px 0px;
		overflow: hidden;
	}
	.btn_double_area > span {
		display: block;
		float: left;
		width: 50%;
	}
	.group_join {
		margin: 20px 0 15px;
		text-align: center;
		color: #666;
		font-size: 12px;
	}
	.group_join > a {
		text-decoration: underline;
		color: #333;
	}
	#footer {
		padding: 33px 0;
	}
	#footer * {
		font-size: 12px;
		text-align: center;
		line-height: ;
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
		font-size: 11px;
		font-weight: 700;
		line-height: 24px;
		color: #f46665;
		padding: 0px 15px;
		text-align: center;
	}
	#err_check {
		display: none;
	}
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#cbox").click(function(){
			var mainbox = $("#cbox").is(":checked");
			if(mainbox == true){
				$(".ckboxs").prop("checked", true);
			} else if(mainbox == false) {
				$(".ckboxs").prop("checked", false);
			};
		});
		$(".btn_agree").click(function(){
			var filsu1 = $("#li1box").is(":checked");
			var filsu2 = $("#li2box").is(":checked");
			
			/* alert(filsu1 + ", " + filsu2); */
			if(filsu1 == true && filsu2 == true) {
				location.href = "member.bizpoll";
			} else {
				$("#err_check").css("display", "block");
			}
			
		});
		
		/* 하단의 체크박스가 4개다 true면 cbox도 true
		체크박스가 1개라도 false면 cbox도 false
		
		:checked 가 4개
		length */
		
		
		
	});

	
	
	
</script>
</head>
<body>
	<header>
		<div id="header" class="divsize">
		
				<a href="index.bizpoll" class="k_logo">
					<img id="main_logo" alt="bbnag 로고" src="img/free_horizontal_on_white_by_logaster_4d1d4d.png">
				</a>
			
		</div>
	</header>
	<article>
		<div id="container" class="divsize">
			<form id="join_content">
				<div class="terms">
					<p class="terms_p">
						<span class="terms_span">
							<input type="checkbox" id="cbox">
							<label for="cbox">
								이용약관, 개인정보 수집 및 이용, <br>
								위치정보 이용약관(선택), 프로모션 안내 <br>
								메일 수신(선택)에 모두 동의 합니다.
							</label>
						</span>
					</p>
					<ul id="terms_ul">
						<li id="terms_ul_li1">
							<span class="ul_li_span">
								<input type="checkbox" id="li1box" class="ckboxs">
								<label for="li1box" class="label1">
									bbnag 이용약관 동의<span class="span_only">(필수)</span>
								</label>
							</span>
							<div class="terms_box">
								<div class="article">
									<h3 class="article_title">여러분을 환영합니다.</h3>
									<p>bbnag 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 bbnag 서비스의 이용과 관련하여 bbnag 서비스를 제공하는 bbnag 주식회사(이하 ‘bbnag’)와 이를 이용하는 bbnag 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 bbnag 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
									bbnag 서비스를 이용하시거나 bbnag 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.<br>
									다양한 bbnag 서비스를 즐겨보세요.
bbnag는 www.naver.com을 비롯한 bbnag 도메인의 웹사이트 및 응용프로그램(어플리케이션, 앱)을 통해 정보 검색, 다른 이용자와의 커뮤니케이션, 콘텐츠 제공, 상품 쇼핑 등 여러분의 생활에 편리함을 더할 수 있는 다양한 서비스를 제공하고 있습니다.
여러분은 PC, 휴대폰 등 인터넷 이용이 가능한 각종 단말기를 통해 각양각색의 bbnag 서비스를 자유롭게 이용하실 수 있으며, 개별 서비스들의 구체적인 내용은 각 서비스 상의 안내, 공지사항, bbnag 웹고객센터(이하 ‘고객센터’) 도움말 등에서 쉽게 확인하실 수 있습니다.

bbnag는 기본적으로 여러분 모두에게 동일한 내용의 서비스를 제공합니다. 다만, '청소년보호법' 등 관련 법령이나 기타 개별 서비스 제공에서의 특별한 필요에 의해서 연령 또는 일정한 등급을 기준으로 이용자를 구분하여 제공하는 서비스의 내용, 이용 시간, 이용 횟수 등을 다르게 하는 등 일부 이용을 제한하는 경우가 있습니다. 자세한 내용은 역시 각 서비스 상의 안내, 공지사항, 고객센터 도움말 등에서 확인하실 수 있습니다.

bbnag 서비스에는 기본적으로 본 약관이 적용됩니다만 bbnag가 다양한 서비스를 제공하는 과정에서 부득이 본 약관 외 별도의 약관, 운영정책 등을 적용하는 경우(예, bbnag페이, V LIVE 등)가 있습니다. 그리고 bbnag 계열사가 제공하는 특정 서비스의 경우에도(예, LINE, SNOW등) 해당 운영 회사가 정한 고유의 약관, 운영정책 등이 적용될 수 있습니다. 이러한 내용은 각각의 해당 서비스 초기 화면에서 확인해 주시기 바랍니다.<br>
회원으로 가입하시면 bbnag 서비스를 보다 편리하게 이용할 수 있습니다.
여러분은 본 약관을 읽고 동의하신 후 회원 가입을 신청하실 수 있으며, bbnag는 이에 대한 승낙을 통해 회원 가입 절차를 완료하고 여러분께 bbnag 서비스 이용 계정(이하 ‘계정’)을 부여합니다. 계정이란 회원이 bbnag 서비스에 로그인한 이후 이용하는 각종 서비스 이용 이력을 회원 별로 관리하기 위해 설정한 회원 식별 단위를 말합니다. 회원은 자신의 계정을 통해 좀더 다양한 bbnag 서비스를 보다 편리하게 이용할 수 있습니다. 이와 관련한 상세한 내용은 계정 운영정책 및 고객센터 내 bbnag 회원가입 방법 등에서 확인해 주세요.

bbnag는 단체에 속한 여러 구성원들이 공동의 계정으로 bbnag 서비스를 함께 이용할 수 있도록 단체회원 계정도 부여하고 있습니다. 단체회원 구성원들은 하나의 계정 및 아이디(ID)를 공유하되 각자 개별적으로 설정한 비밀번호를 입력하여 계정에 로그인하고 각종 서비스를 이용하게 됩니다. 단체회원은 관리자와 멤버로 구성되며, 관리자는 구성원 전부로부터 권한을 위임 받아 단체회원을 대표하고 단체회원 계정을 운용합니다.
따라서 관리자는 단체회원 계정을 통해 별도 약관 또는 기존 약관 개정에 대해 동의하거나 단체회원에서 탈퇴할 수 있고, 멤버들의 단체회원 계정 로그인 방법 및 이를 통한 게시물 게재 등 bbnag 서비스 이용을 관리(게시물 삭제 포함)할 수 있습니다. 본 약관에서 규정한 사항은 원칙적으로 구성원 모두에게 적용되며, 각각의 구성원은 다른 구성원들의 단체회원 계정 및 아이디(ID)를 통한 서비스 이용에 관해 연대책임을 부담합니다.

단체회원 계정 사용에서의 관리자, 멤버 등의 권한 및 (공동)책임에 관한 사항 등은 계정 운영정책 및 고객센터 내 bbnag 단체회원(단체 아이디) 소개 등에서 확인해 주시기 바랍니다.<br>
									
									</p>
								</div>
							</div>
						</li>
						
						
						<li id="terms_ul_li2">
							<span class="ul_li_span">
								<input type="checkbox" id="li2box" class="ckboxs">
								<label for="li2box" class="label1">
									개인정보 수집 및 이용에 대한 안내<span class="span_only">(필수)</span>
								</label>
							</span>
							<div class="terms_box">
								<div class="article">
									
									<p>정보통신망법 규정에 따라 bbnag에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.
									</p>
									<h3 class="article_title">1. 수집하는 개인정보</h3>
									<p>이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 bbnag 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, bbnag는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.
									회원가입 시점에 bbnag가 이용자로부터 수집하는 개인정보는 아래와 같습니다.
- 회원 가입 시에 ‘아이디, 비밀번호, 이름, 생년월일, 성별, 가입인증 휴대폰번호’를 필수항목으로 수집합니다. 만약 이용자가 입력하는 생년월일이 만14세 미만 아동일 경우에는 법정대리인 정보(법정대리인의 이름, 생년월일, 성별, 중복가입확인정보(DI), 휴대폰번호)를 추가로 수집합니다. 그리고 선택항목으로 이메일 주소를 수집합니다.
- 단체아이디로 회원가입 시 단체아이디, 비밀번호, 단체이름, 이메일주소, 가입인증 휴대폰번호를 필수항목으로 수집합니다. 그리고 단체 대표자명, 비밀번호 발급용 멤버 이름 및 이메일주소를 선택항목으로 수집합니다.
서비스 이용 과정에서 이용자로부터 수집하는 개인정보는 아래와 같습니다.
NAVER 내의 개별 서비스 이용, 이벤트 응모 및 경품 신청 과정에서 해당 서비스의 이용자에 한해 추가 개인정보 수집이 발생할 수 있습니다. 추가로 개인정보를 수집할 경우에는 해당 개인정보 수집 시점에서 이용자에게 ‘수집하는 개인정보 항목, 개인정보의 수집 및 이용목적, 개인정보의 보관기간’에 대해 안내 드리고 동의를 받습니다.

서비스 이용 과정에서 IP 주소, 쿠키, 서비스 이용 기록, 기기정보, 위치정보가 생성되어 수집될 수 있습니다.
구체적으로 1) 서비스 이용 과정에서 이용자에 관한 정보를 정보통신서비스 제공자가 자동화된 방법으로 생성하여 이를 저장(수집)하거나, 
2) 이용자 기기의 고유한 정보를 원래의 값을 확인하지 못 하도록 안전하게 변환한 후에 수집하는 경우를 의미합니다.
bbnag 위치기반서비스 이용 시 수집·저장되는 위치정보의 이용 등에 대한 자세한 사항은 ‘bbnag 위치정보 이용약관’에서 규정하고 있습니다.

2. 수집한 개인정보의 이용
bbnag 및 bbnag 관련 제반 서비스(모바일 웹/앱 포함)의 회원관리, 서비스 개발・제공 및 향상, 안전한 인터넷 이용환경 구축 등 아래의 목적으로만 개인정보를 이용합니다.

- 회원 가입 의사의 확인, 연령 확인 및 법정대리인 동의 진행, 이용자 및 법정대리인의 본인 확인, 이용자 식별, 회원탈퇴 의사의 확인 등 회원관리를 위하여 개인정보를 이용합니다.
- 콘텐츠 등 기존 서비스 제공(광고 포함)에 더하여, 인구통계학적 분석, 서비스 방문 및 이용기록의 분석, 개인정보 및 관심에 기반한 이용자간 관계의 형성, 지인 및 관심사 등에 기반한 맞춤형 서비스 제공 등 신규 서비스 요소의 발굴 및 기존 서비스 개선 등을 위하여 개인정보를 이용합니다.
- 법령 및 bbnag 이용약관을 위반하는 회원에 대한 이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는 행위에 대한 방지 및 제재, 계정도용 및 부정거래 방지, 약관 개정 등의 고지사항 전달, 분쟁조정을 위한 기록 보존, 민원처리 등 이용자 보호 및 서비스 운영을 위하여 개인정보를 이용합니다.
- 유료 서비스 제공에 따르는 본인인증, 구매 및 요금 결제, 상품 및 서비스의 배송을 위하여 개인정보를 이용합니다.
- 이벤트 정보 및 참여기회 제공, 광고성 정보 제공 등 마케팅 및 프로모션 목적으로 개인정보를 이용합니다.
- 서비스 이용기록과 접속 빈도 분석, 서비스 이용에 대한 통계, 서비스 분석 및 통계에 따른 맞춤 서비스 제공 및 광고 게재 등에 개인정보를 이용합니다.
- 보안, 프라이버시, 안전 측면에서 이용자가 안심하고 이용할 수 있는 서비스 이용환경 구축을 위해 개인정보를 이용합니다.
3. 개인정보의 파기
회사는 원칙적으로 이용자의 개인정보를 회원 탈퇴 시 지체없이 파기하고 있습니다.
단, 이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우, 또는 법령에서 일정 기간 정보보관 의무를 부과하는 경우에는 해당 기간 동안 개인정보를 안전하게 보관합니다.

이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우는 아래와 같습니다.
부정가입 및 징계기록 등의 부정이용기록은 부정 가입 및 이용 방지를 위하여 수집 시점으로부터 6개월간 보관하고 파기하고 있습니다. 부정이용기록 내 개인정보는 가입인증 휴대폰 번호(만 14세 미만 회원의 경우 법정대리인 DI)가 있습니다.
결제도용, 불법할인대출(일명 '카드깡') 등 관련 법령 및 이용약관을 위반하는 bbnag페이의 부정거래기록(아이디, 이름, 휴대폰번호, 배송지 주소, IP주소, 쿠키, 기기정보)은 부정거래 방지 및 다른 선량한 이용자의 보호, 안전한 거래 환경 보장을 위하여 수집 시점으로부터 3년간 보관하고 파기합니다.
부정이용으로 징계를 받기 전에 회원 가입 및 탈퇴를 반복하며 서비스를 부정 이용하는 사례를 막기 위해 탈퇴한 이용자의 휴대전화번호를 복호화가 불가능한 일방향 암호화(해시 처리)하여 6개월간 보관합니다.

전자상거래 등에서의 소비자 보호에 관한 법률, 전자금융거래법, 통신비밀보호법 등 법령에서 일정기간 정보의 보관을 규정하는 경우는 아래와 같습니다. bbnag는 이 기간 동안 법령의 규정에 따라 개인정보를 보관하며, 본 정보를 다른 목적으로는 절대 이용하지 않습니다.
- 전자상거래 등에서 소비자 보호에 관한 법률 
계약 또는 청약철회 등에 관한 기록: 5년 보관 
대금결제 및 재화 등의 공급에 관한 기록: 5년 보관 
소비자의 불만 또는 분쟁처리에 관한 기록: 3년 보관
- 전자금융거래법 
전자금융에 관한 기록: 5년 보관
- 통신비밀보호법 
로그인 기록: 3개월
									</p>
								</div>
							</div>
						</li>
						
						<li id="terms_ul_li3">
							<span class="ul_li_span">
								<input type="checkbox" id="li3box" class="ckboxs">
								<label for="li3box" class="label1">
									위치정보 이용약관 동의<span class="span_select">(선택)</span>
								</label>
							</span>
							<div class="terms_box">
								<div class="article">
									<p>위치정보 이용약관에 동의하시면, <strong>위치를 활용한 광고 정보 수신</strong> 등을 포함하는 bbnag 위치기반 서비스를 이용할 수 있습니다.
									</p>
									<h3 class="article_title">제 1 조 (목적)</h3>
									<p>이 약관은 bbnag 주식회사 (이하 “회사”)가 제공하는 위치정보사업 또는 위치기반서비스사업과 관련하여 회사와 개인위치정보주체와의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
									</p>
								</div>
							</div>
						</li>
						
						<li id="terms_ul_li4">
							<span class="ul_li_span">
								<input type="checkbox" id="li4box" class="ckboxs">
								<label for="li4box" class="label1">
									이벤트 등 프로모션 알림 메일 수신<span class="span_select">(선택)</span>
								</label>
							</span>
						</li>
					</ul>
				</div>
				<div id="err_check">
					<span id="err_check_msg">bbnag 이용약관과 개인정보 수집 및 이용에 대한 안내 모두 동의해 주세요.</span>
				</div>
				<div class="btn_double_area">
					<span><a href="index.bizpoll" class="btn_type btn_default">비동의</a></span>
					<span><a href="#" class="btn_type btn_agree">동의</a></span>
				</div>
			</form>
			<!-- <div class="group_join">
				회사, 동아리 등 단체에서 사용할 ID가 필요하세요?
				<a href="#">단체 회원 가입</a>
			</div> -->
		</div>
	</article>

</body>
</html>
<%@ include file="include/footer.jsp" %>