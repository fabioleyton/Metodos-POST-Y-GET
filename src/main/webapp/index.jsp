<%-- 
    Document   : index
    Created on : 3/03/2024, 6:48:50 p. m.
    Author     : Beto Leyton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos del Usuario</h1>
        <div class="container">
            <form action="SvUsuarios" method="POST">
                <div class="mb-3">
                    <label class="form-label">Numero Documento</label>
                    <input type="text" class="form-control" name="documento">                    
                </div>
                <div class="mb-3">
                    <label class="form-label">Nombre</label>
                    <input type="text" class="form-control" name="nombre">
                </div>
                <div class="mb-3">
                    <label class="form-label">Apellido</label>
                    <input type="text" class="form-control" name="apellido">
                </div>
                <div class="mb-3">
                    <label class="form-label">Telefono</label>
                    <input type="text" class="form-control" name="telefono">
                </div>
                <button type="submit" class="btn btn-primary">Enviar</button>
            </form>    
            
            <<h1>Ver lista de Usuario</h1>
            <p>Para ver los datos de los usuarios cargados, haga clic en el boton</p>
            <form action="SvUsuarios" method="GET">
                <button type="submit" class="btn btn.primary">Mostrar Usuarios</button>
            </form>
        </div>
    </body>
</html>
