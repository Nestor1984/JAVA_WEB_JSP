<%-- 
    Document   : mostrar
    Created on : 06-feb-2024, 18:47:00
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head> 
    <body>
        <h4>Salida:</h4>
        <%
        int numero = Integer.parseInt(request.getParameter("numero"));
        if (numero > 0) {
            float porcentaje;
            porcentaje = (float) numero / 100;
            out.println("El numero es: " + numero);
            out.println("<br>El porcentaje es: " + porcentaje);
        }else{
            out.println("<br><em>Hubo un error!</em>");
            System.exit(0);
        }
        %>
    </body>
</html>
