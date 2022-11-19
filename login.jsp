<%-- 
    Document   : newjsp1
    Created on : 24 Sep, 2022, 11:58:44 AM
    Author     : Amare
--%>
<%@ page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String uname = request.getParameter("uname");
            String pass = request.getParameter("pass");
            out.print(uname);
            out.print(pass);
            if (uname.isEmpty() && pass.isEmpty()) {
                out.println("id and password shouldnot be empty");
            }

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pglife?useSSL=false", "root", "root");
                PreparedStatement pst = conn.prepareStatement("select Uname,Password from user_registration where Email=? and Password=?");
                pst.setString(1, uname);
                pst.setString(2, pass);

                ResultSet rs = pst.executeQuery();
                if (rs.next()) {
                    session.setAttribute("email",uname);  
                     String redirectURL = "userdashboard.jsp";
                response.sendRedirect(redirectURL);
                } else {
                    out.println("Incorrect login credentials");
                }
            } catch (Exception e) {
                //throws new ServletException("",e);
                out.print(e);
            }

        %>
    </body>
</html>
