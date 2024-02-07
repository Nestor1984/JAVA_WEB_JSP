<%-- 
Programa que lea una cantidad de grados centígrados y la pase a grados Fahrenheit.
La fórmula correspondiente para pasar de grados centígrados a fahrenheit es:
F = 32 + ( 9 * C / 5)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Calculadora</h3>
        <fieldset>
            <legend>De grados centígrados a grados Fahrenheit.</legend><br>
            <form action="" method="post">
                <label for="g-c">Ingresar grados centígrados: </label>
                <input type="text" placeholder="Ingresar grados centígrados..." id="g-c" name="g-c" required><br><br>
                <button type="submit">Enviar</button>
                <input type="reset" value="Limpiar">
            </form>
        </fieldset>
        
        <hr/>
        
        <%
            String cadenaNum = "";
            cadenaNum = request.getParameter("g-c");
            if (cadenaNum != null && !cadenaNum.isEmpty()) { // Validamos
                
                float gCenti = 0.0f;
                gCenti = Float.parseFloat(cadenaNum); 
                
                // Calculamos
                float fahrenheit = 0.0f;
                fahrenheit = 32 + (9 * gCenti / 5);
                
                // Imprimimos
                out.println("<br/><em>Grados Centigrados: " + gCenti + "</em>");
                out.println("<br/><em>=</em>");
                out.println("<br/><em>Grados Fahrenheit: " + fahrenheit + "</em>");
            }else{
                out.println("<br><em>Error</em>");
            }
        %>
    </body>
</html>
