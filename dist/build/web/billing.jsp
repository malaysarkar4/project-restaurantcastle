<%-- 
    Document   : billing
    Created on : 11 Jul, 2017, 3:02:52 PM
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
        <title>Billing</title>
    </head>
    <body background="C:\Users\malay\Desktop\project\web\background3.jpg">
        <a href="index.html" target="_blank">Home</a>
        <center><font face='Jokerman' size='10' color='RED'>Billing</font></center><hr/>
        <marquee direction="up" loop="infinite" scrollamout=50 vspace="2" hspace="2" width="100%" bgcolor="honeydew">
            <center>
                <img src="banner2.png" alt="banner" width='1500' height="400" border="4"/>
                <img src="woodhouse-tandoori.jpg" alt="banner" height="400" width='1500' border="4"/>
                <img src="menuBanner.jpg" alt="banner" height="400" width='1500' border="4"/>
                <img src="header2.jpg" alt="banner" height="400" width='1500' border="4"/> 
                <img src="banner-1a.jpg" alt="banner" height="400" width='1500' border="4"/> 
            </center>
                
        </marquee>
        
        <br>
        <%

          InitialContext initialContext = new InitialContext();

          Context context = (Context) initialContext.lookup("java:comp/env");

          DataSource ds = (DataSource) context.lookup("search");

          Connection connection = ds.getConnection();

if (connection == null)

{

    throw new SQLException("Error establishing connection!");

}

String res=session.getAttribute("res").toString();

String x4="select * from speciality where res_name='"+res+"'";
PreparedStatement q = connection.prepareStatement(x4);
ResultSet rs3 = q.executeQuery();
int sum=0;
out.println("<br><center><table border=6 cellspacing=15 cellpadding=15 bordercolor='pink' bgcolor='white' width='75%'> ");
out.println("<center><table border=2 cellspacing=15 cellpadding=15 bordercolor='blue' width='75%'> <center>");
out.println("<center><tr>");
out.println("<td bgcolor='peru'><font face='Verdana' size='6' color='brown'><center>Cuisines</center></font></td>");
out.println("<td bgcolor='peru'><font face='Verdana' size='6' color='brown'><center>Total</center></font></td>");
out.println("<td bgcolor='peru'><font face='Verdana' size='6' color='brown'><center>Quantity</center></font></td></tr></center>");

while(rs3.next()){
    
    if(rs3.getString("cuisiene").equals(request.getParameter(rs3.getString("cuisiene")))){
       
       
      
       
   
      //count=count+1;
      //out.println("count is "+count);
out.println("<tr>");
 out.println("<td bgcolor='floralwhite'><font face='Times New Roman' size='6' color='#336600'><center>");
  out.println(request.getParameter(rs3.getString("cuisiene")));
  out.println("</center></font></td>");
  
  //out.println("********"+request.getParameter("chinese1"));
       int s=Integer.parseInt(rs3.getString("price"))*Integer.parseInt(request.getParameter(rs3.getString("cuisiene")+"1"));
  // int s=Integer.parseInt(rs3.getString("price"));    
        out.println("<td bgcolor='antiquewhite'><font face='Verdana' size='5' color='#333300'><center>");
        out.println(s);
         out.println("</center></font></td >");
         out.println("<td bgcolor='honeydew'><font face='Verdana' size='8' color='#333366'><center>");
         int p=Integer.parseInt(request.getParameter(rs3.getString("cuisiene")+"1"));
         out.println(p);
         out.println("</center></font></td>");
         out.println("</tr>");
       sum=sum+s;
       
      
    }
}

out.println("<tr>");
out.println("<td colspan=3 bgcolor='silver'>");
out.println("<center><font face='Verdana' size='6' color='black'>");
out.println("TOTAL="+sum);
out.println("</font></center>");
out.println("</td>");
out.println("</tr>");
out.println("</table></center>");

    
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
