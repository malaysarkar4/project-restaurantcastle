<%-- 
    Document   : updateavail
    Created on : 19 Jul, 2017, 1:46:47 PM
    Author     : Sarkar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<body background="C:\Users\malay\Desktop\project\web\background3.jpg" width="100%" height="100%">
        <center><font face="Jokerman" size="10" color="#FFff00"><a href ="index.html">Update Availability of Seats</a></font></center><hr/><br><hr />
        <hr/>
        <marquee direction="up" loop="infinite" scrollamout=50 vspace="2" hspace="2" width="100%" bgcolor="honeydew">
            <center>
                <img src="banner2.png" alt="banner" width='1500' height="400" border="4"/>
                <img src="recipe-banner.jpg" alt="banner" height="400" width='1500' border="4"/>
                <img src="menuBanner.jpg" alt="banner" height="400" width='1500' border="4"/>
                <img src="bannner.jpg" alt="banner" height="400" width='1500' border="4"/> 
                <img src="banner-1a.jpg" alt="banner" height="400" width='1500' border="4"/>
            </center>
                
        </marquee>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Availability of Seats</title>
    </head>
    <body>
<form method="get" action="final_update.jsp">        
        <%

          InitialContext initialContext = new InitialContext();

          Context context = (Context) initialContext.lookup("java:comp/env");

          DataSource ds = (DataSource) context.lookup("search");

          Connection connection = ds.getConnection();

if (connection == null)

{

    throw new SQLException("Error establishing connection!");

}




out.println("Restaurant Name:<center><input type='text' name='res4'></center>");
out.println("Type the avail value<center><input type='text' name='avail4'></center>");
out.println("<input type='submit' value='Update'");
%>
</form>
    </body>
</html>
