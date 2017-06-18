<%@ page import="java.sql.*" %>    <%--
  Created by IntelliJ IDEA.
  User: Liruiji
  Date: 2017/6/12
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<
<%
    String username = request.getParameter("username");
    String password1 = request.getParameter("password");
    String password2 = request.getParameter("password1");
    if (!username.isEmpty() &&!password1.isEmpty()&&!password2.isEmpty()&& password1.equals(password2)) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/users";
            Connection con= DriverManager.getConnection(url,"root","root");
            String inquery="INSERT INTO user(username, password) VALUES ('"+username+"','"+password1+"')";
            PreparedStatement ps=con.prepareStatement(inquery);
            int result=ps.executeUpdate();
            if(result>0) {
                out.println("注册成功");
                response.sendRedirect("login.html");
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("注册失败");
            response.sendRedirect("register.html");
        }
    }
    else {
        out.println("用户名和密码有问题，请重新输入");
        response.sendRedirect("register.html");
    }
%>

