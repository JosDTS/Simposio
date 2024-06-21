<%-- 
    Document   : CalendarGraphic
    Created on : 19 jun. 2024, 16:11:43
    Author     : ESTUDIANTE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Calendario de Actividades del Simposio</title>
        <link rel="stylesheet" href="Style/Home.css">
        <link rel="stylesheet" href="Style/Calendar.css">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

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
            <a href ="index.html">Inicio</a>
            <a href = "LoginGraphic.jsp">Login</a>
            <a href = "RegistrationGraphic.jsp">Registro</a>
            <a href = "CalendarGraphic.jsp">Actividades</a>
            <div class="MenuIteam">
                <a class ="a" href = "MapaGraphic.jsp" id="mapa">Mapa</a>
                <ul class="subMenu" id="submenu">
                    <li><a href ="#">Golfito</a></li>
                    <li><a href ="#">SedeSur</a></li>
                </ul>
            </div>
            <a href = "HistoryGraphic.jsp">Historia</a>
            <a href = "#">Contacto</a>
        </nav>

        <main> 
            <section class="calendar"> 
                <div class="day"> 
                    <h2>25 de Junio de 2024</h2> 
                    <div class="row"> 
                        <div class="col-md-6"> 
                            <div class="activity"> 
                                <h3>Conferencia sobre Inteligencia Artificial</h3> 
                                <p><i class="far fa-clock"></i> 10:00 AM</p> 
                                <p><i class="fas fa-map-marker-alt"></i> Auditorio 1</p> 
                                <p><i class="fas fa-user"></i> <span>Dr. Juan Pérez</span></p> 
                                <!-- Añadir un icono para la foto --> 
                                <img src="https://es.visafoto.com/img/source355x388_co.jpg" alt="Conferencia sobre Inteligencia Artificial"> 
                                <button class="btn btn-primary mt-2 more-details-btn" data-toggle="collapse" data-target="#details1">Más detalles</button> 
                                <a href="#" class="btn btn-success mt-2 ml-2 register-btn">Inscribirse</a> 
                            </div> 
                        </div> 
                        <div class="col-md-6"> 
                            <div id="details1" class="collapse activity-details"> 
                                <article class="activity-info"> 
                                    <h2>Conferencia sobre Inteligencia Artificial</h2> 
                                    <p><strong>Resumen:</strong> Una conferencia donde expertos en IA discuten las últimas tendencias y avances en la industria.</p> 
                                    <h3>Ponente: Dr. Juan Pérez</h3> 
                                    <p><strong>Biografía:</strong> Dr. Juan Pérez es un investigador reconocido en el campo de la inteligencia artificial con más de 20 años de experiencia.</p> 
                                </article> 
                            </div> 
                        </div> 
                    </div> 
                </div> 

                <!-- Repetir el mismo patrón para las otras actividades con IDs únicos --> 
                <div class="day"> 
                    <h2>26 de Junio de 2024</h2> 
                    <div class="row"> 
                        <div class="col-md-6"> 
                            <div class="activity"> 
                                <h3>Taller de Robótica Avanzada</h3> 
                                <p><i class="far fa-clock"></i> 2:00 PM</p> 
                                <p><i class="fas fa-map-marker-alt"></i> Sala de Taller</p> 
                                <p><i class="fas fa-user"></i> <span>Ing. María López</span></p> 

                                <img src="https://via.placeholder.com/150" alt="Taller de Robótica Avanzada"> 
                                <button class="btn btn-primary mt-2 more-details-btn" data-toggle="collapse" data-target="#details2">Más detalles</button> 
                                <a href="#" class="btn btn-success mt-2 ml-2 register-btn">Inscribirse</a> 
                            </div> 
                        </div> 
                        <div class="col-md-6"> 
                            <div id="details2" class="collapse activity-details"> 
                                <article class="activity-info"> 
                                    <h2>Taller de Robótica Avanzada</h2> 
                                    <p><strong>Resumen:</strong> Un taller práctico para aprender sobre programación y diseño de robots avanzados.</p> 
                                    <h3>Instructora: Ing. María López</h3> 
                                    <p><strong>Biografía:</strong> Ing. María López tiene una vasta experiencia en robótica y ha liderado varios proyectos innovadores en el campo.</p> 
                                </article> 
                            </div> 
                        </div> 
                    </div> 
                </div> 


            </section> 
        </main> 

        <footer> 
            <p>&copy; 2024 Universidad. Todos los derechos reservados.</p> 
        </footer> 
        <!<!-- JS Boostrap -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script> 
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script> 
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> 


    </body>
</html>
