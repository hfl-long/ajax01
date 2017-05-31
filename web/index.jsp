<%--
  Created by IntelliJ IDEA.
  User: hfl
  Date: 2017/5/27
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<form name="form1" action="index.jsp" method="post">
    <input type="text" name="username" value="zhang"/>
    <input type="button" name="ok" value="保存1"/>
</form>
<form name="form2" action="index.jsp" method="post">
    <input type="text" name="username" value="zhang2"/>
    <input type="button" name="ok2" value="保存2"/>
</form>


您喜欢的城市：<br>
<%--<ul id="city">--%>
    <%--<li id="bj" value="beijing">北京</li>--%>
    <%--<li id="sh" value="shanghai">上海</li>--%>
    <%--<li id="cq" value="chongqing">重庆</li>--%>
<%--</ul>--%>

<%--<select name="edu" id="edu">--%>
    <%--<option value="博士">…………博士…………</option>--%>
    <%--<option value="硕士">…………硕士…………</option>--%>
    <%--<option value="本科">…………本科…………</option>--%>
    <%--<option value="幼儿园">…………幼儿园…………</option>--%>
<%--</select>--%>
<div id="city"></div>
<script language="JavaScript">
    //使用两种方式输出表单的action值（使用表单的名称，使用表单数组forms）
    //        //方法1
    //        var formElement = document.form1;
    //        alert(formElement.action);
    //        alert(formElement.method);
    //
    //        //方法2
    //        var formElement = document.forms[0];
    //        alert(formElement.method);

    //使用两种方式输出表单的method的值，使用表单数组forms，使用表单数组forms）

    //增加城市节点  <li id="tj" value="天津">天津</li>

    //        //<li></li>
    //        var liElement = document.createElement("li");
    //        //设置属性 <li id="tj" value="tianjin"></li>
    //        liElement.setAttribute("id","tj");
    //        liElement.setAttribute("value","tianjin");
    //        //创建文本节点“天津”
    //        var textElement = document.createTextNode("天津");
    //        //增加文本节点“天津”到<li id="tj" value="tianjin"></li>形成<li id="tj" value="天津">天津</li>
    //        liElement.appendChild(textElement);
    //        //获取父节点
    //        var cityElement = document.getElementById("city");
    //        //添加<li id="tj" value="天津">天津</li>到父节点下
    //        cityElement.appendChild(liElement);
    //增加节点<option value="大专">…………大专…………</option>

    //创建<option value="大专">…………大专…………</option>
    //    var optionElement = document.createElement("option");
    //    optionElement.setAttribute("value", "大专");
    //    var textElement = document.createTextNode("…………大专…………");
    //    optionElement.appendChild(textElement);
    //    //获取id="edu"节点
    //    var selectElement = document.getElementById("edu");
    //    //添加
    //    selectElement.appendChild(optionElement);


    //插入新的节点<li id="tj" name="tianjin">天津</li>
    //在<li id="cq" name="chongqing">重庆</li>的前面
    //    var liElement = document.createElement("li");
    //    liElement.setAttribute("id","th");
    //    liElement.setAttribute("name","tianjin");
    //    var textElement = document.createTextNode("天津");
    //    liElement.appendChild(textElement);
    //    //获取<li id="cq" name="chongqing">重庆</li>
    //    var cqElement = document.getElementById("cq");
    //    //获取重庆节点的父节点
    //    var cqParentElement = cqElement.parentNode;
    //    //插入
    //    cqParentElement.insertBefore(liElement,cqElement);

    //插入新的节点<li id="tj" name="tianjin">天津</li>
    //在<li id="sh" name="shanghai">上海</li>的后面


    //创建<li id="tj" name="tianjin">天津</li>
    //    var liElement = document.createElement("li");
    //    liElement.setAttribute("id", "tj");
    //    liElement.setAttribute("name", "tianjin");
    //    var textElement = document.createTextNode("天津");
    //    liElement.appendChild(textElement);
    //
    //    //获取上海节点
    //    var shElement = document.getElementById("sh");
    //    //获取上海节点的下一个兄弟节点 <li id="cq" value="chongqing">重庆</li>
    //    var nextShElement = shElement.nextSibling;
    //    //获取上海节点的父节点
    //    var shParentElement = shElement.parentNode;
    //    //添加到上海节点的下一个兄弟节点 <li id="cq" value="chongqing">重庆</li>的前面
    //    shParentElement.insertBefore(liElement, nextShElement);

    //插入新的节点<li id="tj" name="tianjin">天津</li>到 <li id="sh" value="shanghai">上海</li>
    //如上海节点是最后一个节点插入到该节点的<li id="sh" value="shanghai">上海</li>的后面
    //否则插入到该节点的前面

    //创建<li id="tj" name="tianjin">天津</li>
    //    var liElement = document.createElement("li");
    //    liElement.setAttribute("id", "tj");
    //    liElement.setAttribute("name", "tianjin");
    //    var textElement = document.createTextNode("天津");
    //    liElement.appendChild(textElement);
    //    //获取上海节点
    //    var shElement = document.getElementById("sh");
    //
    //    //上海节点的父节点
    //    var shParentElement = shElement.parentNode;
    //
    //    //获取上海节点的父节点中的最后一个字节点
    //    var lastChildParentElement = shParentElement.lastChild;
    //    //对比上海节点和上海节点的父节点中的最后一个子节点
    //    if (shElement == lastChildParentElement) {
    //        shParentElement.appendChild(liElement);
    //
    //        //如果是相等，表示上海节点是最后一个节点，此时插入上海节点的后面
    //    } else {
    //        shParentElement.insertBefore(liElement, shElement);
    //        //如果不相等，表示上海节点不是最后一个节点，此时插入上海节点的前面
    //    }

    //删除<url id="city">下<li id="bj" name="beijing">北京</li>

//    //获取子节点
//    var bjElement = document.getElementById("bj");
//    //获取父节点
//    var cityElement = document.getElementById("city");
//
//    //删除
//    var oldElement = cityElement.removeChild(bjElement);
//
//    //测试
//    alert(oldElement.getAttribute("id"));


    //方法一
//    //在div层中插入<h1>今天</h1>
//
//        //创建<h1>今天</h1>
//        var h1Element = document.createElement("h1");
//        var textElement = document.createTextNode("今天");
//        h1Element.appendChild(textElement);
//        //获取div节点
//        var divElement = document.getElementById("city");
//        //添加
//    divElement.appendChild(h1Element);
    //方法二
        document.getElementById("city").innerHTML="<h1>今天</h1>";


</script>
</body>
</html>
