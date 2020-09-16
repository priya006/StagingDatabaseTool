<%--
  Created by IntelliJ IDEA.
  User: pboopathi
  Date: 9/15/20
  Time: 9:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--   Java Enterprise Web App Project Deployed using Glass Fish Server Locally--%>
<%--</body>--%>
<%--</html>--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    //String id = request.getParameter("userid");
    String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String database = "DataTool";
    String userid = "root";
    String password = "password";


    try {
        Class.forName(driver);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body>

<h1>Retrieve data from database in jsp</h1>
<table border="1">
    <tr>
        <td>first name</td>
        <td>City name</td>
        <td>Email</td>

    </tr>
    <%
        try{
           // connection = DriverManager.getConnection(connectionUrl+database, userid, password);
            connection =  DriverManager.getConnection(connectionUrl+database+"?characterEncoding=latin1&useConfigs=maxPerformance", userid, password);
            statement=connection.createStatement();
            String sql ="select fullname,city,emailAddress from userstable";
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
    %>
    <tr>
        <td><%=resultSet.getString("fullName") %></td>
        <td><%=resultSet.getString("city") %></td>
        <td><%=resultSet.getString("emailAddress") %></td>
    </tr>
    <%
            }
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</table>
</body>
</html>

