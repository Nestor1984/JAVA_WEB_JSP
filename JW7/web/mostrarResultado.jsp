<%-- 
    Document   : mostrarResultado
    Created on : 08-feb-2024, 19:20:51
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
        <h2>Matriz Generada</h2>
        <%
            String mensaje = request.getParameter("mensaje");
            if (mensaje.equals("generar")) { // Inicio del if
                int[][] matriz = new int[5][5];
                // Generamos la matriz
                for (int i = 0; i < 5; i++) {
                    for (int j = 0; j < 5; j++) {
                        matriz[i][j] = (int) (Math.random() * 100);
                    }
                }
        %>
        <table border="1">
            <%
                for (int i = 0; i < 5; i++) {
            %>
            <tr> 
                <%
                    for (int j = 0; j < 5; j++) {
                %>

                <td><%= matriz[i][j]%></td>

                <%
                    }%>
            </tr>
            <%
                }
            %>
        </table>
        <h3>Promedio de la matriz.</h3>
        <%
            // Sacamos el promedio
            float promedio = 0;
            float suma = 0;
            int contador = 0;
            for (int i = 0; i < 5; i++) {
                for (int j = 0; j < 5; j++) {
                    suma = suma + matriz[i][j];
                    contador++;
                }
            }
            promedio = suma / contador;
            out.println("<em>" + promedio + "</em>");
        %>
        <h3>Numero mayor y la cantidad de veces que este se repite.</h3>
        <%
            // Calculamos el mayor y la cantidad de veces que este se repite
            int mayor = matriz[0][0];
            int contadorMayor = 0; // Contador para el mayor valor
            for (int i = 0; i < 5; i++) {
                for (int j = 0; j < 5; j++) {
                    if (matriz[i][j] > mayor) {
                        mayor = matriz[i][j];
                        contadorMayor = 1; // Reiniciamos el contador para el nuevo mayor
                    } else if (matriz[i][j] == mayor) {
                        contadorMayor++; // Incrementamos el contador si encontramos una repetición del mayor
                    }
                }
            }
            out.println("El mayor valor es <em>" + mayor + "</em> y se repite " + contadorMayor + " veces.");
        %>
        <h3>Mostrar en consola todos los números pares.</h3>
        <%
            // Calculamos y mostramos los numeros pares de la matriz
            for (int i = 0; i < 5; i++) {
                for (int j = 0; j < 5; j++) {
                    if (matriz[i][j] % 2 == 0) {
                        if (!(i == 4 && j == 4)) { // Si no estamos en la ultima celda
                            out.print(matriz[i][j] + ", ");
                        } else {
                            out.print(matriz[i][j]);
                        }
                    }
                }
            }
        %>
        <h3>Mostrar la suma de las diagonales</h3>
        <%
            // Encontramos la suma de la diagonal principal
            out.println("<h5>Suma de la diagonal principal</h5>");
            int sumaDiagonalPrincipal = 0;
            for (int i = 0; i < 5; i++) {
                for (int j = 0; j < 5; j++) {
                    if (i == j) {
                        sumaDiagonalPrincipal += matriz[i][j];
                    }
                }
            }
            out.println(sumaDiagonalPrincipal);

            // Encontramos la suma de la diagonal secundaria
            out.println("<h5>Suma de la diagonal secundaria</h5>");
            int sumaDiagonalSecundaria = 0;
            for (int i = 0; i < 5; i++) {
                sumaDiagonalSecundaria += matriz[i][4 - i];
            }
            out.println(sumaDiagonalSecundaria);
        %>
        <h3>Mostrar la suma de la la última fila.</h3>
        <%
                int sumaUltimaFila = 0;
                for (int i = 0; i < 5; i++) {
                    sumaUltimaFila += matriz[matriz.length - 1][i]; // matriz[cantidadDeFilas - 1][iteradorDeColumnas]
                }
                out.println(sumaUltimaFila);
            } // Fin del if
        %>
        <br/> <br/>
        <a href="index.jsp">Volver al inicio</a>
    </body>
</html>
