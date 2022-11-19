s<%-- 
    Document   : registration
    Created on : 26 Sep, 2022, 2:58:27 PM
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
            String Uname = request.getParameter("Uname");
            String Email = request.getParameter("Email");
            String Password = request.getParameter("password");
            String Confirm_Password = request.getParameter("Confirm_password");
            String Mobile = request.getParameter("Mobile");
            
            
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pglife?useSSL=false", "root", "root");
            Statement st=conn.createStatement();
            int i=st.executeUpdate("INSERT INTO user_registration(Uname, Email, Password, Confirm_password, Mobile) values('"+Uname+"','"+Email+"','"+Password+"','"+Confirm_Password+"','"+Mobile+"')");
            out.println("Data is successfully inserted!");
            out.println(i);
            if(i == 1){
                String redirectURL = "login1.html";
                response.sendRedirect(redirectURL);
            }
            else{
                out.println("Data is not inserted!");
            }
        }
        catch(Exception e)
            {
            System.out.print(e);
            e.printStackTrace();
        }

        %>
    </body>
</html>
