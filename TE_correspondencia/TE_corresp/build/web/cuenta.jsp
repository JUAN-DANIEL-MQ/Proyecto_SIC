<%
  if (session.getAttribute("admin") != "OK") {
          response.sendRedirect("UsuarioeCorrespondencia");
      }
  
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" >
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

        <title>Cuentas</title>
        <style>
    body {
          background-image: radial-gradient(circle at 50% -20.71%, #ade5ff 0, #7dcefb 25%, #3cb5f2 50%, #009ce9 75%, #0085e0 100%);
           }
        </style>
        
    </head>
    <body>
        <div class="container">
            <h1>Cuentas</h1>
            <jsp:include page="WEB-INF/menu.jsp">
                <jsp:param name="opcion" value="cuenta" />
            </jsp:include>
            <br>
            <p align="right" ><a href="Logout" class="btn btn-danger" align-right >Cerrar Sesion</a></p>
            <a href="CueCorrespondencia?action=add" class="btn btn-primary btn-sm"><i class="fas fa-plus-circle"></i> Nuevo Cuenta</a>
            <br>
            <table class="table table-striped">
                <tr>
                    <th>ID</th>
                    <th>Usuario</th>
                    <th>Contraseña</th>
                    <th>Nivel</th>
                    <th>Persona</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach var="item" items="${cuentas}">
                <tr>
                    <td>${item.id_usuario}</td>
                    <td>${item.nombre_user}</td>
                    <td>${item.password}</td>
                    <td>${item.nivel_user}</td>
                    <td>${item.id_persona}</td>
                    <td><a href="CueCorrespondencia?action=edit&id=${item.id_usuario}"><i class="fas fa-edit"></i></a></td>
                    <td><a href="CueCorrespondencia?action=delete&id=${item.id_usuario}" onclick="return(confirm('Esta seguro que desea eliminar la Cuenta ???'))">
                            <i class="fas fa-trash-alt"></i>
                        </a>
                    </td>
                </tr>                    
                </c:forEach>
            </table>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>

    </body>
</html>
