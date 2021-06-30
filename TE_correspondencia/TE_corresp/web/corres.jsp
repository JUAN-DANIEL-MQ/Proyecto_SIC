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

        <title>Correspondencias</title>
        <style>
            body {
                background: -webkit-linear-gradient(to top, hsla(317, 78%, 96%, .40), 
    	                                        hsla(316, 83%, 57%, .40), 
    	                                        hsla(276, 97%, 38%, .40), 
    	                                        hsla(246, 100%, 6%, .40)),
                                                url(../IMG/PORT_2.jpeg); 
     /* Chrome 10-25, Safari 5.1-6 */
    background: linear-gradient(to top, hsla(317, 78%, 96%, .40), 
    	                                hsla(316, 83%, 57%, .40), 
    	                                hsla(276, 97%, 38%, .40), 
    	                                hsla(246, 100%, 6%, .40)),
                                        url(../IMG/PORT_2.jpeg);
            }
            
        </style>
        
        
    </head>
    <body>
        <div class="container">
            <h1>Correspondencias</h1>
            <jsp:include page="WEB-INF/menu.jsp">
                <jsp:param name="opcion" value="corres" />
            </jsp:include>
            <br>
            <p align="right" ><a href="Logout" class="btn btn-danger" align-right >Cerrar Sesion</a></p>
            <a href="CorCorrespondencia?action=add" class="btn btn-primary btn-sm"><i class="fas fa-plus-circle"></i> Nuevo Correspondencia</a>
            <br>
            <table class="table table-striped">
                <tr>
                    <th>ID</th>
                    <th>ID Tipo</th>
                    <th>ID Estudiante</th>
                    <th>Referencia</th>
                    <th># Hojas</th>
                    <th># Copias</th>
                    <th>Recepcionado</th>
                    <th>Devolucion</th>
                    <th>Observacion</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach var="item" items="${correspondencias}">
                <tr>
                    <td>${item.id_co}</td>
                    <td>${item.id_tipo_co}</td>
                    <td>${item.id_estudiante}</td>
                    <td>${item.referencia}</td>
                    <td>${item.nro_hojas}</td>
                    <td>${item.nro_copias}</td>
                    <td>${item.fecha_ingreso}</td>
                    <td>${item.fecha_devolucion}</td>
                    <td>${item.observacion}</td>
                    <td><a href="CorCorrespondencia?action=edit&id=${item.id_co}"><i class="fas fa-edit"></i></a></td>
                    <td><a href="CorCorrespondencia?action=delete&id=${item.id_co}" onclick="return(confirm('Esta seguro que desea eliminar la Correspondencia ???'))">
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
