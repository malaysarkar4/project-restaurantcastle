<%-- 
    Document   : admin_main
    Created on : 19 Jul, 2017, 9:59:04 AM
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
        <title>Modification page for changing Databases</title>
    </head>
    <body background="C:\Users\malay\Desktop\project\web\background3.jpg" width="100%" height="100%">
        <%
            if(request.getParameter("userid").equals("admin") && request.getParameter("psw").equals("1234")){
            %>
    
    
    <center><font face="Jokerman" size="10" color="#FFff00"><a href ="index.html">Modification</a></font></center><hr/><br><hr />
      
        <marquee direction="up" loop="infinite" scrollamout=50 vspace="2" hspace="2" width="100%" bgcolor="honeydew">
            <center>
                <img src="banner2.png" alt="banner" width='1500' height="400" border="4"/>
                <img src="recipe-banner.jpg" alt="banner" height="400" width='1500' border="4"/>
                <img src="menuBanner.jpg" alt="banner" height="400" width='1500' border="4"/>
                <img src="bannner.jpg" alt="banner" height="400" width='1500' border="4"/> 
                <img src="banner-1a.jpg" alt="banner" height="400" width='1500' border="4"/> 
            </center>
                
        </marquee>
        <br><br>
        <form method="get" action="checkavail.jsp">
            <input type="submit" value="Check the availability of seats"><br>
        </form>
        <br><br>
        
        <form method="get" action="updateavail.jsp">
            <input type="submit" value="Update availabilty of seats">
        </form>
        <br>    
           <br> 
        
        
        <center>
            <div class="grid-full copyright">
                <div style="background-color:#b5dcb3;clear:both">
                    <address>
                        <font face="Bedrock" size="4" color="#99FFCC">
                        <footer>
                            Copyright © 2017 
                            <a href ="index.html">
                            BOOK EVERYTHING</a>
                            All right reserved.
                        </footer>
                        </font>
                    </address>
                </div>
            </div>
        </center>
        
        <%
            }
else{
out.println("wrong id / password");

}

            %>
        
    </body>
</html>
