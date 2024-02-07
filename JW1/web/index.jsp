<%-- 
Escribir un programa que muestre por pantalla la tabla de multiplicar del 1 al 10.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tabla de multiplicar</h1>
        <%
        for (int i = 1; i <= 10; i++) {
            out.println("<strong>Tabla del " + i + "</strong><br/>");
            for (int j = 1; j <= 10; j++) {
                out.println(i + " x " + j + " = " + (i*j) + "<br/>");
            }
            out.println("<br/><br/>");
        }
        %>
    </body>
</html>
