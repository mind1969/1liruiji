<%--
  Created by IntelliJ IDEA.
  User: Liruiji
  Date: 2017/6/12
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%
    boolean flag=false;
    try {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        ResultSet rs;
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/users";
        Connection con = DriverManager.getConnection(url, "root", "root");
        Statement stmt = con.createStatement();
        String sequery = "SELECT * FROM USER WHERE username='" + username + "'AND password='" + password + "'";
        rs=stmt.executeQuery(sequery);
        while(rs.next()){
            flag=true;
            break;
        }
    }catch (Exception e) {
        out.println("登录失败");
    e.printStackTrace();
    }
    if(flag){
        out.println("登陆成功");
        response.sendRedirect("count.jsp");
    }
    else {
        out.println("登录失败");
        response.sendRedirect("login.html");
    }
%>
