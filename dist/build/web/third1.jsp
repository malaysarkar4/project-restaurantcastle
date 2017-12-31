<%-- 
    Document   : bandel
    Created on : 9 Jul, 2017, 1:53:56 PM
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
        <title>Select the hotels</title>
    </head>
    <body background="C:\Users\malay\Desktop\project\web\012.jpg" width="100%" height="100%" >
        <form method="get" action="table.jsp">
            <hr/><a href="index.html" target="_blank">Home</a>

        <center><font face="Jokerman" size="12" color="#FFff00">Select your Hotel</font></center><hr /><p align="center" valign="bottom" >
           <hr/>
            <marquee direction="up" loop="infinite" scrollamout=50 vspace="2" hspace="2" width="100%" bgcolor="honeydew">
                <center>
                    <img src="banner-food.jpg" alt="banner" width='1500' height="400" border="4"/>
                    <img src="img-banner.jpg" alt="banner" height="400" width='1500' border="4"/>
                    <img src="banner3.jpg" alt="banner" height="400" width='1500' border="4"/>
                    <img src="bannner.jpg" alt="banner" height="400" width='1500' border="4"/> 
                    <img src="recipe-banner.jpg" alt="banner" height="400" width='1500' border="4"/> 
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


String s1=request.getParameter("a");
String res=session.getAttribute("res_name").toString();

String x1="select * from search_res where res_name='"+res+"'";
PreparedStatement p = connection.prepareStatement(x1);
ResultSet rs = p.executeQuery();
int c=0;
while(rs.next()){
    c=Integer.parseInt(rs.getString("avail"))-Integer.parseInt(s1);
}
if(c<0){
    out.println("<script>alert('table not available');window.location='index.html';</script>");
}
else{
String x2="update search_res set avail='"+Integer.toString(c)+"' where res_name='"+res+"'";
PreparedStatement p2 = connection.prepareStatement(x2);
p2.executeUpdate();
out.println("<script>alert('table available');window.location='third.jsp';</script>");
}
        %>
        
       
        </p> </form>
        <form method="get" action="third.jsp">
    <center><input type='submit' value='OK'></center>
        </form>
        <hr/>

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
