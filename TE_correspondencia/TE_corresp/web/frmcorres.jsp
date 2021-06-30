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
            <h1>Correspondencias Nueva</h1>
            <jsp:include page="WEB-INF/menu.jsp">
                <jsp:param name="opcion" value="corres" />
            </jsp:include>
            <br>
            <form action="CorCorrespondencia" method="post" >
                <input type="hidden" name="id" value="${correspondencia.id_co}">
                
                 <%--  2  --%>
                <%--  3  --%> <%--  3  --%> <%--  3  --%> 
                <div class="form-group">
                    <label for="" class="form-label">Tipo</label>
                    <select name="id_tipo_co" class="form-control">
                        <option value="">-- Seleccione --</option>
                        <c:forEach var="item" items="${lista_tipo}">
                            <option value="${item.id_tipo_co}" <c:if test="${correspondencia.id_tipo_co == item.id_tipo_co}">
                                        selected
                                    </c:if>>${item.nombre_tipo_co}</option>
                        </c:forEach>
                    </select>
                </div>
                <%--  3  --%> <%--  3  --%> <%--  3  --%> 
                <div class="form-group">
                    <label for="" class="form-label">Estudiante</label>
                    <input type="text" class="form-control" name="id_estudiante" value="${logeo.ci}" readonly >                    
                </div>
                <%--  4  --%> 
                <div class="form-group">
                    <label for="" class="form-label">Referencia</label>
                    <input type="text" class="form-control" name="referencia" value="${correspondencia.referencia}" placeholder="Referencia">                    
                </div>
                <%--  5  --%> 
                <div class="form-group">
                    <label for="" class="form-label">Numero de Hojas</label>
                    <input type="text" class="form-control" name="nro_hojas" value="${correspondencia.nro_hojas}" placeholder="Numero de Hojas">                    
                </div>
                <%--  6  --%> 
                <div class="form-group">
                    <label for="" class="form-label">Numero de Copias</label>
                    <input type="text" class="form-control" name="nro_copias" value="${correspondencia.nro_copias}" placeholder="Numero de Copias">                    
                </div>
                <%--  7  --%> 
                <div class="form-group">
                    <label for="" class="form-label">Fecha Ingreso</label>
                    <input type="date" class="form-control" name="fecha_ingreso" value="${correspondencia.fecha_ingreso}" placeholder="Fecha de Entrega">                    
                </div>
                <%--  8  --%> 
                <div class="form-group">
                    <label for="" class="form-label">Fecha Devolucion</label>
                    <input type="date" class="form-control" name="fecha_devolucion" value="${correspondencia.fecha_devolucion}" placeholder="Fecha de Devolucion">                    
                </div>
                <%--  9  --%> 
                <div class="form-group">
                    <label for="" class="form-label">Observacion</label>
                    <input type="text" class="form-control" name="observacion" value="${correspondencia.observacion}" placeholder="Observaciones Encontradas">
                </div>
                <%--  9  --%> 
                <button type="submit" class="btn btn-primary">Guardar</button>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>

    </body>
</html>