<%-- 
    Document   : MapaGraphic
    Created on : 17 jun. 2024, 02:38:22
* @author Jocelyn
 * @author Jeison
 * @author Adrian 
--%>
<%@page import="Dijkstra.Dijkstra"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mapa</title>
        <link rel="stylesheet" href="Style/Home.css">
        <link rel="stylesheet" href="Style/Map.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
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

        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-md-6  bg-white border rounded shadow  mb-5 mt-5">
                    <h1 class="text-center ">Mapa Sede Del Sur</h1>

                    <form class="mb-3" id="dijkstraForm" method="post" action="#">
                        <div class="form-group">
                            <label class="lead" for="startVertex">Punto de Salida</label>
                            <select class="form-control form-control-sm" id="startVertex" name="startVertex">
                                <option value="" disabled selected>Selecciona el punto de salida</option>
                                <option value="Edificio 4600" data-value="Edificio 4600">Edificio 4600 (Club Centro)</option>
                                <option value="Edificio 4000" data-value="Edificio 4000">Edificio 4000 (Edificio Principal)</option>
                                <option value="Edificio 4624" data-value="Edificio 4624">Edificio 4624</option>
                                <option value="Edificio 4625" data-value="Edificio 4625">Edificio 4625</option>
                                <option value="Caseta Guardias" data-value="Caseta Guardias">Caseta Guardias</option>
                                <option value="Residencias Profesores 1" data-value="Residencias Profesores 1">Residencias Profesores 1</option>
                                <option value="Residencias Profesores 2" data-value="Residencias Profesores 2">Residencias Profesores 2</option>
                                <option value="Residencias Profesores 3" data-value="Residencias Profesores 3">Residencias Profesores 3</option>
                                <option value="Residencias Estudiantes 1" data-value="Residencias Estudiantes 1">Residencias Estudiantes 1</option>
                                <option value="Residencias Estudiantes 2" data-value="Residencias Estudiantes 2">Residencias Estudiantes 2</option>
                                <option value="Asociacion de Estudiantes" data-value="Asociacion de Estudiantes">Asociación de Estudiantes</option>
                                <option value="Coordinacion de Accion Social" data-value="Coordinacion de Accion Social">Coordinacion de Accion Social</option>
                                <option value="Auditorio" data-value="Auditorio">Auditorio</option>
                                <option value="Biblioteca" data-value="Biblioteca">Biblioteca</option>
                                <option value="Centro Cultural" data-value="Centro Cultural">Centro Cultural</option>
                                <option value="Laboratorio de Biologia" data-value="Laboratorio de Biologia">Laboratorio de Biologia</option>
                                <option value="Salon Multiusos" data-value="Salon Multiusos">Sal
                            </select>
                        </div>

                        <div class="form-group">
                            <label class="lead" for="endVertex">Punto de llegada:</label>
                            <select class="form-control form-control-sm" id="endVertex" name="endVertex">  
                                <option value="" disabled selected>Selecciona el punto de destino</option>
                                <option value="Edificio 4600" data-value="Edificio 4600">Edificio 4600 (Club Centro)</option>
                                <option value="Edificio 4000" data-value="Edificio 4000">Edificio 4000 (Edificio Principal)</option>
                                <option value="Edificio 4624" data-value="Edificio 4624">Edificio 4624</option>
                                <option value="Edificio 4625" data-value="Edificio 4625">Edificio 4625</option>
                                <option value="Caseta Guardias" data-value="Caseta Guardias">Caseta Guardias</option>
                                <option value="Residencias Profesores 1" data-value="Residencias Profesores 1">Residencias Profesores 1</option>
                                <option value="Residencias Profesores 2" data-value="Residencias Profesores 2">Residencias Profesores 2</option>
                                <option value="Residencias Profesores 3" data-value="Residencias Profesores 3">Residencias Profesores 3</option>
                                <option value="Residencias Estudiantes 1" data-value="Residencias Estudiantes 1">Residencias Estudiantes 1</option>
                                <option value="Residencias Estudiantes 2" data-value="Residencias Estudiantes 2">Residencias Estudiantes 2</option>
                                <option value="Asociacion de Estudiantes" data-value="Asociacion de Estudiantes">Asociación de Estudiantes</option>
                                <option value="Coordinacion de Accion Social" data-value="Coordinacion de Accion Social">Coordinacion de Accion Social</option>
                                <option value="Auditorio" data-value="Auditorio">Auditorio</option>
                                <option value="Biblioteca" data-value="Biblioteca">Biblioteca</option>
                                <option value="Centro Cultural" data-value="Centro Cultural">Centro Cultural</option>
                                <option value="Laboratorio de Biologia" data-value="Laboratorio de Biologia">Laboratorio de Biologia</option>
                                <option value="Salon Multiusos" data-value="Salon Multiusos">Salon Multiusos</option>
                            </select>
                        </div>


                    </form>
                </div>
            </div>
        </div>

        <!-- Modal 1 -->

        <div class="modal fade" id="modal1" tabindex="-1" aria-labelledby="modal1Label" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title w-100 text-center" id="modal1Label">Edificio 4600 - Edificio 4000</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body d-flex justify-content-center align-items-center">
                        <img src="Images/Edf4600-Edf400.png" class="img-fluid mr-4 w-50 " alt="Imagen 1">

                    </div>
                </div>
            </div>
        </div>

        <!-- Modal 2 -->
        <div class="modal fade" id="modal2" tabindex="-1" aria-labelledby="modal2Label" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title w-100 text-center" id="modal1Label">Edificio 4000 - Biblioteca</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body d-flex justify-content-center align-items-center">
                        <img src="Images/Edf4000-Biblio.png" class="img-fluid mr-4 w-50" alt="Imagen 1">

                    </div>
                </div>
            </div>
        </div>


        <!-- Modal 3 -->

        <div class="modal fade" id="modal3" tabindex="-1" aria-labelledby="modal3Label" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title w-100 text-center" id="modal1Label">Edificio 4600 - Biblioteca</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body d-flex justify-content-center align-items-center">
                        <img src="Images/Edf4600-Biblio.png" class="img-fluid mr-4 w-50" alt="Imagen 1">

                    </div>
                </div>
            </div>
        </div>

        <!-- Modal 4 -->
        <div class="modal fade" id="modal4" tabindex="-1" aria-labelledby="modal4Label" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title w-100 text-center" id="modal1Label">Edificio 4000 - Coordinación de Acción Social</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body d-flex justify-content-center align-items-center">
                        <img src="Images/Edf4000-AccionSocial.png" class="img-fluid mr-4 w-50" alt="Imagen 1">

                    </div>
                </div>
            </div>
        </div>

        <div class="container-img">
            <div class="container-map  mb-5">


                <img src="Images/Mapa.png" alt="MapaSSur"  usemap="#mapa" class="mapa" style="border-radius: 20px"/>
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
                                <div class="modal-header ">
                                    <h4 class="modal-title text-center w-100 ">Club Centro</h4>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                </div>

                                <!-- Modal body -->
                                <div class="modal-body  d-flex justify-content-center align-items-center">
                                    <img src="Images/file.jpg"  class="img-fluid mr-4 w-100" alt="alt"/>

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
                                    <h4 class="modal-title text-center w-100">Edificio Principal</h4>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                </div>

                                <!-- Modal body -->
                                <div class="modal-body">
                                    <img src="Images/Edificio principal.png" class="img-fluid mr-4 w-100" alt="alt"/>
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
                                    <h4 class="modal-title text-center w-100">Caseta de Guardias</h4>
                                    <button type="button" class="btn-close"  data-bs-dismiss="modal"></button>
                                </div>

                                <!-- Modal body -->
                                <div class="modal-body">
                                    <img src="Images/ClubCentro.png"  class="img-fluid mr-4 w-100" alt="alt"/>
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
                                    <h4 class="modal-title text-center w-100">Residencias Profesores</h4>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                </div>

                                <!-- Modal body -->
                                <div class="modal-body">
                                    <img src="Images/ClubCentro.png" class="img-fluid mr-4 w-100" alt="alt"/>
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
                                    <h4 class="modal-title text-center w-100">Residencias Estudiantiles</h4>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                </div>

                                <!-- Modal body -->
                                <div class="modal-body">
                                    <img src="Images/ClubCentro.png" class="img-fluid mr-4 w-100" alt="alt"/>
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
                                    <h4 class="modal-title text-center w-100">Asociación</h4>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                </div>

                                <!-- Modal body -->
                                <div class="modal-body">
                                    <img src="Images/ClubCentro.png"  class="img-fluid mr-4 w-100" alt="alt"/>
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
                                    <h4 class="modal-title text-center w-100">Auditorio</h4>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                </div>

                                <!-- Modal body -->
                                <div class="modal-body">
                                    <img src="Images/ClubCentro.png" class="img-fluid mr-4 w-100" alt="alt"/>
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
                                    <h4 class="modal-title text-center w-100">Edificio 4001</h4>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                </div>

                                <!-- Modal body -->
                                <div class="modal-body">
                                    <img src="Images/ClubCentro.png" class="img-fluid mr-4 w-100" alt="alt"/>
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
                                    <h4 class="modal-title text-center w-100">Edificio 4624</h4>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                </div>

                                <!-- Modal body -->
                                <div class="modal-body">
                                    <img src="Images/ClubCentro.png"  class="img-fluid mr-4 w-100" alt="alt"/>
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
                                    <h4 class="modal-title text-center w-100">Edificio 4625</h4>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                </div>

                                <!-- Modal body -->
                                <div class="modal-body">
                                    <img src="Images/ClubCentro.png" class="img-fluid mr-4 w-100" alt="alt"/>
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
                                    <h4 class="modal-title text-center w-100">Coordinacion de Accion Social</h4>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                </div>

                                <!-- Modal body -->
                                <div class="modal-body">
                                    <img src="Images/ClubCentro.png"  class="img-fluid mr-4 w-100" alt="alt"/>
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



            <script>
                document.addEventListener('DOMContentLoaded', function () {
                    var startSelect = document.getElementById('startVertex');
                    var endSelect = document.getElementById('endVertex');
                    var routeImage = document.getElementById('routeImage');
                    var routeDescription = document.getElementById('routeDescription');

                    startSelect.addEventListener('change', function () {
                        if (startSelect.value !== '') {
                            startSelect.classList.remove('text-muted');
                        }
                        syncOptions(startSelect, endSelect);
                        showModal(startSelect.value, endSelect.value);
                    });

                    endSelect.addEventListener('change', function () {
                        if (endSelect.value !== '') {
                            endSelect.classList.remove('text-muted');
                        }
                        syncOptions(endSelect, startSelect);
                        showModal(startSelect.value, endSelect.value);
                    });

                    syncOptions(startSelect, endSelect);
                    syncOptions(endSelect, startSelect);

                    var routeModal = document.getElementById('routeModal');
                    routeModal.addEventListener('show.bs.modal', function () {
                        showRoute(startSelect.value, endSelect.value);
                    });
                });

                function syncOptions(source, target) {
                    var selectedValue = source.value;
                    var options = target.options;

                    for (var i = 0; i < options.length; i++) {
                        var option = options[i];
                        option.disabled = option.dataset.value === selectedValue;
                    }

                    if (source.value === '') {
                        source.classList.add('text-muted');
                    }
                }

                function showModal(startValue, endValue) {
                    var modal;
                    if (startValue === 'Edificio 4600' && endValue === 'Edificio 4000' ||
                            startValue === 'Edificio 4000' && endValue === 'Edificio 4600') {
                        modal = document.getElementById('modal1');
                    } else if (startValue === 'Edificio 4000' && endValue === 'Biblioteca' ||
                            startValue === 'Biblioteca' && endValue === 'Edificio 4000') {
                        modal = document.getElementById('modal2');
                    } else if (startValue === 'Edificio 4600' && endValue === 'Biblioteca' ||
                            startValue === 'Biblioteca' && endValue === 'Edificio 4600') {
                        modal = document.getElementById('modal3');
                    } else if (startValue === 'Edificio 4000' && endValue === 'Coordinacion de Accion Social' ||
                            startValue === 'Coordinacion de Accion Social' && endValue === 'Edificio 4000') {
                        modal = document.getElementById('modal4');
                    } else {
                        return;
                    }

                    var bootstrapModal = new bootstrap.Modal(modal);
                    bootstrapModal.show();
                }

                function showRoute(startValue, endValue) {
                    var image, description;
                    if (startValue === 'Edificio 4600' && endValue === 'Edificio 4000') {
                        image = 'Edf4600-Edf400.png';
                        description = 'Descripción de la ruta del Edificio 4600 al Auditorio';
                    } else if (startValue === 'Edificio 4000' && endValue === 'Biblioteca') {
                        image = 'Edf4000-Biblio.png';
                        description = 'Descripción de la ruta del Edificio 4000 al Auditorio';
                    } else if (startValue === 'Edificio 4600' && endValue === 'Biblioteca') {
                        image = 'Edf4600-Biblio.png';
                        description = 'Descripción de la ruta del Edificio 4600 al Edificio 4000';
                    } else if (startValue === 'Edificio 4000' && endValue === 'Coordinacion de Accion Social') {
                        image = 'Edf4000-AccionSocial.png';
                        description = 'Descripción de la ruta del Edificio 4600 al Edificio 4000';

                    } else {
                        return;
                    }

                    routeImage.src = image;
                    routeDescription.textContent = description;
                }
            </script>

            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
    <footer class="footer">

        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <h4 class="mb-4">Contáctanos</h4>
                    <div class="social-icons">
                        <a href="#" class="social-icon social-icon--facebook">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a href="#" class="social-icon social-icon--instagram">
                            <i class="fab fa-instagram"></i>
                        </a>
                        <a href="#" class="social-icon social-icon--telegram">
                            <i class="fab fa-telegram-plane"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <p>&copy; 2024 Universidad XYZ. Todos los derechos reservados.</p>
    </footer>
</html>
