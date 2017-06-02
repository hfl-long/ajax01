//定义用户名校验的方法
function verify() {
    //首先测试一下页面的按钮下，可以调用这个方法
    //使用javascript的alert方法，显示一个弹出提示框

    //1.获取文本框中的内容
    //document.getElementById("userName"); dom的方式
    //Jquery的查找节点的方式，参数中#加上id属性值可以找到一个节点。
    //jquery的方法返回的都是jquery的对象，可以继续在上面执行其它的jquery方法
    var jqueryObj = $("#userName");
    //获取节点的值
    var userName = jqueryObj.val();
    // alert(userName);
    //2.将文本框中的数据发送给服务器段的servlet
    //调用jquery的XMLHttpRequest对象请求的封装
    $.get("AJAXServlet?name=" + userName, null, callback);


    //回掉函数
    function callback(data) {
        // alert("服务器段的数据回来了！！");
        //3.接收服务器返回的数据
        alert(data);
        //4.将服务器端返回的数据动态的显示在页面上
        //找到保存结果信息的节点
        var resultOjb = $("#result");
        //动态的改变页面中div节点中的内容
        resultOjb.html(data);
        alert("xxx");
    }

}