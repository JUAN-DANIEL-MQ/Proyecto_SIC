<%
    String opcion =  request.getParameter("opcion");
%>
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a class="nav-link <%= (opcion.equals("usuarios") ?  "active" : "") %>" href="UsuarioeCorrespondencia" >Usuarios</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link <%= (opcion.equals("corres") ?  "active" : "") %>" href="CorCorrespondencia">Correspondencias</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link <%= (opcion.equals("derivacion") ?  "active" : "") %>" href="DerCorrespondencia">Derivacion</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link <%= (opcion.equals("cuenta") ?  "active" : "") %>" href="CueCorrespondencia">Cuentas</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link <%= (opcion.equals("registro") ?  "active" : "") %>" href="RegCorrespondencia">Registros</a>
                </li>
                
            </ul>