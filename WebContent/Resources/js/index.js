//删除左右两端的空格
function trim(str){
	//删除左边空格/(^\s*)/g，删除右边空格/(\s*$)/g
	return str.replace(/(^\s*)|(\s*$)/g, "");
}

function onLoadFun(){
	var div=document.getElementById("firstDiv");
	var lis=div.childNodes;
	var results = "";
	for(var i=0;i<lis.length;i++){
		var item = lis.item(i).id;
		if(item != null & item != ""){
			results +=("Item "+i+": "+lis.item(i).id+"\n");
			document.getElementById(item).value += results;
		}
	}
}

function onClickGoto(){
	var txtValue = document.getElementById("inputTxt").value;
	//<!--这是为了防止那些不支持js运行的浏览器而设置的，假如浏览器不支持js，就会把它当做html的注释，不会去编译 -->
	//<!-- &amp;&amp;是html内的转义，实质是&&，所以最好分离js -->
	if(txtValue != null && txtValue != "")
	{
		if(isNaN(txtValue))//是否是非数字值
			txtValue = "?name=" + txtValue;
		else if(trim(txtValue) == "")
			;
		else
			txtValue = "?id=" + txtValue;
		document.getElementById("hrefTxt").href += txtValue;
	}
}
//onclick单击事件
function onClick(strId){
	document.getElementById(strId).select();
}

//ondblclick双击事件
function onClickClear(strId){
	document.getElementById(strId).value="";
}

//onfocus获取焦点，进入文本框
function onFocusInit(){
	document.getElementById("inputTxt").style.color = "#ff0000";
}

//onblur失去焦点，离开文本框
function onBlurInit(){
	var txt = document.getElementById("inputTxt").value;
	 if(txt==null || txt==""){
		document.getElementById("inputTxt").value="lucy";
		document.getElementById("inputTxt").style.color = "#ff0000";
		document.getElementById("inputTxt").style.fontStyle = "italic";
	} 
}
