<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

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
            <h1>Nuevo envio </h1>
            <jsp:include page="WEB-INF/menu.jsp">
                <jsp:param name="opcion" value="derivacion" />
            </jsp:include>
            <br>
            <form action="DerCorrespondencia" method="post" >
                <input type="hidden" name="id" value="${derivacion.id_derivacion}">
                <%--  6  --%> <%--  6  --%> 
                <div class="form-group">
                    <label for="" class="form-label">Accion</label>
                    <select name="id_accion" class="form-control">
                        <option value="">-- Seleccione --</option>
                        <c:forEach var="item" items="${lista_accion}">
                            <option value="${item.id_accion}" <c:if test="${derivacion.id_accion == item.id_accion}">
                                        selected
                                    </c:if>>${item.nombre_accion}</option>
                        </c:forEach>
                    </select>
                </div>
                <%--  6  --%> <%--  6  --%>         
                <div class="form-group">
                    <label for="" class="form-label">Correspondencia</label>
                    <select name="id_co" class="form-control">
                        <option value="">-- Seleccione --</option>
                        <c:forEach var="item" items="${lista_corres}">
                            <option value="${item.id_co}" <c:if test="${derivacion.id_co == item.id_co}">
                                        selected
                                    </c:if>>${item.referencia}</option>
                        </c:forEach>
                    </select>
                </div>
                <%--  6  --%> 
                <div class="form-group">
                    <label for="" class="form-label">Funcionario</label>
                    <select name="id_funcionario" class="form-control">
                        <option value="">-- Seleccione --</option>
                        <c:forEach var="item" items="${lista_usuario}">
                            <option value="${item.ci}" <c:if test="${derivacion.id_funcionario == item.ci}">
                                        selected
                           </c:if>>${item.nombre} ${item.ap_paterno} ${item.ap_materno} -------> Cargo: ${item.cargo}</option>
                        </c:forEach>
                    </select>
                </div>
                <%--  6  --%> 
                <%--  8  --%> 
                <div class="form-group">
                    <label for="" class="form-label">Fecha Recepcion</label>
                    <input type="date" class="form-control" name="fecha_recepcion" value="${derivacion.fecha_recepcion}" placeholder="Fecha de Recepcion">                    
                </div>
                <%--  9  --%> 
                <button type="submit" class="btn btn-primary">Guardar</button>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>

    </body>
</html>
