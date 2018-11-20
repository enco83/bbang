<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<%@ include file="include/include.jsp" %> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {
		margin: 230px auto;
	}

	ol, ul, li {
    list-style: none;
	}
	#content {
    position: relative;
    width: 1000px;
    margin: 230px auto;
    }
    .product.b_fff {
    padding: 20px;
	}
	.b_fff {
    background-color: #fff !important;
	}
	.product_detail.box_type1 {
    margin-bottom: 40px;
	}
	.product_detail {
    display: inline-block;
    width: 100%;
    }
    .box_type1 {
    border: 1px solid #e8e6e2;
    text-align: center;
	}
	.product_detail.box_type1 > ul {
    display: inline-block;
    position: relative;
    width: 952px;
    padding: 0;
    }
    .box_type1 > ul {
    padding: 50px;
    border: 4px double #e8e6e2;
	}
	.product_detail .left_area {
    float: left;
    width: 372px;
    margin: 0 50px;
	}
	.product_detail .left_area .item_wrap {
    display: inline-block;
    position: relative;
    width: 100%;
    margin: 0 0 0 0;
	}
	.product_detail .left_area .item_wrap .img {
    display: block;
    position: relative;
    width: 100%;
    margin: 45px 0 5px 0;
    text-align: center;
	}
	.product_detail .left_area .p_desc1 {
    margin-bottom: 10px;
    font-size: 11px;
    font-family: "돋움";
    text-align: left;
	}
	.product_detail .left_area .p_desc2 {
    margin-bottom: 50px;
    background: #f0f0f0;
    color: #655245;
    font-size: 15px;
    line-height: 20px;
	}
	.product_detail .left_area .p_desc2 ul {
    padding: 25px 45px;
	}
	.product_detail .left_area .p_desc2 .tit {
    display: inline-block;
    width: 273px;
    height: 13px;
    margin-bottom: 14px;
    background: url(../images/common/common.png) -602px -17px no-repeat;
    font-size: 0;
    overflow: hidden;
	}
	.product_detail .right_area {
    float: right;
    width: 306px;
    margin: 32px 0 34px 0;
    padding: 0 80px;
    text-align: left;
	}
	.product_detail .right_area > .info {
    clear: both;
    display: inline-block;
    width: 100%;
    padding: 10px 0 14px 0;
    text-align: center;
	}
	.product_detail .right_area > .info .name {
    display: block;
    margin-bottom: 2px;
    font-size: 26px;
    line-height: 30px;
	}
	.product_detail .right_area > .info .txt_shape {
    margin: 0 auto 27px auto;
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
	.txt_shape:before {
    content: "";
    display: block;
    position: absolute;
    top: 0;
    left: 0;
    padding-left: 5px;
    width: 11px;
    height: 16px;
    background: #fff url(../images/common/tag_prd_type.png) 0 0 no-repeat;
	}
	.table_nutrition {
    border-top: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
	}
	.table_nutrition table {
    width: 100%;
	}
	legend, hr, caption {
    font-size: 0;
    line-height: 0;
    visibility: hidden;
	}	
	html, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video, button, input, textarea {
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
	}
	.table_nutrition table thead th {
    width: 110px;
    padding-top: 22px;
    border-bottom: 1px solid #ccc;
    font-size: 18px;
    font-weight: 700;
    text-indent: 30px;
    vertical-align: top;
	}
	th, td {
    text-align: left;
    vertical-align: middle;
    word-break: break-all;
    word-wrap: break-word;
	}
	.table_nutrition table thead td {
    border-bottom: 1px solid #ccc;
    text-align: center;
    padding: 10px 0;
    font-size: 18px;
	}
	.franchise-wrap .data-table th, td {
    font-size: 18px;
    line-height: 18px;
    color: #666666;
    letter-spacing: -0.05em;
    text-align: center;
	}
	.table_nutrition table tbody .first {
    padding-top: 18px;
	}
	.table_nutrition table tbody th {
    width: 130px;
    height: 50px;
    font-size: 18px;
    text-indent: 30px;
	}
	.product_detail .right_area .btn-area {
    margin: 28px 0 0 0;
    text-align: center;
	}
	.product_detail .right_area .btn-area .btn {
    min-width: auto;
    padding: 0 10px;
    width: 100px;
	}
	.btn.st8 {
    color: #545454;
    border: 1px solid #a8a8a8;
    background-color: transparent;
    
	}
	.btn.large {
    padding: 0 20px;
    min-width: 182px;
    height: 50px;
    line-height: 34px;
    font-size: 26px;
	}
	.btn-area {
		display: inline-block;
	}
	#b1 {
	background-color: #5cb85c;
	}
	#b2 {
	background-color: #f8ca00;
	}
	#b3 {
	background-color: 
	}
</style>
</head>
<body>
	<div id="content">
		<!-- //path -->
		<div class="cnt_wrap product b_fff">
			<!-- 제품상세정보 -->
			<div class="product_detail box_type1">
				<ul>
					<li>
						<div class="left_area">
							<ul>
								<li class="item_wrap">
									<span class="img">
										<img src="img/p02.jpg" onerror='' alt="고메버터식빵" width="323" height="323" />


									</span>
									<div class="p_desc1">* 상기 이미지는 실제 제품과 다소 차이가 있을 수 있습니다.</div>
									
									<div class="p_desc2">
										<ul>
											
											<li>브라운버터를 넣어 버터의 풍미를 올린 촉촉하고 부드러운 빵에 바삭 하고 고소한 풍미의 패스트리가 만나 껍질까지 맛있게 먹을 수 있는 맛있는 식빵</li>
										</ul>
									</div>
								</li>
							</ul>
						</div>
						<div class="right_area">
							<div class="info">
								<span class="name">고메버터식빵</span>
						
								
							</div>
							<div class="table_nutrition">
								<table summary="1회 제공량(108g) 당 열량, 당류, 단백질, 포화지방, 나트륨 정보를 제공합니다.">
									<caption>영양성분</caption>
									<thead>
										<tr>
											<th scope="row" rowspan="4">영양성분</th>
											<td>총중량(g)  280</td>
										</tr>
										<tr>
											<td>총제공중량(회) 1</td>
										</tr>
										<tr>
											<td>1회 제공량(개) 1</td>
										</tr>
										<tr>
											<td>중량(g)  280</td>
										</tr>
									</thead>
									<tbody>
										
										<tr>
											<th scope="row">가격(원)</th>
											<td>4500</td>
										</tr>
									</tbody>
									
								</table>
							</div>
							<!-- 201607 start -->
							<div class="btn-area">
								<a href="" id = "b1" class="btn large st8">목록</a>
							</div>
							&nbsp;&nbsp;&nbsp;
							<div class="btn-area">
								<a href="" id = "b2" class="btn large st8">장바구니</a>
							</div>
							&nbsp;&nbsp;&nbsp;
							<div class="btn-area">
								<a href="" id = "b3" class="btn large st8">구매</a>
							</div>
							<!-- //201607 end -->
						</div>
					</li>
				</ul>
			</div>
			<!-- //제품상세정보 -->
		
		</div>
	</div>
	
</body>
</html>