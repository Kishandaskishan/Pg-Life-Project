ss<%-- 
    Document   : userbookroom
    Created on : 29 Oct, 2022, 1:04:43 PM
    Author     : Amare
--%>

<%@ page import="java.sql.*" %>


<%
    
    
    if(request.getParameter("addroom") != null){
        String uname = request.getParameter("uname");
        String uemail = request.getParameter("uemail");
        String umobile = request.getParameter("umobile");
        String pgid = request.getParameter("pgid");
        String city = request.getParameter("city");
        String price = request.getParameter("price");
        String pgownername = request.getParameter("pgownername");
        String pgownerno = request.getParameter("pgownerno");
        String payment = request.getParameter("payment");
        

        
        
        out.println(uname);
        out.println(uemail);
        out.println(price);
        out.println(city);
        out.println(umobile);
        out.println(pgid);
        out.println(pgownername);
        out.println(pgownerno);
        out.println(payment);
        
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pglife?useSSL=false", "root", "root");
            Statement st=conn.createStatement();
            int i=st.executeUpdate("INSERT INTO `booking-log`(pgid, city, price, uname, uemail, umobileno, pgownername, pgownermobileno, payment) values('"+pgid+"','"+city+"','"+price+"','"+uname+"','"+uemail+"','"+umobile+"','"+pgownername+"','"+pgownerno+"','"+payment+"')");
            out.println("Data is successfully inserted!");
            out.println(i);
            if(i == 1){
                String redirectURL = "userdashboard.jsp";
                response.sendRedirect(redirectURL);
            }
            else{
                out.println("Data is not inserted!");
            }
        }
        catch(Exception e)
            {
            out.print(e);
            e.printStackTrace();
        }
        
        
    }

%>