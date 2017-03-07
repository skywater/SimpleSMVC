# SimpleSMVC
Opt1：ContextLoaderListener和DispatcherServlet分离处理；
最简单spring mvc框架搭建
===
【详细步骤】
---
#####一、新建dynamic web project动态网页项目
1、new——project——web/dynamic web project，输入项目名SimpleSMVC，选择tomcat版本，或者点击New Runtime重新配置，
一直点击next，最后一步选中Generate web.xml deployment descriptor完成；<br>
2、选中项目，右键properties，将项目的字符集改为UTF-8，详情见《1.1、eclipse细节配置.txt》；<br>

#####二、基本配置
1、选中WebContent目录，右键新建一个jsp文件，内容见该项目代码；<br>
2、再就将这个项目部署到Tomcat，来验证是否可以跑起来。<br>
在项目上右键——Run/Debug As——Run/Debug on Server，
直接点击Finish，浏览器http://localhost:8080/SimpleSMVC/ ；<br>
注意：<br>
(1)jsp文件要放在默认目录WebContent下，而不是WEB-INF下，不然会找不到；<br>
当然可以在web.xml下配置，就可以找到，如下：<br>
&lt;welcome-file-list&gt;<br>
　　&lt;welcome-file&gt;/WEB-INF/pages/index.jsp&lt;/welcome-file&gt;<br>
&lt;/welcome-file-list&gt;<br>
(2)jsp不像html可以直接用浏览器打开，jsp需要配置tomcat启动。<br>
但启动后，直接修改jsp，google浏览器刷新即可更新。

#####三、分层结构MVC
1、点击Java Resources，展开，删除src文件夹；<br>
再选中Java Resources右键new——Source Folder，project name选择本项目，folder name为src/main/java；<br>
同理新建src/main/resource；<br>
如果不小心删除了文件夹，再次新建失败，提示说已经存在，则选中项目，右键properties或者build path，<br>
可以看到删除的文件夹仍在，选中remove即可，重复该步骤new即可；<br>
2、选中src/main/java，右键新增包，包名：<br>
com.company.springmvc.services.api.controller、com.company.springmvc.services.staffinfo；<br>
api.controller下面就是各种业务的接口；<br>
staffinfo就是其中一种业务，若还有其他业务，在com.company.springmvc.services下继续建包即可；<br>
然后在staffinfo中实行mvc模式，建如下包：<br>
com.company.springmvc.services.staffinfo.impl，在controller跳转进入后，实现具体的功能；<br>
com.company.springmvc.services.staffinfo.dao；<br>
com.company.springmvc.services.staffinfo.po；<br>
com.company.springmvc.services.staffinfo.bo；<br>
com.company.springmvc.services.staffinfo.vo；<br>
<br>
同理选中src/main/resource，新增包com.company.springmvc.config，其实也可以新建文件夹，但就要一直点展开，不如包快；<br>
再选中该包，右键new——other——General/folder，新建db-config、spring-config文件夹；<br>
文件夹db-config下继续新建mybatis文件夹，mybatis下新建对应的服务staffinfo文件夹和jdbc.properties数据库属性文件；<br>
staffinfo文件夹存放mybatis映射配置文件，对应staffinfo.dao下的文件；<br>
<br>
显示模式：<br>
最左侧Project Explore栏右上角，点击向下的三角形箭头，下拉选项有文件夹和包的显示模式，<br>
“folder presentation”，一般默认，好像没什么用；<br>
“package presentation”，选中hierarchical（分层），即可显示层次结构；<br>
3、选中WebContent，新增文件夹Resources，再在该目录下新增js、css、img等文件夹；<br>
4、选中WEB-INF，新增文件夹pages，里面存放各种jsp文件；<br>
5、WEB-INF下lib放入要用的jar包，可以直接粘贴进去；<br>
6、build path——source最下方default output folder目录改成：<br>
项目名SimpleSMVC/WebContent/WEB-INF/classes，为了方便寻找资源，利用classpath；
#####四、实现业务功能和各种配置(web,spring,mybatis)，再就将这个项目部署到Tomcat，运行；
运行之前将tomcat的path去掉，可双击tomcat，点击Modules，选中项目edit，删除Path，点击OK，再Ctrl+S保存；<br>
