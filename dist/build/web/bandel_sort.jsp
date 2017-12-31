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
            <marquee direction="up" loop="infinite" scrollamout=50  hspace="2" width="100%" bgcolor="honeydew">
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


String s1=session.getAttribute("loc").toString();
String x1="";
if(request.getParameter("sort").equals("rating")){
x1="select * from search_res where loc='"+s1+"' order by rating desc";
}
else{
    
x1="select * from search_res where loc='"+s1+"' order by price desc";
}

PreparedStatement p = connection.prepareStatement(x1);
ResultSet rs = p.executeQuery();
out.println("<center><table border=4 cellspacing=5 cellpadding=5 bordercolor='pink' bgcolor='white' width='75%'>");
out.println("<tr><td bgcolor='goldenrod'><center><font face='Verdana' size='6' color='black'>Restaurant Names</center></td><td bgcolor='goldenrod'><center><font face='Verdana' size='6' color='black'>Rating<center</td><td bgcolor='goldenrod'><center><font face='Verdana' size='6' color='black'>Price for two</center></td></tr>");
while(rs.next()){
 out.println("<font face='Verdana' size='5' color='indigo'><tr><td bgcolor='lavender'><font face='Cambria' size='5' color='#333366'><input type=radio name=res_name value='"+rs.getString("res_name")+"'>"+rs.getString("res_name")+"</td></font><td><font face='Elephant' size='6' color='#333366'><center> "+rs.getString("rating")+ "</td></center></font><td bgcolor='lavender'>  <font face='Cambria' size='6' color='indigo'><center>"+rs.getString("price")+"<br></td></center></font></tr>");
       out.println("<br>");
}


out.println("</td></tr></table></center><br>");
out.println("<center><input type='submit' value='BOOK A TABLE'></center></td></p> </form>");

        %>
        
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
