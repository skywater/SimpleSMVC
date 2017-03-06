<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
	<head>
		<title>JSP标准！！</title>
		<link rel="stylesheet" type="text/css" href="/Resources/css/style.css" />
		<img alt="东西南北.png" src="/Resources/img/东西南北.png" width="300px" height="300px" />
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
