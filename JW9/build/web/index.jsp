<%-- 
Clase Math
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Clase Math en JAVA</h1>
        <fieldset>
            <legend>Calcular por clase Math:</legend>
            <form action="salida.jsp" method="post">
                <label for="ope">Seleccionar operacion</label><br/><br/>
                <select id="ope" name="opcion">
                    <option value="valor-absoluto">Valor absoluto</option>
                    <option value="valor-arcotangente">Arcotangente</option>
                    <option value="valor-seno">Seno</option>
                    <option value="valor-coseno">Coseno</option>
                    <option value="valor-tangente">Tangente</option>
                    <option value="valor-p-cuadrado">Potencia al cuadrado</option>
                    <option value="valor-p-cubo">Potencia al cubo</option>
                    <option value="valor-r">Redondeo</option>
                </select>
                <br/><br/>
                <label for="dato">Ingresar el dato: </label><br/><br/>
                <input id="dato" type="text" placeholder="Ingresar valor..." name="dato" required/><br/><br/>
                <input type="submit" value="Enviar"/>
                <input type="reset" value="Reiniciar"/>
            </form>
        </fieldset>
    </body>
</html>
