<%-- 
    Document   : paginaPrincipal
    Created on : 23-07-2020, 21:42:39
    Author     : Ninry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina Principal</title>
    </head>
    <body>
        <form action="ingresarServlet" method="get">
            <ul>
                <li>
             <label for="nombre">Nombre:</label>
            <input type="text" required id="nombre" name="nombre"> 
                    
                </li>   
                <li>
                    <button type="submit"> Guardar </button>
            <button type="reset"> Limpiar </button>
                </li>
            

             </ul>   
        </form>


       
    </body>
</html>
