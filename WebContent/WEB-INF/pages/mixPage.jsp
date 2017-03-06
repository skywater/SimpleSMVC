<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>混合图JSP</title>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
		<!-- 注意：以下的href和src路径一定要在Resources前加斜杠/，
			  不加的时候一般是可以，但是如果@Controller下的@RequestMapping有路径，则会加上的@RequestMapping地址，最后无法找到 -->
		<!-- http://www.w3school.com.cn/tags/att_link_href.asp -->
		<!-- 这里指定css样式，是为了检查配置的静态文件的访问是否成功 -->
		<link rel="stylesheet" type="text/css" href="/Resources/css/style.css" />
		
		<!-- http://www.w3school.com.cn/tags/tag_img.asp -->
		<!-- 必需的属性：alt，规定图像的替代文本,如果无法显示图像，浏览器将显示替代文本；src：规定显示图像的 URL。 -->
		<!-- 一般加不加px都一样，但是firefox下css语法比较严谨，必须加px，如果不加，width属性根本没起作用 -->
		<img alt="东西南北.png" src="/Resources/img/东西南北.png" width="300px" height="300px" />
		
		<!-- 老旧的实例会在 script标签中使用 type="text/javascript"，现在已经不必。
			 JavaScript是所有现代浏览器以及 HTML5 中的默认脚本语言。 -->
		<!-- 详情http://www.w3school.com.cn/js/js_howto.asp -->
		<!-- html中<script type="text/javascript" src="/Resources/index.js"/>不能这样写，必须要如下结尾 -->
		<script src="/Resources/js/index.js"></script>
				
	</head>
	<body bgcolor="#00a000" onload="onLoadFun()">
		<br/>
		${myhtml}
		${info}
		${msg}
	  	<br/>
	  	<div id="firstDiv">
		  	<abbr title="鼠标放过来，提示：请不要乱填，输入id或name">请输入要查找的姓名：</abbr>
		  	<input type="text" value="lucy" id="inputTxt" 
	  			onclick="onClick(this.id)" ondblclick="onClickClear(this.id)" 
		  		onblur="onBlurInit()" onfocus="onFocusInit()" 
		  		style="color:#555;font-weight:bold;font-style:italic" />
		  	<!-- 注意，这里的href和前面"jpq/con/urlSee"不一样，也不能是"/urlStaffInfo"，直接承接改URI跳转 -->
		  	<a id="hrefTxt" href="urlStaffInfo" onclick="onClickGoto()">staffInfo</a><br/>
		</div>
	  	<a id="hre" href="urlSee">see</a><br/>
	</body>
</html>
