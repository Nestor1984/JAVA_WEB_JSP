<%-- 
Crear un matriz de 5 x 5
Llenar la matriz con números aleatorios.
Para obtener un número aleatorio en Java podemos hacer uso de la siguiente sentencia.

int numero = (int)(Math.random() * 100);
A partir de la matriz anteriormente creada.

Mostrar el promedio de la matriz.
Mostrar el número mayor y la cantidad de veces que este se repite.
Mostrar todos los números pares.
Mostrar la suma de las diagonales
Mostrar la suma de la la última fila.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Matriz 5 x 5</h1>
        <p>Para generar la matriz debe hacer click en el boton</p>
        <form action="mostrarResultado.jsp" method="post">
            <input type="hidden" value="generar" name="mensaje">
            <input type="submit" value="Generar matriz">
        </form>
    </body>
</html>
