<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

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
            <h1>Formulario de Usuarios</h1>
            <jsp:include page="WEB-INF/menu.jsp">
                <jsp:param name="opcion" value="usuarios" />
            </jsp:include>
            <br>
            <form action="UsuarioeCorrespondencia" method="post" >
                <input type="hidden" name="id" value="${usuario.ci}">
                
                <%--  1  --%> 
                <div class="form-group">
                    <label for="" class="form-label">CI</label>
                    <input type="text" class="form-control" name="ci" value="${usuario.ci}" placeholder="Escriba su CI">                    
                </div>
                 <%--  2  --%>              
                <div class="form-group">
                    <label for="" class="form-label">Nombre</label>
                    <input type="text" class="form-control" name="nombre" value="${usuario.nombre}" placeholder="Escriba su Nombre">                    
                </div>
                <%--  3  --%> 
                <div class="form-group">
                    <label for="" class="form-label">Apellido Paterno</label>
                    <input type="text" class="form-control" name="ap_paterno" value="${usuario.ap_paterno}" placeholder="Escriba su Apellido Paterno">                    
                </div>
                <%--  4  --%> 
                <div class="form-group">
                    <label for="" class="form-label">Apellido Materno</label>
                    <input type="text" class="form-control" name="ap_materno" value="${usuario.ap_materno}" placeholder="Escriba su Apellido Materno">                    
                </div>
                
                <%--  6  --%><%--  6  --%><%--  6  --%> 
                <div class="form-group">
                    <label for="" class="form-label">Telefono</label>
                    <input type="text" class="form-control" name="telefono" value="${usuario.telefono}" placeholder="Escriba su Telefono">                    
                </div>
                <%--  7  --%>  
                <div class="form-group">
                    <label for="" class="form-label">Ingreso</label>
                    <select name="id_modingreso" class="form-control">
                        <option value="">-- Seleccione --</option>
                        <c:forEach var="item" items="${lista_modalidad}">
                            <option value="${item.id_modalidad}" <c:if test="${usuario.id_modingreso == item.id_modalidad}">
                                        selected
                                    </c:if>>${item.nombre_modalidad}</option>
                        </c:forEach>
                    </select>
                </div>
                <%--  8  --%> <%--  8  --%> 
                <div class="form-group">
                    <label for="" class="form-label">Cargo</label>
                    <input type="text" class="form-control" name="cargo" value="${usuario.cargo}" placeholder="Seleccione su Cargo">
                </div>
                <%--  9  --%> 
                <button type="submit" class="btn btn-primary">Guardar</button>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>

    </body>
</html>


