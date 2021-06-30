<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

        <title>Cuenta</title>
        <style>
    body {
          background-image: radial-gradient(circle at 50% -20.71%, #ade5ff 0, #7dcefb 25%, #3cb5f2 50%, #009ce9 75%, #0085e0 100%);
           }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Cuenta </h1>
            <jsp:include page="WEB-INF/menu.jsp">
                <jsp:param name="opcion" value="cuenta" />
            </jsp:include>
            <br>
            <form action="CueCorrespondencia" method="post" >
                <input type="hidden" name="id" value="${cuenta.id_usuario}">
                
                <div class="form-group">
                    <label for="" class="form-label">Nombre Usuario</label>
                    <input type="text" class="form-control" name="nombre_user" value="${cuenta.nombre_user}" placeholder="Usuario">                    
                </div>
                <%--  6  --%> 
                <div class="form-group">
                    <label for="" class="form-label">Contraseña</label>
                    <input type="text" class="form-control" name="password" value="${cuenta.password}" placeholder="Contraseña">                    
                </div>
                <%--  6  --%> 
                <%--  8  --%> <%--  8  --%>
                <div class="form-group">
                    <label for="" class="form-label">Nivel</label>
                    <select name="nivel_user" class="form-control">
                        <option value="">-- Seleccione --</option>
                        <c:forEach var="item" items="${lista_nivel}">
                            <option value="${item.id_nivcuenta}" <c:if test="${cuenta.nivel_user == item.id_nivcuenta}">
                                        selected
                                    </c:if>>${item.nombre_nivel}</option>
                        </c:forEach>
                    </select>
                </div>
                 
                <%--  8  --%> <%--  8  --%>
                <div class="form-group">
                    <label for="" class="form-label">Persona</label>
                    <select name="id_persona" class="form-control">
                        <option value="">-- Seleccione --</option>
                        <c:forEach var="item" items="${lista_usuario}">
                            <option value="${item.ci}" <c:if test="${cuenta.id_persona == item.ci}">
                                        selected
                                    </c:if>>${item.nombre} ${item.ap_paterno} ${item.ap_materno} -------> Cargo: ${item.cargo}</option>
                        </c:forEach>
                    </select>
                </div>
                 <%--  8  --%> <%--  8  --%>
                <button type="submit" class="btn btn-primary">Guardar</button>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>

    </body>
</html>
