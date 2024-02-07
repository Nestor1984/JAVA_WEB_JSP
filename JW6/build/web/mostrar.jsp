<%-- 
    Document   : mostrar
    Created on : 06-feb-2024, 19:06:03
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
        <h1>Arreglo ordenado - Metodo burbuja</h1>
        <%
            int[] arreglo = new int[10];
            int vAux = 1;

            for (int i = 0; i < 10; i++) {
                arreglo[i] = Integer.parseInt(request.getParameter("n-" + vAux));
                vAux++;
            }
            out.println("<strong><em>Arreglo ingresado:</em></strong>");
        %>
        <table cellspacing="1" cellpadding="1" border="1">
            <tr>
                <%for (int i : arreglo) {%>
                <td style="width: 50px;"><%= i%></td>
                <% }%>
            </tr>
        </table>
        <%
            // Ordenamos el arreglo por el metodo burbuja
            int aux;
            for (int i = 0; i < 9; i++) { // El primer for controla las vueltas
                for (int j = 0; j < 9; j++) {
                    if (arreglo[j] > arreglo[j + 1]) {
                        aux = arreglo[j];
                        arreglo[j] = arreglo[j + 1];
                        arreglo[j + 1] = aux;
                    }
                }
            }

            out.println("<strong>Arreglo ordenado en forma creciente:</strong>");
        %>
        <table cellspacing="1" cellpadding="1" border="1">
            <tr>
                <%for (int i = 0; i < 10; i++) {%>
                <td style="width: 50px;"><%= arreglo[i]%></td>
                <% }%>
            </tr>
        </table>
        <%
            out.println("<strong>Arreglo ordenado en forma decreciente:</strong>");
        %>
        <table cellspacing="1" cellpadding="1" border="1">
            <tr>
                <%for (int i = 9; i >= 0; i--) {%>
                <td style="width: 50px;"><%= arreglo[i]%></td>
                <% }%>
            </tr>
        </table>
        <br>
        <a href="index.jsp">Volver al inicio</a>
    </body>
</html>
