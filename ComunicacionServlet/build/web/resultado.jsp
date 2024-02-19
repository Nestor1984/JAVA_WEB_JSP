<%-- 
    Document   : resultado
    Created on : 18-feb-2024, 22:16:06
    Author     : Usuario
--%>

<%@page import="logica.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Resultado del formulario!</h1>
        <%
        // Recuperar el objeto persona del request
        Persona persona = (Persona) request.getAttribute("persona");
        
        // Mostrar los datos del objeto persona
        out.println("Nombre: " + persona.getNombre() + "<br/>");
        out.println("Edad: " + persona.getEdad() + "<br/>");
        out.println("Sexo: " + persona.getSexo() + "<br/><br/>");
        out.println("Salida del toString:<br/>" + persona.toString() + "<br/><br/>");
        %>
        <a href="index.jsp">Volver</a>
    </body>
</html>
