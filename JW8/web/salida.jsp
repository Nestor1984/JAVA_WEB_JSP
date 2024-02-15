<%-- 
    Document   : salida
    Created on : 12-feb-2024, 19:57:18
    Author     : Usuario
--%>

<%@page import="logica.IMC"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Resultado:</h1>
        <%
            String nombre = request.getParameter("txt-nombre");
            float peso = Float.parseFloat(request.getParameter("txt-peso"));
            float altura = Float.parseFloat(request.getParameter("txt-altura"));

            // Instanciamos la clase
            IMC imc = new IMC(nombre, peso, altura);
            float calculoIMC = imc.realizarCalculo();
            String nom = imc.obtenerNombre();
        %>
        <% if (imc.siSeRealizoElCalculo()) {
        %>
        <table border="1">
            <thead>
                <tr>
                    <th>Datos</th>
                    <th>Salida</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Nombre: </td>
                    <td><%= nom%></td>
                </tr>
                <tr>
                    <td>Peso: </td>
                    <td><%= peso%></td>
                </tr>
                <tr>
                    <td>Altura: </td>
                    <td><%= altura%></td>
                </tr>
                <tr>
                    <td>IMC: </td>
                    <td><%= calculoIMC%></td>
                </tr>
                <tr>
                    <td>Diagnostico: </td>
                    <td><%if (calculoIMC < 18.5) {
                            out.println("Bajo Peso");
                        } else if (calculoIMC >= 18.5 && calculoIMC <= 24.9) {
                            out.println("Normal");
                        } else if (calculoIMC >= 25 && calculoIMC <= 29.9) {
                            out.println("Sobrepeso");
                        } else if (calculoIMC >= 40) {
                            out.println("Obesidad extrema");
                        }
                        %></td>
                </tr>
            </tbody>
        </table>

        <h2>Indice de masa corporal</h2>
        <table border="1">
            <thead>
                <tr>
                    <th>IMC</th>
                    <th>Calificacion</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><strong><em>Menor a 18,5</em></strong></td>
                    <td><strong><em>Bajo Peso</em></strong></td>
                </tr>
                <tr>
                    <td><strong><em>18,5 - 24,9</em></strong></td>
                    <td><strong><em>Normal</em></strong></td>
                </tr>
                <tr>
                    <td><strong><em>25 - 29,9</em></strong></td>
                    <td><strong><em>Sobrepeso</em></strong></td>
                </tr>
                <tr>
                    <td><strong><em>30 - 39,9</em></strong></td>
                    <td><strong><em>Obesidad</em></strong></td>
                </tr>
                <tr>
                    <td><strong><em>Mayor a 40</em></strong></td>
                    <td><strong><em>Obesidad extrema</em></strong></td>
                </tr>
            </tbody>
        </table>
        <br/>
        <a href="index.jsp">Volver</a>
        <%
            }
        %>
    </body>
</html>
