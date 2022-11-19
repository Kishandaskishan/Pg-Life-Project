<%-- 
    Document   : adminlogin
    Created on : 30 Oct, 2022, 10:52:08 AM
    Author     : Amare
--%>
<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
            String uname = request.getParameter("uname");
            String pass = request.getParameter("pass");
           

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pglife?useSSL=false", "root", "root");
                PreparedStatement pst = conn.prepareStatement("select * from adminlogin where email=? and password=?");
                pst.setString(1, uname);
                pst.setString(2, pass);

                ResultSet rs = pst.executeQuery();
                if (rs.next()) {
                    session.setAttribute("adminemail",uname);  
                     String redirectURL = "adminbooking-log.jsp";
                response.sendRedirect(redirectURL);
                } else {
                    out.println("Incorrect login credentials");
                }
            } catch (Exception e) {
                //throws new ServletException("",e);
            }

        %>
<!DOCTYPE html>

<html>
    <head>
        <title>Login Form</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                                                                                                                                                                                                              
    </head>
    <body background="https://wallpapershome.com/images/pages/pic_h/19257.jpg"><br><br><br><br><br><br><br>
        
      
    <center>
        
          <div style="height:350px;width:450px;border-radius:50%;"><br><br>
              <font face="lucida handwriting" size="6" color="yellow"><u>Login Form</u></font><br><br><br>
        <form method="post" action="" style="font-size:0.7cm;">  

        Username    :<input type="text" name="uname" style="height:35px;width:250px;border-radius:20pt;border-style:solid;"/><br/><br/>
        Password :<input type="password" name="pass" style="height:35px;width:250px;border-radius:20pt;border-style:solid;"/><br/><br/>
        
        <input type="submit" value="Login" style="background:darkgoldenrod;font-size:0.6cm;height:50px;width:100px;border-radius:20pt;border-style:solid;"/>
        </form>
            </div>
    </center>
    
    </body>
</html>