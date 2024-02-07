<%-- 
    Document   : Mostrar
    Created on : 05-feb-2024, 19:58:02
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
        <%
            String num1 = "";
            String num2 = "";

            num1 = request.getParameter("num-1");
            num2 = request.getParameter("num-2");
            
            // Si los numeros cadenas no son nulos
            if (num1 != null && num2 != null && !num1.isEmpty() && !num2.isEmpty()) {
                int numero1 = Integer.parseInt(num1);
                int numero2 = Integer.parseInt(num2);

                // Mostramos los numeros pares entre esos intervalos
                int i = numero1;
                do {
                    if (i % 2 == 0) {
                        out.println("El numero " + i + " es par<br>");
                    } else {
                        out.println("El numero " + i + " es impar<br>");
                    }
                    i++;
                } while (i >= numero1 && i <= numero2);

            }

        %>
    </body>
</html>
