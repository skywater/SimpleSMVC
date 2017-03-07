<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
	<head>
		<title>JSP标准！！</title>
		<link rel="stylesheet" type="text/css" href="/Resources/css/style.css" />
		<!-- 该图是1920*1200，10%并不等于192或120.百分比是与浏览器显示窗口的一定比例来缩放图像。
		               图1，长宽随浏览器窗口变化而变化，图像长宽同时变化，产生扭曲；
		               图2、图3只设置一种百分比，那么不管是放大还是缩小，浏览器都将保持图像的宽高比例。
		               这意味着图像的高度与宽度之比将不会发生变化，图像也就不会发生扭曲。只是长或宽随窗口大小改变；
		              图4，固定数值，不随窗口大小改变而改变 -->
		<img alt="东西南北1.png" src="/Resources/img/东西南北.png" width="10%" height="10%" /><br>
		<img alt="东西南北2.png" src="/Resources/img/东西南北.png" width="10%" /><br>
		<img alt="东西南北3.png" src="/Resources/img/东西南北.png" height="10%" /><br>
		<img alt="东西南北4.png" src="/Resources/img/东西南北.png" width="192px" height="120px" />
		<script type="text/javascript" src="/Resources/js/index.js"></script>
	</head>
	<body>
		<%! 
		  private int initVar=0;
		  private int serviceVar=0;
		  private int destroyVar=0;
		%>
		  
		<%!
		/* 容器载入JSP文件后，它会在为请求提供任何服务前调用jspInit()方法。
		         如果您需要执行自定义的JSP初始化任务，重写jspInit()方法就行了 */
		  public void jspInit(){
		    initVar++;
		    System.out.println("jspInit(): JSP被初始化了"+initVar+"次");
		  }
		/* jspDestroy()方法在JSP中等价于servlet中的销毁方法。
		         当您需要执行任何清理工作时复写jspDestroy()方法，比如释放数据库连接或者关闭文件夹等等。 */
		  public void jspDestroy(){
		    destroyVar++;
		    System.out.println("jspDestroy(): JSP被销毁了"+destroyVar+"次");
		  }
		%>
		
		<%
		  serviceVar++;
		  System.out.println("_jspService(): JSP共响应了"+serviceVar+"次请求");
		  //jspInit();
		  String content1="初始化次数 : "+initVar;
		  String content2="响应客户请求次数 : "+serviceVar;
		  String content3="销毁次数 : "+destroyVar;
		%>
		<h1>菜鸟教程 JSP 测试实例</h1>
		<p><%=content1 %></p>
		<p><%=content2 %></p>
		<p><%=content3 %></p>
		
	  	<br/>
	  	请输入要查找的姓名：
	  	<input type="text" value="lucy" id="inputTxt" 
	  		onclick="onClick(this.id)" ondblclick="onClickClear(this.id)" 
	  		onblur="onBlurInit()" onfocus="onFocusInit()" 
	  		style="color:#555;font-weight:bold;font-style:italic" />
	  	<a id="hrefTxt" href="urlStaffInfo" onclick="onClickGoto()">staffInfo</a><br/>
	</body>
</html>
