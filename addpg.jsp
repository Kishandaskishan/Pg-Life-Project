<%-- 
    Document   : addpg
    Created on : 25 Oct, 2022, 4:27:26 PM
    Author     : Amare
--%>

<%@ page import="java.sql.*" %>


<%
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pglife?useSSL=false", "root", "root");
    Statement statement = conn.createStatement() ;
    
    if(request.getParameter("addroom") != null){
        String name = request.getParameter("name");
        String details = request.getParameter("address");
        String price = request.getParameter("price");
        String city = request.getParameter("city");
        String ownername = request.getParameter("oname");
        String email = request.getParameter("email");
        String Mobile = request.getParameter("mobile");
//        String image = "photo.jpg";
        
        
        out.println(name);
        out.println(details);
        out.println(price);
        out.println(city);
//        out.println(image);
        out.println(ownername);
        out.println(Mobile);
        out.println(email);
        
        
        int i=statement.executeUpdate("INSERT INTO pglist(city, price, pgname, pgdetails,ownername, owneremail, ownermobile) values('"+city+"','"+price+"','"+name+"','"+details+"','"+ownername+"','"+email+"','"+Mobile+"')");
            out.println("Data is successfully inserted!");
            out.println(i);
            if(i == 1){
                out.print("Inserted to database");
                String redirectURL = "./pgownerpglist.jsp";
                response.sendRedirect(redirectURL);
            }
            else{
                out.println("Data is not inserted!");
            }
    }

%>