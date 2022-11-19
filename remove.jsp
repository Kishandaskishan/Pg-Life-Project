s<%-- 
    Document   : remove
    Created on : 1 Nov, 2022, 12:21:35 AM
    Author     : Amare
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%String name = request.getParameter("logid");
out.print(name);


try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pglife?useSSL=false", "root", "root");
            Statement st=conn.createStatement();
            int i=st.executeUpdate("DELETE FROM `booking-log` WHERE id='"+name+"'") ;
            out.println("Data is deleted");
            out.println(i);
            if(i == 1){
                String redirectURL = "pgownerbooking-log.jsp";
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

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
