<%--
Leer un numero y calcular el 5% del numero leido. Obtener tanto el numero
como el porcentaje calculado.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h4>Calculadora</h4>
        <form action="mostrar.jsp" method="post">
            <label for="num">Ingresar numero positivo: </label>
            <input type="number" name="numero" placeholder="Ingresar numero..." required id="num"><br><br>
            <input type="submit" value="Enviar">
            <input type="reset" value="Reiniciar">
        </form>
    </body>
</html>
