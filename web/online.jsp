<%-- 
    Document   : online
    Created on : 12 Jul, 2017, 3:35:50 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        
<center><font face="Jokerman" size="10" color="#FFff00">Choose The Destination</font></center><hr/><br><hr />
<img src="banner2.png" alt="banner"/><hr/>
<%

          InitialContext initialContext = new InitialContext();

          Context context = (Context) initialContext.lookup("java:comp/env");

          DataSource ds = (DataSource) context.lookup("search");

          Connection connection = ds.getConnection();

if (connection == null)

{

    throw new SQLException("Error establishing connection!");

}


        

String x5="select * from search_res";
PreparedStatement p5 = connection.prepareStatement(x5);
ResultSet rs4 = p5.executeQuery();

while(rs4.next()){
        
        
        
        
}
        %>
        <hr/>
        
        <center>
            <div class="grid-full copyright">
                <div style="background-color:#b5dcb3;clear:both">
                    <address>
                        <font face="Bedrock" size="4" color="#99FFCC">
                        <footer>
                            Copyright © 2017 
                            <a href ="index.html">
                            Restaurant Castle</a>
                            All right reserved.
                        </footer>
                        </font>
                    </address>
                </div>
            </div>
        </center>
    </body>
</html>
