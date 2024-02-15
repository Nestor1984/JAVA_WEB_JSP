<%-- 
    Document   : salida
    Created on : 12-feb-2024, 20:54:07
    Author     : Usuario
--%>

<%@page import="operaciones.Calculadora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Salida:</h1>
        <%
            String opcion = request.getParameter("opcion");
            double dato = Double.parseDouble(request.getParameter("dato"));
            Calculadora cal = new Calculadora(dato);
            
            switch(opcion){
                case "valor-absoluto":
                    out.println("El valor absoluto es: " + cal.calValorAbsoluto());
                    break;
                case "valor-arcotangente":
                    out.println("El arcotangente es: " + cal.calValorArcotangente());
                    break;
                case "valor-seno":
                    out.println("El seno es: " + cal.calValorSeno());
                    break;
                case "valor-coseno":
                    out.println("El coseno es: " + cal.calValorCoseno());
                    break;
                case "valor-tangente":
                    out.println("El tangente es: " + cal.calValorTangente());
                    break;
                case "valor-p-cuadrado":
                    out.println("El cuadrado es: " + cal.potenciaCuadrado());
                    break;
                case "valor-p-cubo":
                    out.println("El cubo es: " + cal.potenciaCubo());
                    break;
                case "valor-r":
                    out.println("El redondeo es: " + cal.redondeo());
                    break;
                default:
                    out.println("Error");
                    break;                    
            }
        %>
        <br/>
        <a href="index.jsp">Volver</a>
    </body>
</html>
