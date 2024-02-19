<%-- 
    Document   : index
    Created on : 18-feb-2024, 21:56:01
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
        <h1>Formulario Persona</h1>
        <fieldset>
            <legend>Datos:</legend>
            <form action="PersonaServlet" method="post">
                <br/>
                <label for="nom">Nombre: </label>
                <input type="text" name="nombre" id="nom" placeholder="Ingresar nombre..." required/><br/><br/>
                <label for="ed">Edad: </label>
                <input type="number" name="edad" id="ed" placeholder="Ingresar edad..." required/><br/><br/>
                <label>Sexo: </label><br/><br/>
                <input type="radio" name="sexo" value="M" checked/>Masculino<br/><br/>
                <input type="radio" name="sexo" value="F"/>Femenino<br/><br/>
                <input type="radio" name="sexo" value="O"/>Otros<br/><br/>
                <input type="submit" value="Enviar al servlet"/>
            </form>
        </fieldset>
    </body>
</html>
