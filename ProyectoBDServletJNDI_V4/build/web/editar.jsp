<%-- 
    Document   : editar
    Created on : 23-07-2020, 21:43:15
    Author     : Ninry
--%>

<%@page import="cl.modelo.dto.PersonaDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar</title>
    </head>
    <body>
        <%
            PersonaDTO p1 = (PersonaDTO) request.getAttribute("persona");
        %>

        <h1>Modificación de Personas</h1>
        <form action="modificarServlet" method="get">
            <table border="1">
               <input type="hidden" name="idpersona" value="<%= p1.getId()%>" />
               
                <tr><td>Nombre: </td> <td><input type="text" name="nompersona" value="<%= p1.getNombre()%>" /> <br/>               
                </tr>
                <tr><td>Apellido: </td><td><input type="text" name="apepersona" value="<%= p1.getApellido()%>" /> <br/>  </td>
                <tr><td>Edad: </td><td><input type="text" name="edadpersona" value="<%= p1.getEdad()%>" /> <br/> </td>
                <tr><td>Sexo:</td> <td>Masculino &nbsp;
                <input type="radio" name="sexopersona" value="M" 
                <% if(p1.getSexo() !=null && p1.getSexo().equals("M")){out.println("checked");}%> />
                &nbsp; &nbsp;
                Femenino &nbsp;
                <input type="radio" name="sexopersona" value="F"
                       <% if(p1.getSexo()!=null && p1.getSexo().equals("F")) {%>checked<%}%> /> 
                    </td>
                   
                    
                    
                </tr>


            </table>
                    <input type="submit" value="Modificar">  
        </form>
    </body>
</html>
