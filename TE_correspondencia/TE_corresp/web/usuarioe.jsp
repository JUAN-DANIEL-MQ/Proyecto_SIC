<%
  if (session.getAttribute("login") != "OK") {
          response.sendRedirect("login.jsp");
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

        <title>Usuarios</title>
        <style>
    body {
   background: linear-gradient(to top, hsla(198, 39%, 28%, .50), 
                                          hsla(195, 35%, 20%, .50), 
                                          hsla(198, 44%, 11%, .50));
    }
        </style>
        
    </head>
    <body>
        <div class="container">
            <h1>Usuarios</h1>
            <jsp:include page="WEB-INF/menu.jsp">
                <jsp:param name="opcion" value="usuarios" />
            </jsp:include>
            <br>
            <p align="right" ><a href="Logout" class="btn btn-danger" align-right >Cerrar Sesion</a></p>
            <a href="UsuarioeCorrespondencia?action=add" class="btn btn-primary btn-sm"><i class="fas fa-plus-circle"></i> Nuevo </a>
            <br>
            <table class="table table-striped">
                <tr>
                    <th>CI</th>
                    <th>Nombre</th>
                    <th>Paterno</th>
                    <th>Materno</th>
                    <th>Telefono</th>
                    <th>Ingreso</th>
                    <th>Cargo</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach var="item" items="${usuarios}">
                <tr>
                    <td>${item.ci}</td>
                    <td>${item.nombre}</td>
                    <td>${item.ap_paterno}</td>
                    <td>${item.ap_materno}</td>
                    <td>${item.telefono}</td>
                    <td>${item.id_modingreso}</td>
                    <td>${item.cargo}</td>
                    <td><a href="UsuarioeCorrespondencia?action=edit&id=${item.ci}"><i class="fas fa-edit"></i></a></td>
                    <td><a href="UsuarioeCorrespondencia?action=delete&id=${item.ci}" onclick="return(confirm('Esta seguro que desea eliminar el usuario???'))">
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