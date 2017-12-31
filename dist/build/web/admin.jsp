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
        <title>Administer's Page</title>
    </head>
    <body background="C:\Users\malay\Desktop\project\web\background3.jpg">
        
    <center><font face="Jokerman" size="10" color="#FFff00"><a href ="index.html">Choose The Destination</a></font></center><hr/><br><hr />
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
<hr/><form method="get" action="admin_main.jsp">
        Username:<input type='text' name='userid'><br>
        Password: <input type="password" name='psw'<br>
        <center><input type='submit' value='login'> </center>
</form>  
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
