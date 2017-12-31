<%-- 
    Document   : modification
    Created on : 19 Jul, 2017, 1:23:43 PM
    Author     : Sarkar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Availability of Seats</title>
    </head>

    
    <body>
        <center><font face="Jokerman" size="10" color="#FFff00"><a href ="index.html">Check Availability of Seats</a></font></center><hr/>
        <hr/>
        <marquee direction="up" loop="infinite" scrollamout=50 width="100%" bgcolor="honeydew">
                <img src="banner2.png" alt="banner" width='1500' height="400" border="4"/>
                <img src="recipe-banner.jpg" alt="banner" height="400" width='1500' border="4"/>
                <img src="menuBanner.jpg" alt="banner" height="400" width='1500' border="4"/>
                <img src="bannner.jpg" alt="banner" height="400" width='1500' border="4"/> 
                
        </marquee>
  <%

          InitialContext initialContext = new InitialContext();

          Context context = (Context) initialContext.lookup("java:comp/env");

          DataSource ds = (DataSource) context.lookup("search");

          Connection connection = ds.getConnection();

if (connection == null)

{

    throw new SQLException("Error establishing connection!");

}

String x5="select * from search_res ";
PreparedStatement r = connection.prepareStatement(x5);
ResultSet rs = r.executeQuery();
out.println("<center><table border=6 cellspacing=15 cellpadding=15 bordercolor='pink' bgcolor='white' width='75%'>");
out.println("<tr><td><font face='Times New Roman' size='6' color='#333366'>Restaurant Names</font></td><td><font face='Times New Roman' size='6' color='#333366'>Availability</font></td></tr>");
while(rs.next()){
        
       out.println("<font face='Verdana' size='5' color='#333366'><tr><td bgcolor=red>"+rs.getString("res_name")+"</td><td bgcolor='peru'>"+rs.getString("avail")+"</td>");
      
    }
out.println("</table>");


%>
    </body>
</html>
