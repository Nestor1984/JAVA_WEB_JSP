<%-- 
    Document   : index
    Created on : 12-feb-2024, 19:49:12
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
        <h1>Calcular IMC</h1>
        <fieldset>
            <legend>Ingresar datos:</legend>
            <form action="salida.jsp" method="post">
                <label for="nombre">Ingresar nombre completo: </label>
                <input id="nombre" type="text" name="txt-nombre" placeholder="Ingresar nombre..." required/><br/><br/>
                <label for="peso">Ingresa tu peso (Ejemplo: 60): </label>
                <input id="peso" type="text" name="txt-peso" placeholder="Ingresar peso...(kg)" required/><br/><br/>
                <label for="altura">Ingresa tu altura (Ejemplo: 1.70): </label>
                <input id="altura" type="text" name="txt-altura" placeholder="Ingresar altura...(m)" required/><br/><br/>
                <input type="submit" name="btn-calcular" value="Enviar">
                <input type="reset" value="Reiniciar">
            </form>
        </fieldset>
    </body>
</html>
