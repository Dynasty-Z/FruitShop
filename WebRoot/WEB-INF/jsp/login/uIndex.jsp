<%@page language="java" contentType="text/html; character=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>首页</title>
<link type="text/css" rel="stylesheet"
	href="${ctx}/resource/user/css/style.css">
<script src="${ctx}/resource/user/js/jquery-1.8.3.min.js"></script>
<script src="${ctx}/resource/user/js/jquery.luara.0.0.1.min.js"></script>
</head>
<body>
	<%@include file="/common/uTop.jsp"%>
	<!--导航条-->
	<div class="width100"
		style="height: 45px; background: #dd4545; margin-top: 40px; position: relative; z-index: 100;">
		<!--中间的部分-->
		<div class="width1200 center_yh relative_yh" style="height: 45px;">
			<!--列表导航-->
			<div class="left_yh Selected" style="width: 230px; height: 45px;"
				id="hiddenShow">
				<!--头部的图标-->
				<img src="${ctx}/resource/user/images/cd.png" class="left_yh"
					style="margin-left: 24px;" alt=""> <span
					class="block_yh left_yh fff"
					style="height: 45px; line-height: 44px; margin-left: 10px;">分类</span>
				<!--导航展开部分-->
				<div class="downSlide">
					<c:forEach items="${lbs}" var="data" varStatus="l">
						<div class="n1Nav">
							<font>${data.father.name}</font> <img
								src="${ctx}/resource/user/images/jt.png" alt="">
							<div class="n2Nav">
								<div class="n3Nav">
									<h3>${data.father.name}</h3>
									<c:forEach items="${data.childrens}" var="child" varStatus="ll">
										<a href="${ctx}/item/shoplist?categoryIdTwo=${child.id}">${child.name}</a>
									</c:forEach>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<!--普通导航-->
			<div class="left_yh font16" id="pageNav">
				<a href="${ctx}/login/uIndex">首页</a> <a href="${ctx}/news/list">公告</a>
				<a href="${ctx}/message/add">留言</a>
			</div>
		</div>
	</div>
</body>
</html>



















