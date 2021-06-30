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

        <title>Envios</title>
        <style>
    body {
    background: -webkit-linear-gradient(to top, hsla(0, 100%, 50%, .50), 
    	                                        hsla(57, 100%, 50%, .50), 
    	                                        hsla(108, 100%, 29%, .50)), 
    	                                        url(../IMG/PORT_2.jpeg);  
   
    background: linear-gradient(to top, hsla(0, 100%, 50%, .50), 
    	                                hsla(57, 100%, 50%, .50), 
    	                                hsla(108, 100%, 29%, .50)), 
    	                                url(../IMG/PORT_2.jpeg);
    }
    </style>
        
    </head>
    <body>
        <div class="container">
            <h1>Envios</h1>
            <jsp:include page="WEB-INF/menu.jsp">
                <jsp:param name="opcion" value="derivacion" />
            </jsp:include>
            <br>
            <p align="right" ><a href="Logout" class="btn btn-danger" align-right >Cerrar Sesion</a></p>
            <a href="DerCorrespondencia?action=add" class="btn btn-primary btn-sm"><i class="fas fa-plus-circle"></i> Nuevo Derivacion</a>
            <br>
            <table class="table table-striped">
                <tr>
                    <th>ID</th>
                    <th>ID Accion</th>
                    <th>ID Correspondencia</th>
                    <th>ID Funcionario</th>
                    <th>Recepcion</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach var="item" items="${derivaciones}">
                <tr>
                    <td>${item.id_derivacion}</td>
                    <td>${item.id_accion}</td>
                    <td>${item.id_co}</td>
                    <td>${item.id_funcionario}</td>
                    <td>${item.fecha_recepcion}</td>
                    <td><a href="DerCorrespondencia?action=edit&id=${item.id_derivacion}"><i class="fas fa-edit"></i></a></td>
                    <td><a href="DerCorrespondencia?action=delete&id=${item.id_derivacion}" onclick="return(confirm('Esta seguro que desea eliminar la Derivacion ???'))">
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