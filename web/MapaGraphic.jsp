<%-- 
    Document   : MapaGraphic
    Created on : 17 jun. 2024, 02:38:22
    Author     : ESTUDIANTE
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mapa</title>
        <link rel="stylesheet" href="Style/Home.css">
        <link rel="stylesheet" href="Style/Map.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    </head>
    <header class="custom-header">
        <div class = "logos">
            <img src="Images/LogoUCR.png" alt="Universidad de Costa Rica" class=" logo-ucr">
            <img src="Images/SSurHorizo.png" alt="Logotipo de la Sede del Sur" class=" logo-sede">
            <img src="Images/SSur-CIEhorizo.png" alt="Logo de la carrera de Informatica Empresarial" class=" logo-carrera">
        </div>

    </header>
    <body>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <a href = "index.html">Inicio</a>
            <a href = "LoginGraphic.jsp">Iniciar Sesion</a>
            <a href = "CalendarGraphic.jsp">Actividades</a>
            <a href = "#">Contacto</a>
        </nav>
        <h1 class="Title-Map">MAPA ITERATIVO DE LA SEDE DEL SUR  </h1>
        <div class="container-map">
            
            <img src="Images/Mapa.png" alt="MapaSSur"  usemap="#mapa" class="mapa"/>
            <map id="mapa">

                <div class="container mt-3" >
                    <area shape="Circle" coords="534,134,41.1"  data-bs-toggle="modal" data-bs-target="#myModal-Club-Centro"  title="Edificio 4600" >
                    <area shape="Circle" coords="646,290,55.7"  data-bs-toggle="modal" data-bs-target="#myModal-Edificio-Principal"  title="Edificio 4000" >
                    <area shape="Circle" coords="697,189,22.2"  data-bs-toggle="modal" data-bs-target="#myModal-Caseta-Guardias"  title="Caseta de Guardias" >
                    <area shape="Circle" coords="458,54,20"  data-bs-toggle="modal" data-bs-target="#myModal-Residencia-Prof"  title="Residencias Profesores 1" >
                    <area shape="Circle" coords="366,207,34"  data-bs-toggle="modal" data-bs-target="#myModal-Residencia-Estu"  title="Residencias Estudiantiles 1" >
                    <area shape="Circle" coords="288,301,24.7"  data-bs-toggle="modal" data-bs-target="#myModal-Residencia-Prof"  title="Residencias Profesores 2" >
                    <area shape="Circle" coords="407,324,30.4"  data-bs-toggle="modal" data-bs-target="#myModal-Residencia-Estu"  title="Residencias Estudiantiles 2" >
                    <area shape="Circle" coords="490,370,27.5"  data-bs-toggle="modal" data-bs-target="#myModal-Residencia-Prof"  title="Residencias Profesores 3" >
                    <area shape="Circle" coords="333,378,28.4"  data-bs-toggle="modal" data-bs-target="#myModal-Asociación"  title="Asociación de Estudiantes" >
                    <area shape="Circle" coords="516,599,32.2"  data-bs-toggle="modal" data-bs-target="#myModal-Auditorio"  title="Auditorio" >
                    <area shape="Circle" coords="645,526,66.6"  data-bs-toggle="modal" data-bs-target="#myModal-Edf-4001"  title="Edificio 4001" >
                    <area shape="Circle" coords="274,172,22.2"  data-bs-toggle="modal" data-bs-target="#myModal-Edf-4624"  title="Edificio 4624" >
                    <area shape="Circle" coords="226,225,14.9"  data-bs-toggle="modal" data-bs-target="#myModal-Edf-4625"  title="Edificio 4625" >
                    <area shape="Circle" coords="439,541,38.9"  data-bs-toggle="modal" data-bs-target="#myModal-Coordinacion"  title="Coordinacion de Accion Social" >

                </div>

                <!-- The Modal Club Centro -->
                <div class="modal" id="myModal-Club-Centro" >
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Club Centro</h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                <img src="Images/ClubCentro.png" alt="alt"/>

                            </div>

                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- The Modal Edificio Principal -->
                <div class="modal" id="myModal-Edificio-Principal" >
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Edificio Principal</h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                <<img src="Images/ClubCentro.png" alt="alt"/>
                            </div>

                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- The Modal Caseta Guardias -->
                <div class="modal" id="myModal-Caseta-Guardias" >
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Caseta de Guardias</h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                <<img src="Images/ClubCentro.png" alt="alt"/>
                            </div>

                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- The Modal Residencias Profesores -->
                <div class="modal" id="myModal-Residencia-Prof" >
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Residencias Profesores</h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                <<img src="Images/ClubCentro.png" alt="alt"/>
                            </div>

                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- The Modal Residencias Estudiantes -->
                <div class="modal" id="myModal-Residencia-Estu" >
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Residencias Estudiantiles</h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                <<img src="Images/ClubCentro.png" alt="alt"/>
                            </div>

                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                            </div>

                        </div>
                    </div>
                </div>
                <!-- The Modal Asociación -->
                <div class="modal" id="myModal-Asociación" >
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Asociación</h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                <<img src="Images/ClubCentro.png" alt="alt"/>
                            </div>

                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- The Modal Auditorio -->
                <div class="modal" id="myModal-Auditorio" >
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Auditorio</h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                <<img src="Images/ClubCentro.png" alt="alt"/>
                            </div>

                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- The Modal Biblioteca -->
                <div class="modal" id="myModal-Edf-4001" >
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Edificio 4001</h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                <<img src="Images/ClubCentro.png" alt="alt"/>
                            </div>

                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                            </div>

                        </div>
                    </div>
                </div>
                <!-- The Modal Edf4624 -->
                <div class="modal" id="myModal-Edf-4624" >
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Edificio 4624</h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                <<img src="Images/ClubCentro.png" alt="alt"/>
                            </div>

                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- The Modal Edf-4625-->
                <div class="modal" id="myModal-Edf-4625" >
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Edificio 4625</h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                <<img src="Images/ClubCentro.png" alt="alt"/>
                            </div>

                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                            </div>

                        </div>
                    </div>
                </div>
                <!-- The Modal Coordinacion-->
                <div class="modal" id="myModal-Coordinacion" >
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Coordinacion de Accion Social</h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                <<img src="Images/ClubCentro.png" alt="alt"/>
                            </div>

                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                            </div>

                        </div>
                    </div>
                </div>
            </map>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
    <footer >
        <p>&copy; 2024 Universidad XYZ. Todos los derechos reservados.</p>
    </footer>
</html>
