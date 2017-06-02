function verify() {
  $.get("AJAXServlet?name=" + $("#userName").val(),null,function (data) {
      $("#result").html(data);
  });
}