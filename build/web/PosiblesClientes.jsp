<%-- 
    Document   : PosiblesClientes
    Created on : 30/11/2020, 12:25:50 PM
    Author     : Juan David
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Posibles Clientes</title>
        <!-- Bootstrap core CSS-->
        <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
        <!-- Custom fonts for this template-->
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">
        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <link href="css/sweetalert.css" rel="stylesheet" type="text/css" />
        <script src="js/sweetalert.min.js" type="text/javascript"></script>
    </head>
    <body>
        <%
            Models.clsPosiblesClientes oblclsPosiblesClientes = new Models.clsPosiblesClientes();
            if (request.getAttribute("obclsPosiblesClientes") != null) {
                oblclsPosiblesClientes = (Models.clsPosiblesClientes) request.getAttribute("obclsPosiblesClientes");
            }

            List<Models.clsPosiblesClientes> lstclsPosiblesClientes
                    = new ArrayList<Models.clsPosiblesClientes>();

            //EXISTENCIA DE LA VARIABLE DE SESSION
            if (session.getAttribute("session_lstclsPosiblesClientes") != null) {
                //CASTING PARA DARLE UN ATRIBUTO UN TIPO DE DATO A LA VARIABLE DE SESSION
                lstclsPosiblesClientes = (List<Models.clsPosiblesClientes>) session.getAttribute("session_lstclsPosiblesClientes");
            }
            if (request.getAttribute("stMensaje") != null
                    && request.getAttribute("stTipo") != null) {
        %>
        <input type="text" hidden="" id="txtMensaje"
               value="<%=request.getAttribute("stMensaje")%>"/>
        <input type="text" hidden="" id="txtTipo"
               value="<%=request.getAttribute("stTipo")%>"/>

        <script>
            var mensaje = document.getElementById("txtMensaje").value;
            var tipo = document.getElementById("txtTipo").value;

            swal("Mensaje", mensaje, tipo);
        </script>

        <%
            }
        %>
        <div class="container">
            <div class="card mx-auto mt-5">
                <div class="card-header">Crear Posibles Cliente</div>
                <div class="card-body">
                    <form action="PosiblesClientesController" method="POST">
                        <!-- FILA -->
                        <div class="form-group">
                            <div class="form-row">
                                <!-- COLUMNA -->
                                <div class="col-md-6">
                                    <input type="submit" value="Guardar" class="btn btn-primary" name="btnGuardar"/>
                                    <input type="submit" value="Modificar" class="btn btn-primary" name="btnModificar"/>    
                                    <input type="submit" value="Cancelar" class="btn btn-primary" name="btnCancelar"/>  
                                    <a class="btn btn-primary" href="index.jsp">Volver</a>
                                    <input type="text"
                                           name="codigoModificar"
                                           id="codigoModificar"
                                           value="<%= oblclsPosiblesClientes.getInCodigo()%>"
                                           hidden=""/>
                                </div>
                            </div>
                        </div>
                        <!-- FILA -->
                        <div class="form-group">
                            <div class="form-row">
                                <h1>Informacion de Posible cliente</h1> 
                            </div>
                        </div>
                        <!-- FILA -->
                        <div class="form-group">
                            <div class="form-row">
                                <!-- COLUMNA -->
                                <div class="col-md-3">
                                    <label name="lblEmpresa">Empresa</label>
                                    <input type="text" placeholder="Empresa" name="txtEmpresa" class="form-control" 
                                           value="<%=oblclsPosiblesClientes.getStEmpresa() != null ? oblclsPosiblesClientes.getStEmpresa() : ""%>"/>
                                </div>
                                <!-- COLUMNA -->
                                <div class="col-md-3">
                                    <label name="lblNombre">Nombre</label>
                                    <input type="text" placeholder="Nombre" name="txtNombre" class="form-control"
                                           value="<%=oblclsPosiblesClientes.getStNombre() != null ? oblclsPosiblesClientes.getStNombre() : ""%>"/>
                                </div>
                                <!-- COLUMNA -->
                                <div class="col-md-3">
                                    <label name="lblApellido">Apellidos</label>
                                    <input type="text" placeholder="Apellido" name="txtApellidos" class="form-control"
                                           value="<%=oblclsPosiblesClientes.getStApellido() != null ? oblclsPosiblesClientes.getStApellido() : ""%>"/>
                                </div>
                                <!-- COLUMNA -->
                                <div class="col-md-3">
                                    <label name="lblTitulo">Titulo</label>
                                    <input type="text" placeholder="Titulo" name="txtTitulo" class="form-control"
                                           value="<%=oblclsPosiblesClientes.getStTitulo() != null ? oblclsPosiblesClientes.getStTitulo() : ""%>"/>

                                </div>
                            </div>
                        </div>
                        <!-- FILA -->
                        <div class="form-group">
                            <div class="form-row">
                                <!-- COLUMNA -->
                                <div class="col-md-3">
                                    <label name="lblCorreoElectronico">Correo electronico</label>
                                    <input type="email" placeholder="Correo electronico" name="txtCorreoElectronico" class="form-control"
                                           value="<%=oblclsPosiblesClientes.getStCorreoElectronico() != null ? oblclsPosiblesClientes.getStCorreoElectronico() : ""%>"/>   
                                </div>
                                <!-- COLUMNA -->
                                <div class="col-md-3">
                                    <label name="lblTelefono">Telefono</label>
                                    <input type="text" placeholder="Telefono" name="txtTelefono" class="form-control"
                                           value="<%=oblclsPosiblesClientes.getStTelefono() != null ? oblclsPosiblesClientes.getStTelefono() : ""%>"/>
                                </div>
                                <!-- COLUMNA -->
                                <div class="col-md-3">
                                    <label name="lblFax">Fax</label>
                                    <input type="text" placeholder="Ingrese fax" 
                                           name="txtFax" 
                                           class="form-control"
                                           value="<%=oblclsPosiblesClientes.getStFax() != null ? oblclsPosiblesClientes.getStFax() : ""%>"/>
                                </div>
                                <!-- COLUMNA -->
                                <div class="col-md-3">
                                    <label name="lblMovil">Movil</label>
                                    <input type="text" placeholder="Movil" name="txtMovil" class="form-control" 
                                           value="<%=oblclsPosiblesClientes.getStMovil() != null ? oblclsPosiblesClientes.getStMovil() : ""%>"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-3">
                                    <label name="lblSitioWeb">Sitio web</label>
                                    <input type="text" placeholder="sitio web" name="txtWeb" class="form-control"
                                           value="<%=oblclsPosiblesClientes.getStSitioweb() != null ? oblclsPosiblesClientes.getStSitioweb() : ""%>"/>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblFuentePosibleCliente">Fuente de posible cliente</label>
                                    <select  class="form-control" name="ddlFuentePosibleCliente">
                                        <option value="1"<%=oblclsPosiblesClientes.obclsFuentePosibleCliente != null ? oblclsPosiblesClientes.obclsFuentePosibleCliente.getInCodigo() == 1 ? "selected" : "" : ""%>>None</option>
                                        <option value="2"<%=oblclsPosiblesClientes.obclsFuentePosibleCliente != null ? oblclsPosiblesClientes.obclsFuentePosibleCliente.getInCodigo() == 2 ? "selected" : "" : ""%>>Aviso</option>
                                        <option value="3"<%=oblclsPosiblesClientes.obclsFuentePosibleCliente != null ? oblclsPosiblesClientes.obclsFuentePosibleCliente.getInCodigo() == 3 ? "selected" : "" : ""%>>Llamada no solicitada</option>
                                        <option value="4"<%=oblclsPosiblesClientes.obclsFuentePosibleCliente != null ? oblclsPosiblesClientes.obclsFuentePosibleCliente.getInCodigo() == 4 ? "selected" : "" : ""%>>Recomendacion del empleado</option>
                                        <option value="5"><%=oblclsPosiblesClientes.obclsFuentePosibleCliente != null ? oblclsPosiblesClientes.obclsFuentePosibleCliente.getInCodigo() == 5 ? "selected" : "" : ""%>>Recomendacion externa</option>
                                        <option value="6"><%=oblclsPosiblesClientes.obclsFuentePosibleCliente != null ? oblclsPosiblesClientes.obclsFuentePosibleCliente.getInCodigo() == 6 ? "selected" : "" : ""%>>Tienda en linea</option>
                                    </select>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblEstadoPosibleCliente">Estado de posible cliente</label>
                                    <select  class="form-control" name="ddlEstadoPosibleCliente">
                                        <option value="1" <%=oblclsPosiblesClientes.obclsEstadoPosibleCliente != null ? oblclsPosiblesClientes.obclsEstadoPosibleCliente.getInCodigo() == 1 ? "selected" : "" : ""%>>None</option>
                                        <option value="2"<%=oblclsPosiblesClientes.obclsEstadoPosibleCliente != null ? oblclsPosiblesClientes.obclsEstadoPosibleCliente.getInCodigo() == 2 ? "selected" : "" : ""%>>Intento de contacto</option>
                                        <option value="3"<%=oblclsPosiblesClientes.obclsEstadoPosibleCliente != null ? oblclsPosiblesClientes.obclsEstadoPosibleCliente.getInCodigo() == 3 ? "selected" : "" : ""%>>Contactar en el futuro</option>
                                        <option value="4"<%=oblclsPosiblesClientes.obclsEstadoPosibleCliente != null ? oblclsPosiblesClientes.obclsEstadoPosibleCliente.getInCodigo() == 4 ? "selected" : "" : ""%>>Contactado</option>
                                        <option value="5"<%=oblclsPosiblesClientes.obclsEstadoPosibleCliente != null ? oblclsPosiblesClientes.obclsEstadoPosibleCliente.getInCodigo() == 5 ? "selected" : "" : ""%>>Posible cliente no solicitado</option>
                                        <option value="6"<%=oblclsPosiblesClientes.obclsEstadoPosibleCliente != null ? oblclsPosiblesClientes.obclsEstadoPosibleCliente.getInCodigo() == 6 ? "selected" : "" : ""%>>Posible cliente perdido</option>
                                    </select>
                                </div>
                                <div class="col-md-3">
                                    <label name="lbSector">Sector</label>
                                    <select  class="form-control" name="ddlSector">
                                        <option value="1" <%=oblclsPosiblesClientes.obclsSector != null ? oblclsPosiblesClientes.obclsSector.getInCodigo() == 1 ? "selected" : "" : ""%>>None</option>
                                        <option value="2" <%=oblclsPosiblesClientes.obclsSector != null ? oblclsPosiblesClientes.obclsSector.getInCodigo() == 2 ? "selected" : "" : ""%>>Aps(provedor de servicios de aplicaciones)</option>
                                        <option value="3" <%=oblclsPosiblesClientes.obclsSector != null ? oblclsPosiblesClientes.obclsSector.getInCodigo() == 3 ? "selected" : "" : ""%>>OEM de datos</option>
                                        <option value="4" <%=oblclsPosiblesClientes.obclsSector != null ? oblclsPosiblesClientes.obclsSector.getInCodigo() == 4 ? "selected" : "" : ""%>>ERP(Planificacion de recursos de empresa</option>
                                        <option value="5" <%=oblclsPosiblesClientes.obclsSector != null ? oblclsPosiblesClientes.obclsSector.getInCodigo() == 5 ? "selected" : "" : ""%>>Gobierno/Ejercito</option>
                                        <option value="6" <%=oblclsPosiblesClientes.obclsSector != null ? oblclsPosiblesClientes.obclsSector.getInCodigo() == 6 ? "selected" : "" : ""%>>Empresa Grande</option>
                                    </select>      
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-3">
                                    <label name="lblCantidadEmpleados">Cantidad de empleados</label>
                                    <input type="number" placeholder="Cantidad de empleados" name="txtCantidadEmpleados" class="form-control"
                                           value="<%=oblclsPosiblesClientes.getIntCantidadEmpleados() != 0 ? oblclsPosiblesClientes.getIntCantidadEmpleados() : ""%>"/>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblIngresosAnuales"name=>Ingresos anuales</label>
                                    <input type="number" placeholder="Ingresos anuales" name="txtIngresosAnuales" class="form-control"
                                           value="<%=oblclsPosiblesClientes.getDbIngresosAnuales() != 0 ? oblclsPosiblesClientes.getDbIngresosAnuales() : ""%>"/>
                                </div>
                                <div class="col-md-3">
                                    <label name="lbCalificacion"name="ddlCalificacion">Calificacion</label>
                                    <select  class="form-control" name="ddlCalificacion">
                                        <option value="1" <%=oblclsPosiblesClientes.obclsCalificacion != null ? oblclsPosiblesClientes.obclsCalificacion.getInCodigo() == 1 ? "selected" : "" : ""%>>None</option>
                                        <option value="2" <%=oblclsPosiblesClientes.obclsCalificacion != null ? oblclsPosiblesClientes.obclsCalificacion.getInCodigo() == 2 ? "selected" : "" : ""%>>Abquirido</option>
                                        <option value="3" <%=oblclsPosiblesClientes.obclsCalificacion != null ? oblclsPosiblesClientes.obclsCalificacion.getInCodigo() == 3 ? "selected" : "" : ""%>>Activo</option>
                                        <option value="4" <%=oblclsPosiblesClientes.obclsCalificacion != null ? oblclsPosiblesClientes.obclsCalificacion.getInCodigo() == 4 ? "selected" : "" : ""%>>Contactado</option>
                                        <option value="5" <%=oblclsPosiblesClientes.obclsCalificacion != null ? oblclsPosiblesClientes.obclsCalificacion.getInCodigo() == 5 ? "selected" : "" : ""%>>Proyecto cancelado</option>
                                        <option value="6" <%=oblclsPosiblesClientes.obclsCalificacion != null ? oblclsPosiblesClientes.obclsCalificacion.getInCodigo() == 6 ? "selected" : "" : ""%>>Apagar</option>
                                    </select>      
                                </div>
                                <div class="col-md-3">
                                    <label name="lbNoParticipacionCorreoElectronico">                         
                                        <input type="checkbox"  name="chkNoParticipacionCorreoElectronico"
                                        <%=oblclsPosiblesClientes.getChNoParticipacionCorreoElectronico() == 'S' ? "checked" :""%>/>
                                        No participacion correo electronico
                                    </label> 
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-3">
                                    <label name="lblIDSkype">ID Skype</label>
                                    <input type="text" placeholder="ID de skype" name="txtIDSkype" class="form-control"
                                           value="<%=oblclsPosiblesClientes.getStIDSkype() != null ? oblclsPosiblesClientes.getStIDSkype() : ""%>"/>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblTwitter">Twitter</label>
                                    <input type="text" placeholder="Twitter" name="txtTwitter" class="form-control"
                                           value="<%=oblclsPosiblesClientes.getStTwitter() != null ? oblclsPosiblesClientes.getStTwitter() : ""%>"/>
                                </div>
                                <div class="col-md-6">
                                    <label name="Correo electronico">Correo electronico segundario</label>
                                    <input type="email" placeholder="Correo electronico segundario" name="txtCorreoelectronicosecundario" class="form-control"
                                           value="<%=oblclsPosiblesClientes.getStCorreoElectronicoSecundario() != null ? oblclsPosiblesClientes.getStCorreoElectronicoSecundario() : ""%>"/>
                                </div>
                            </div>
                        </div> 
                        <!-- fila-->
                        <div class="form-group">  
                            <div class="form-row">
                                <!-- COLUMNA-->
                                <div class="col-12">
                                    <b>
                                        <i class="fa fa-clipboard"></i>
                                        Registros: <%= lstclsPosiblesClientes.size()%>
                                    </b>
                                </div>
                            </div>
                        </div>
                        <!-- fila-->
                        <div class="form-group">  
                            <div class="form-row">
                                <!-- COLUMNA-->
                                <div class="col-12">
                                    <table class="table table-bordered
                                           table-responsive">
                                        <!-- fila-->
                                        <tr>
                                            <!-- COLUMNA-->
                                            <td>Empresa</td>
                                            <td>Nombre</td>
                                            <td>Apellido</td>
                                            <td>Titulo</td>
                                            <td>Correo electronico</td>
                                            <td>Telefono</td>
                                            <td>Fax</td>
                                            <td>Movil</td> 
                                            <td>Sitio web</td>
                                            <td>Fuente posible cliente</td>
                                            <td>Estado de posible cliente</td>
                                            <td>Sector</td>
                                            <td>Cantidad de empleados</td>
                                            <td>Ingresos anuales</td>
                                            <td>Calificacion</td>
                                            <td> No participacion correo electronico</td>
                                            <td>ID Skype</td>
                                            <td>Twitter</td>
                                            <td>Correo electronico secundario</td>
                                        </tr>
                                        <%
                                            for (Models.clsPosiblesClientes item : lstclsPosiblesClientes) {
                                                Models.clsFuentePosibleCliente obclsFuentePosibleCliente = item.getObclsFuentePosibleCliente();
                                                Models.clsEstadoPosibleCliente obclsEstadoPosibleCliente = item.getObclsEstadoPosibleCliente();
                                                Models.clsSector obclsSector = item.getObclsSector();
                                                Models.clsCalificacion obclsCalificacion = item.getObclsCalificacion();

                                        %>
                                        <tr>
                                            <td><%=item.getStEmpresa()%></td>
                                            <td><%=item.getStNombre()%></td>
                                            <td><%=item.getStApellido()%></td>
                                            <td><%=item.getStTitulo()%></td>
                                            <td><%=item.getStCorreoElectronico()%></td>
                                            <td><%=item.getStTelefono()%></td>
                                            <td><%=item.getStFax()%></td> 
                                            <td><%=item.getStMovil()%></td>
                                            <td><%=item.getStSitioweb()%></td>
                                            <td><%= obclsFuentePosibleCliente.getStDescripcion()%></td>
                                            <td><%=obclsEstadoPosibleCliente.getStDescripcion()%></td>
                                            <td><%=obclsSector.getStDescripcion()%></td>
                                            <td><%=item.getIntCantidadEmpleados()%></td>
                                            <td><%=item.getDbIngresosAnuales()%></td>
                                            <td><%=obclsCalificacion.getStDescripcion()%></td>
                                            <td><%=item.getChNoParticipacionCorreoElectronico()%></td>
                                            <td><%=item.getStIDSkype()%></td>
                                            <td><%=item.getStTwitter()%></td>
                                            <td><%=item.getStCorreoElectronicoSecundario()%></td>
                                            <td>
                                                <a class=" btn btn-success btn-sm "
                                                   href="PosiblesClientesController?stOpcion=M&codigoSeleccionado=<%= item.getInCodigo()%>">
                                                    Modificar</a>
                                                <a class=" btn btn-danger btn-sm "
                                                   href="PosiblesClientesController?stOpcion=E&codigoSeleccionado=<%= item.getInCodigo()%>">
                                                    Eliminar</a>
                                            </td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </form>                 
                </div>
            </div>
        </div>
    </body>
</html>

