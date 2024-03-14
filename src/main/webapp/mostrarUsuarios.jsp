<%-- 
    Document   : mostrarUsuarios
    Created on : 5/03/2024, 10:12:45 p. m.
    Author     : Beto Leyton
--%>

<%@page import="java.util.List"%>
<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>mostarUsuarios</title>
    </head>
    <body>
        <h1>Lista de Usuarios Registrados</h1>
        <%
            List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("listausuarios");
            int cont = 1;
            for (Usuario usuario: listaUsuarios){
                        
        %>   
            
        <p>Usuario No <%=cont%></p>
        <p>Documento: <%=usuario.getDocumento() %></p>
        <p>Nombre: <%=usuario.getNombre() %></p>
        <p>Apellido: <%=usuario.getApellido() %></p>
        <p>Telefono: <%=usuario.getTelefono() %></p>
        <p>---------------------------------------</p>
        <%cont = cont +1;%>
        
        <% } %>
    </body>
</html>
