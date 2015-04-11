<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/bootstrap2.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/image.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/header.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/divider.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/comment.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/feed.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/form.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/button.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/message.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/icon.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/card.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/page.css">
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/ajaxfileupload.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/basic.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/album.js"></script>	
	
	<style>
	.uploader-button input {
		width: 70px;
		height:20px;
		opacity: 0;
		
	}
	.uploader-button.ui.button{
		background: url("<c:url value="/img/uploader_button.jpg"/>");
	}
	#uploadedphotos textarea {
		border: 0;
		resize: none;
	}
	</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="span8">
				<div id="uploadarea">
					<span class="uploader-button ui button">
						<input type="file" id="uploader_input" name="uploader_input"/>
					</span>
					<span>
						选择照片上传,支持jpeg,png,5M
					</span>										
				</div> <!-- end uploadarea -->

				<div class="ui three cards" id="uploadedphotos">
				  <c:forEach items="${photos }" var="photo">
					  <div class="card" id="card${photo.id }">
					    <a class="image" href="#">
					      <img src="<c:url value="http://osfimgs.oss-cn-hangzhou.aliyuncs.com/${photo.key }" />">
					    </a>
					    <div class="content">
					    	<textarea rows="" cols="" placeholder="添加描述..."></textarea>
					    </div>
					    <div class="extra meta">
							<a href=""><i class="delete icon"></i>删除</a>
					    </div>
					  </div>
				  </c:forEach>
<!-- 				  <div class="card">
				    <a class="image">
				      <img src="<c:url value="/img/avatar.jpg"/>">
				    </a>
				    <div class="content">
				    	<textarea rows="" cols="" placeholder="添加描述..."></textarea>
				    </div>
				    <div class="extra meta">
						<a href=""><i class="delete icon"></i>删除</a>
				    </div>
				  </div>

				  <div class="card">
				    <a class="image">
				      <img src="<c:url value="/img/avatar.jpg"/>">
				    </a>
				    <div class="content">
				    	<textarea rows="" cols="" placeholder="添加描述..."></textarea>
				    </div>
				    <div class="extra meta">
						<a href=""><i class="delete icon"></i>删除</a>
				    </div>
				  </div> -->
				
				</div>	<!-- end cards -->		<!-- end uploadedphotos -->		

				<div class="ui form">
					<div class="field">
						<textarea rows="" cols="" id="album_desc"></textarea>
					</div>
					
				</div>
				<div class="ui button" id="saveAlbumBtn">
					保存
				</div>
				
			</div>	<!-- end span8 -->
			
			<div class="span4">
			</div> <!-- end span4 -->
		</div>
	</div>

</body>
</html>