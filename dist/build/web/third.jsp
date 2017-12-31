<%-- 
    Document   : third
    Created on : 11 Jul, 2017, 1:20:35 PM
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
        <title>Cuisines Available!</title>
    </head>
    
    <body background="C:\Users\malay\Desktop\project\web\baackground.jpg" >
        <hr/>
        <a href="index.html" target="_blank">Home</a>
        <center><font face='Jokerman' size='10' color='#FFff00'>Cuisines Available!</font></center><hr />
        
        <hr/>
        <marquee direction="up" loop="infinite" scrollamout=50 vspace="2" hspace="2" width="100%" bgcolor="honeydew" >
            <center>
                <img src="banner2.png" alt="banner" width='1500' height="400" border="4"/>
                <img src="header2.jpg" alt="banner" height="400" width='1500' border="4"/>
                <img src="menuBanner.jpg" alt="banner" height="400" width='1500' border="4"/>
                <img src="banner3.jpg" alt="banner" height="400" width='1500' border="4"/> 
                <img src="banner-1a.jpg" alt="banner" height="400" width='1500' border="4"/> 
            </center>
                
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

String s2=session.getAttribute("res_name").toString();
session.setAttribute("res", s2);
String x2="select * from speciality";
PreparedStatement q = connection.prepareStatement(x2);
ResultSet rs1 = q.executeQuery();
out.println("<form method='get' action='billing.jsp'>");


out.println("<center><table border=2 cellspacing=15 cellpadding=15 bordercolor='blue' width='75%'> <center>");
out.println("<center><tr>");
out.println("<td bgcolor='peru'><font face='Verdana' size='6' color='brown'><center>Cuisines</center></font></td>");
out.println("<td bgcolor='peru'><font face='Verdana' size='6' color='brown'><center>Price</center></font></td>");
out.println("<td bgcolor='peru'><font face='Verdana' size='6' color='brown'><center>Quantity</center></font></td></tr></center>");
while(rs1.next()){
    if(s2.equals(rs1.getString("res_name"))){
       out.println("<center><tr>");
       out.println("<td bgcolor='gold'>");
       out.println("<font face='Verdana' size='5' color='brown'><input type=checkbox name="+rs1.getString("cuisiene")+" value="+rs1.getString("cuisiene")+">"+rs1.getString("cuisiene")+"<br>");
       out.println("</font></td>");
       
       out.println("<td bgcolor='silver'><center><font face='Verdana' size='5' color='black'>");
       out.println(rs1.getString("price"));
       out.println("</font></center></td>");
        out.println("<td bgcolor='gold'><font face='Verdana' size='5' color='aquamarine'>");
       out.println("<center><input type='text' name="+rs1.getString("cuisiene")+"1></center>");
       out.println("</font></td>");
       
       
       out.println("</tr></center>");
       out.println("<br>");
    
    
    
    
    }
}
out.println("</table></center>");
out.println("<center><font face='Verdana' size='10' color='brown'><input type='submit' value='PAY'></center>");
out.println("</form>");
%>
    <hr/>
        <center>
            <div class="grid-full copyright">
                <div style="background-color:rgb(0,0,0) ;clear:both">
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
