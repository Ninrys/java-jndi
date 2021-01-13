<%-- 
    Document   : listar
    Created on : 23-07-2020, 21:43:26
    Author     : Ninry
--%>

<%@page import="java.util.List"%>
<%@page import="cl.modelo.jpa.entidades.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado</title>
    </head>
    <body>
      
        <% List listap=(List<Persona>)request.getAttribute("listap");
        %>
        <h1>Listado de Personas</h1>
        <table border="1" width="700" align="center"> 
            <tr>
                <td><b>ID</b></td>
                <td><b>Nombre</b></td>
                <td><b>Apellido</b></td>
                <td><b>Edad</b></td>
                <td><b>Sexo</b></td>
                <td><b>Operaciones</b></td>
                
            </tr>
            <% for(int i =0; i<listap.size(); i++){
                Persona p1=(Persona)listap.get(i); %>
                <tr>
                    <td><%= p1.getId() %></td>
                    <td><%= p1.getNombre()%></td>    
                    <td><%= p1.getApellido() %> </td>
                    <td><%= p1.getEdad() %></td>
                    <td><%= p1.getSexo() %></td>
                    <td> <a href="eliminarServlet?idpersona=<%= p1.getId()%> "> eliminar </a>
                        &nbsp; &nbsp;
                        <a href="editarServlet?idpersona=<%= p1.getId() %>"> Modificar </a>           
                        </td>
                       
                </tr>
                 <%} %>
        </table>
        
    </body>
</html>
