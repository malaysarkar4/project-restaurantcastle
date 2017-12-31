<%-- 
    Document   : final_update
    Created on : 19 Jul, 2017, 2:40:59 PM
    Author     : Sarkar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
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
<form method="get" action="checkavail.jsp">
        <%

          InitialContext initialContext = new InitialContext();

          Context context = (Context) initialContext.lookup("java:comp/env");

          DataSource ds = (DataSource) context.lookup("search");

          Connection connection = ds.getConnection();

if (connection == null)

{

    throw new SQLException("Error establishing connection!");

}

String t1=request.getParameter("res4");
int n1=Integer.parseInt(request.getParameter("avail4"));

String x6="select *from search_res";

PreparedStatement q = connection.prepareStatement(x6);
ResultSet rs6 = q.executeQuery();

while(rs6.next())
{
    if(t1.equals(rs6.getString("res_name")))
    {
        String temp1="update search_res set avail='"+n1+"' where res_name='"+t1+"'";
       
        PreparedStatement p2 = connection.prepareStatement(temp1);
        p2.executeUpdate();

    }
}
out.println("successfully updated<br>");
out.println("<input type='submit' value='back to admin'");



        %>
</form>
    </body>
</html>
