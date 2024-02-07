<%-- Pide por teclado un número entero positivo (debemos controlarlo) y muestra  el número 
de cifras que tiene. Por ejemplo: si introducimos 1250, nos muestre que tiene 4 cifras. 
Tendremos que controlar si tiene una o mas cifras, al mostrar el mensaje.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Ingresar datos</h2>
        <form action="" method="post">
            <label for="num">Ingresar un numero positivo</label>
            <input type="number" id="num" placeholder="Ingresar numero..." name="num" required><br><br>
            <button type="submit">Enviar</button>
        </form>
        <%
        String numero = "";
        int numAux = 0;
        
        numero = request.getParameter("num");
        
        if (numero != null && !numero.isEmpty()) {
            numAux = Integer.parseInt(numero);
            if (numAux > 0) { // Si el numero es positivo
                 int canCifras = numero.length();
                 out.println("<br>El numero " + numero + " tiene " + canCifras + " cifra/s");
            }else{
                out.println("<br>Error, el numero es negativo");
            }
        }
        %>
    </body>
</html>
