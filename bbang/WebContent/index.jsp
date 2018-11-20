<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- index.jsp 페이지에 header.jsp 페이지를 추가 -->
<%@ include file="include/header.jsp" %>    
<%@ include file="include/include.jsp" %>  
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<%@ include file="include/include.jsp" %>  
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
<title>bbangbbang</title>
<style type="text/css">
	body {
		margin: 190px auto;
	}
	
	.product_list2 {
    display: inline-block;
    position: relative;
    width: 100%;
    margin-bottom: 30px;
    overflow: hidden;
    }
    .product_list2 > ul {
    display: inline-block;
    margin-left: -10px;
    }
    .product_list2 .item_wrap {
    float: left;
    display: inline-block;
    position: relative;
    width: 242px;
    height: 285px;
    background: #fff;
    margin: 0 0 10px 10px;
    overflow: hidden;
	}
	.product_list2 .item_wrap > a {
    display: inline-block;
    width: 100%;
    height: 100%;
    margin: 10px 0 20px;
	}
	.product_list2 .item_wrap .info {
    display: block;
    position: relative;
    height: 50px;
    margin: 24px 10px 0 10px;
    padding-bottom: 4px;
    border-bottom: 1px solid #ebe7e0;
    text-align: center;
	}
	.product_list2 .item_wrap .name {
    display: block;
    width: 100%;
    height: 20px;
    margin-bottom: 8px;
    font-size: 16px;
    line-height: 20px;
    color: #655245;
    text-align: center;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
	}
	.txt_shape {
    display: inline-block;
    position: relative;
    padding: 0 20px;
    margin: 0 auto;
    width: auto;
    min-width: 44px;
    height: 16px;
    line-height: 18px;
    font-size: 13px;
    color: #fff;
    border-bottom: 0 none;
    background-color: #ccbea5;
	}
    .product_list2 .item_wrap .img {
    display: block;
    position: relative;
    width: 100%;
    text-align: center;
	}
	
	.product_list2 .item_wrap .over {
    position: absolute;
    right: 0;
    top: 0;
    z-index: 20;
    width: 100%;
    height: 100%;
    background: #fff;
    text-align: center;
    -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
    filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=0);
    opacity: 0;
    -webkit-transition-duration: 0.5s;
    -moz-transition-duration: 0.5s;
    -ms-transition-duration: 0.5s;
    -o-transition-duration: 0.5s;
    transition-duration: 0.5s;
	}
	.product_list2 .item_wrap .over .desc {
    display: block;
    margin: 31px 20px 15px 20px;
    font-size: 11px;
    color: #333;
    text-align: center;
    line-height: 18px;
	}
	.product_list2 .item_wrap .over .desc a {
    display: block;
    color: #333;
    font-weight: bold;
    text-decoration: none;
	}
	#center {
		width: 1300px;
		margin: auto;
	}
	.subject {
		padding: 40px 0 5px;
		text-align: center;
		font-size: 55px;
	}
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body>

<!-- <video id="video" src="video/video2.mp4" controls autoplay></video>  -->

	<div class="product_list2">
		<div id="center">
			
			
		
				<ul id="product_list">
				<div class = "subject">
				
					<img src="img/best.png"/>
				</div>
					<c:forEach items="${bestlist}" var="bestDto">
					<li class="item_wrap" id="p01">
						<a href="#">
							<span class="info">
								<span class="name">${bestDto.p_name}</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/${bestDto.p_img}" alt="아몬드 패스트리 블록" width="200" height="200" />
							</span>
							<span class="price">${bestDto.p_price}</span>
						</a>
					</li>
					</c:forEach>
					<hr>
					<div class = "subject">
					
						<img src="img/new.png"/>
					</div>
					<c:forEach items="${newlist}" var="newDto">
					<li class="item_wrap" id="p01">
						<a href="#">
							<span class="info">
								<span class="name">${newDto.p_name}</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/${newDto.p_img}" alt="아몬드 패스트리 블록" width="200" height="200" />
							</span>
							<span class="price">${newDto.p_price}</span>
						</a>
					</li>
					</c:forEach>
					<hr>

							
					
									
					
									
					
									<%-- <span>가격: ${bestDto.p_price}</span> --%>
					
								
					
								
									<%-- <fmt:formatNumber value="0.25" type="percent"/></fmt:formatNumber> --%>
					
									
					
				
		
				
		
			 	 
		
		
		
					<!-- <li class="item_wrap" id="p02">
						<a href="#">
							<span class="info">
								<span class="name">고메버터식빵</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p02.jpg" alt="고메버터식빵" width="200" height="200" />
							</span>
						</a>
					</li>
		
					<li class="item_wrap" id="p03">
						<a href="#">
							<span class="info">
								<span class="name">통우유식빵</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p03.jpg"alt="통우유식빵" width="200" height="200" />
							</span>
						</a>
					</li>
		
					<li class="item_wrap" id="p04">
						<a href="#">
							<span class="info">
								<span class="name">부드러운후레쉬크림샌드</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p04.jpg"alt="부드러운후레쉬크림샌드" width="200" height="200" />
							</span>
						</a>
					</li>
		
					<li class="item_wrap" id="p05">
						<a href="#">
							<span class="info">
								<span class="name">플레인데니쉬식빵</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p05.jpg" alt="플레인데니쉬식빵" width="200" height="200" />
							</span>
						</a>
					</li>
		
					<li class="item_wrap" id="p06">
						<a href="#">
							<span class="info">
								<span class="name">허니밀크브레드</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p06.jpg" alt="허니밀크브레드" width="200" height="200" />
							</span>
						</a>
					</li>
		
					<li class="item_wrap" id="p07">
						<a href="#">
							<span class="info">
								<span class="name">흑미찹쌀토스트 식빵</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p07.jpg" alt="흑미찹쌀토스트 식빵" width="200" height="200" />
							</span>
						</a>
					</li>
					
					<li class="item_wrap" id="p08">
						<a href="#">
							<span class="info">
								<span class="name">카페크럼블브레드</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p08.jpg" alt="카페크럼블브레드" width="200" height="200" />
							</span>
						</a>
					</li>
					
					<li class="item_wrap" id="p09">
						<a href="#">
							<span class="info">
								<span class="name">담백한 옥수수브레드</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p09.jpg" alt="담백한 옥수수브레드" width="200" height="200" />
							</span>
						</a>
					</li>
					
					<li class="item_wrap" id="p10">
						<a href="#">
							<span class="info">
								<span class="name">탕종법으로 만든 쫄깃한 식빵</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p10.jpg" alt="탕종법으로 만든 쫄깃한 식빵" width="200" height="200" />
							</span>
						</a>
					</li>
					
					<li class="item_wrap" id="p11">
						<a href="#">
							<span class="info">
								<span class="name">통밀무화과 브레드</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p11.jpg" alt="통밀무화과 브레드" width="200" height="200" />
							</span>
						</a>
					</li>
					
					<li class="item_wrap" id="p12">
						<a href="#">
							<span class="info">
								<span class="name">허니고르곤졸라호두바게트</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p12.jpg" alt="허니고르곤졸라호두바게트" width="200" height="200" />
							</span>
						</a>
					</li>
					
					<li class="item_wrap" id="p13">
						<a href="#">
							<span class="info">
								<span class="name">파인코코 패스트리</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p13.jpg" alt="파인코코 패스트리" width="200" height="200" />
							</span>
						</a>
					</li>
					
					<li class="item_wrap" id="p14">
						<a href="#">
							<span class="info">
								<span class="name">토마토치킨파이</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p14.jpg" alt="토마토치킨파이" width="200" height="200" />
							</span>
						</a>
					</li>
					
					<li class="item_wrap" id="p15">
						<a href="#">
							<span class="info">
								<span class="name">오리지날생크림 크라상</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p15.jpg" alt="오리지날생크림 크라상" width="200" height="200" />
							</span>
						</a>
					</li>
					
					<li class="item_wrap" id="p16">
						<a href="#">
							<span class="info">
								<span class="name">바베큐치킨고로케</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p16.png" alt="바베큐치킨고로케" width="200" height="200" />
							</span>
						</a>
					</li>
					
					<li class="item_wrap" id="p17">
						<a href="#">
							<span class="info">
								<span class="name">오징어먹물 소시지브레드</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p17.jpg" alt="오징어먹물 소시지브레드" width="200" height="200" />
							</span>
						</a>
					</li>
					
					<li class="item_wrap" id="p18">
						<a href="#">
							<span class="info">
								<span class="name">부드러운 크림 베니에</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p18.jpg" alt="부드러운 크림 베니에" width="200" height="200" />
							</span>
						</a>
					</li>
					
					<li class="item_wrap" id="p19">
						<a href="#">
							<span class="info">
								<span class="name">핫도그패스트리</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p19.jpg" alt="핫도그패스트리" width="200" height="200" />
							</span>
						</a>
					</li>
					
					<li class="item_wrap" id="p20">
						<a href="#">
							<span class="info">
								<span class="name">순꿀 호떡</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p20.jpg" alt="순꿀 호떡" width="200" height="200" />
							</span>
						</a>
					</li>
					
					<li class="item_wrap" id="p21">
						<a href="#">
							<span class="info">
								<span class="name">호두 연유 바게트</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p21.jpg" alt="호두 연유 바게트" width="200" height="200" />
							</span>
						</a>
					</li>
					
					<li class="item_wrap" id="p22">
						<a href="#">
							<span class="info">
								<span class="name">달콤 촉촉 코코넛 데니쉬</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p22.jpg" alt="달콤 촉촉 코코넛 데니쉬" width="200" height="200" />
							</span>
						</a>
					</li>
					
					<li class="item_wrap" id="p23">
						<a href="#">
							<span class="info">
								<span class="name">빵 속에 순우유</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/5.jpg" alt="빵 속에 순우유" width="200" height="200" />
							</span>
						</a>
					</li>
					
					<li class="item_wrap" id="p24">
						<a href="#">
							<span class="info">
								<span class="name">프랑보아즈 아몬드 크라상</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p24.jpg" alt="프랑보아즈 아몬드 크라상" width="200" height="200" />
							</span>
						</a>
					</li>
					
					<li class="item_wrap" id="p25">
						<a href="#">
							<span class="info">
								<span class="name">모카패스트리식빵</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p25.jpg" alt="모카패스트리식빵" width="200" height="200" />
							</span>
						</a>
					</li>
					
					<li class="item_wrap" id="p26">
						<a href="#">
							<span class="info">
								<span class="name">낙엽소시지브레드</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p26.jpg" alt="낙엽소시지브레드" width="200" height="200" />
							</span>
						</a>
					</li>
					
					<li class="item_wrap" id="p27">
						<a href="#">
							<span class="info">
								<span class="name">호박패스트리식빵</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p27.jpg" alt="호박패스트리식빵" width="200" height="200" />
							</span>
						</a>
					</li>
					
					<li class="item_wrap" id="p28">
						<a href="#">
							<span class="info">
								<span class="name">데니쉬식빵</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p28.jpg" alt="데니쉬식빵" width="200" height="200" />
							</span>
						</a>
					</li>
					
					<li class="item_wrap" id="p29">
						<a href="#">
							<span class="info">
								<span class="name">몽블랑패스트리</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p29.jpg" alt="몽블랑패스트리" width="200" height="200" />
							</span>
						</a>
					</li>
					
					<li class="item_wrap" id="p30">
						<a href="#">
							<span class="info">
								<span class="name">추억의 사라다 고로케</span>
								<span class="txt_shape">Bread</span>
							</span>
							<span class="img">
								<img src="img/p30.jpg" alt="추억의 사라다 고로케" width="200" height="200" />
							</span>
						</a>
					</li> -->
					
					
				</ul>
			</div>

	</div>


	
</body>
	

</html>
<%@ include file="include/footer.jsp" %>