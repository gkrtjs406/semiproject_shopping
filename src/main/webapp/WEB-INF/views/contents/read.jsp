<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>제품</title>
<meta charset="utf-8">
<link rel="stylesheet" href="/css/style.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<h4>
					<img src="/svg/box2-heart.svg"> 상품 정보
				</h4>
				<img class="img-rounded" src="/contents/storage/${dto.filename}"
					style="width: 250px">
				<div class="caption">
					<p>상품명:${dto.pname}</p>
					<p>${dto.detail }</p>
				</div>
			</div>
			<div class="col-sm-6">
				<h4>
					<img src="/svg/rulers.svg"> 사이즈 및 수량
				</h4>
				<ul class="list-group">
					<li class="list-group-item">가격 : ${dto.price }
					<li class="list-group-item">재고 : ${dto.stock } 
					<a href="javascript:history.back()"> <img class='btn'
							src="${request.ContextPath }/svg/arrow-return-left.svg" /></a>
				</ul>
			</div>
		</div>
	</div>

</body>
</html>