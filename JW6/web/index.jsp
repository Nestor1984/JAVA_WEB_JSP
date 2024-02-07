<%-- 
Escribe un programa que ordene un array de números enteros en orden ascendente o descendente.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Ingrese los datos del array:</h3>
        <fieldset>
            <legend>Usted debe ingresar numeros</legend>
            <form action="mostrar.jsp" method="post">
                <table cellspacing="1" cellpadding="1" border="1">
                    <tr>
                        <td><input style="width: 50px;" type="number" placeholder="D1" name="n-1" required></td>
                        <td><input style="width: 50px;" type="number" placeholder="D2" name="n-2" required></td>
                        <td><input style="width: 50px;" type="number" placeholder="D3" name="n-3" required></td>
                        <td><input style="width: 50px;" type="number" placeholder="D4" name="n-4" required></td>
                        <td><input style="width: 50px;" type="number" placeholder="D5" name="n-5" required></td>
                        <td><input style="width: 50px;" type="number" placeholder="D6" name="n-6" required></td>
                        <td><input style="width: 50px;" type="number" placeholder="D7" name="n-7" required></td>
                        <td><input style="width: 50px;" type="number" placeholder="D8" name="n-8" required></td>
                        <td><input style="width: 50px;" type="number" placeholder="D9" name="n-9" required></td>
                        <td><input style="width: 50px;" type="number" placeholder="D10" name="n-10" required></td>
                    </tr>
                </table>
                <br>
                <input type="submit" value="Enviar arreglo">
                <input type="reset" value="Limpiar arreglo">
            </form>
        </fieldset>
    </body>
</html>
