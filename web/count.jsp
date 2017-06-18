<%--
  Created by IntelliJ IDEA.
  User: Liruiji
  Date: 2017/6/12
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>图片视频浏览</title>
    <style>
        body{
            background: url("");
        }
    </style>
</head>
<body>
<%
    Integer number = 0;
    if (application.getAttribute("number") == null) {
        number = 1;
    } else {
        number = Integer.parseInt((String) application
                .getAttribute("number"));
        number = number + 1;
    }
    out.print("您是第" + number + "位访问者！");
    application.setAttribute("number", String.valueOf(number));
%>
<div id="div1">
    <img src="img/39669cc715248ffff5ae594672508f18.jpeg" />
</div>
<p>东京喰种主题曲</p></div>
<div>
    <video width="320" height="240" controls="controls">
        <source src="movie/kkk.mp4" type="video/mp4" />
        <object data="a/kkk.mp4" width="320" height="240">
            <embed width="320" height="240" src="movie.swf" />
        </object>
    </video>

</div>
</body>
</html>
