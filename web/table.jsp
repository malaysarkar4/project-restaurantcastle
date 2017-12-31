<%-- 
    Document   : table
    Created on : 15 Jul, 2017, 2:51:29 PM
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
    <body background="background3.jpg" width="100%" height="100%">
        
        <center><font face="Jokerman" size="10" color="blue">Enter no.of Tables</font></center><hr/><br><hr />  
        <marquee direction="up" loop="infinite" scrollamout=50 vspace="2" hspace="2" width="100%" bgcolor="honeydew">
            <center>
                <img src="recipe-banner.jpg" alt="banner" width='1300' height="400" border="4"/>
                <img src="img-banner.jpg" alt="banner" height="400" width='1300' border="4"/>
                <img src="woodhouse-tandoori.jpg" alt="banner" height="400" width='1300' border="4"/>
                <img src="bannner.jpg" alt="banner" height="400" width='1300' border="4"/> 
                <img src="banner-1a.jpg" alt="banner" height="400" width='1300' border="4"/>
            </center>
                
        </marquee>
  
        <%
            session.setAttribute("res_name",request.getParameter("res_name"));
            %>
        
            <form method="get" action="third1.jsp"><center>
            <table border=6 cellspacing=10 cellpadding=15 bordercolor='tomato' bgcolor='pink' width='75%'>
                <tr><td bgcolor='wheat'><font face='Verdana' size='6' color='#003366'><center><font face='Verdana' size='6' color='brown'>Enter the no of table </font><input type="text" name="a"></td>
                    <td td bgcolor='lightcoral'><center><input type="submit" value="ok"></center></td></tr>

      </center><hr/>
            </table></center>
                <br
      </form>
        <center>
            <div class="grid-full copyright">
                <div style="background-color:rgb(0,0,0);clear:both">
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
