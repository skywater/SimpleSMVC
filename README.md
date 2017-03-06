# SimpleSMVC
最简单spring mvc框架搭建
===
【详细步骤】
---
###一、新建dynamic web project动态网页项目
1、new——project——web/dynamic web project，输入项目名SimpleSMVC，选择tomcat版本，或者点击New Runtime重新配置，
一直点击next，最后一步选中Generate web.xml deployment descriptor完成；
2、选中项目，右键properties，将项目的字符集改为UTF-8，详情见《1.1、eclipse细节配置.txt》；

###二、基本配置
1、选中WebContent目录，右键新建一个jsp文件，内容见该项目代码；
2、现在就将这个项目部署到Tomcat,来验证是否可以跑起来。
在项目上右键——Run/Debug As——Run/Debug on Server，
直接点击Finish，浏览器http://localhost:8080/SimpleSMVC/ ；
注意：
(1)jsp文件要放在默认目录WebContent下，而不是WEB-INF下，不然会找不到；
当然可以在web.xml下配置，就可以找到，如下：
<welcome-file-list>
    <welcome-file>/WEB-INF/pages/index.jsp</welcome-file>
</welcome-file-list>
(2)jsp不像html可以直接用浏览器打开，jsp需要配置tomcat启动。
但启动后，直接修改jsp，google浏览器刷新即可更新。
