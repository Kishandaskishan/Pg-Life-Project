s<html><body bgcolor="khaki">

        <%

            session.removeAttribute("email");
            session.invalidate();
            response.sendRedirect("index.html");

        %>

        

    </body>

</html>