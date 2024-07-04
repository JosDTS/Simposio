<%-- 
    Document   : CalendarGraphic
    Created on : 19 jun. 2024, 16:11:43
* @author Jocelyn
 * @author Jeison
 * @author Adrian 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <!-- Script para búsqueda de actividades -->
    <script src="JS/searchActivities.js"></script>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Calendario de Actividades del Simposio</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <!-- Font Awesome para iconos -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <!-- Estilos personalizados -->
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="Style/Home.css">
        <link rel="stylesheet" href="Style/Calendar.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
        <header class="custom-header">
            <div class="logos">
                <img src="Images/LogoUCR.png" alt="Universidad de Costa Rica" class="logo-ucr">
                <img src="Images/SSurHorizo.png" alt="Logotipo de la Sede del Sur" class="logo-sede">
                <img src="Images/SSur-CIEhorizo.png" alt="Logo de la carrera de Informatica Empresarial" class="logo-carrera">
            </div>
        </header>

        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <a href="index.html">Inicio</a>
            <a href="LoginGraphic.jsp">Login</a>
            <a href="RegistrationGraphic.jsp">Registro</a>
            <a href="CalendarGraphic.jsp">Actividades</a>
            <a href="Speaker.jsp">Ponentes</a>
            <div class="MenuIteam">
                <a class="a" href="MapaGraphic.jsp" id="mapa">Mapa</a>
                <ul class="subMenu" id="submenu">
                    <li><a href="#">Golfito</a></li>
                    <li><a href="#">SedeSur</a></li>
                </ul>
            </div>
            <a href="HistoryGraphic.jsp">Historia</a>
            <a href="#">Contacto</a>
        </nav>

        <main class="container">

            <div class="main-title">
                <h2>Calendario de Actividades del Simposio<span>2024</span></h2>
            </div>


            <div class="input-group mb-3 search-bar">
                <input type="text" id="searchInput" class="form-control" placeholder="Buscar actividades...">
                <div class="input-group-append">
                    <button class="btn btn-primary" id="searchButton" type="button">Buscar</button>
                </div>
            </div>


            <div class="calendar">
                <div class="day">
                    <div class="activity">
                        <h3>Foros de Innovación en IA:</h3>
                        <p><i class="fas fa-calendar-alt"></i> 10 de Julio de 2024</p>
                        <p><i class="fas fa-clock"></i> 10:00 AM</p>
                        <p><i class="fas fa-user"></i> Juan Pérez</p>
                        <p><i class="fas fa-map-marker-alt"></i> Sala 1</p>
                        <img src="https://th.bing.com/th/id/OIP.bUU1nRuXIQNSWnb2HORw0wAAAA?rs=1&pid=ImgDetMain" alt="Imagen de la actividad 1">
                        <div class="activity-details">
                            <p>Descripción: Espacios colaborativos donde expertos en inteligencia artificial, 
                                innovación y estrategia empresarial discuten tendencias emergentes,
                                oportunidades de mercado y el futuro de la IA en diferentes sectores industriales.</p>
                            <p>Biografía del ponente Juan Pérez...</p>
                        </div>
                        <div class="btn-container">
                            <button class="btn btn-inscribirse" data-actividad-id="1">Inscribirse</button>

                        </div>
                    </div>
                </div>
                <div class="day">
                    <div class="activity">
                        <h3>Simulacros de Ataques Cibernéticos</h3>
                        <p><i class="fas fa-calendar-alt"></i> 10 de Julio de 2024</p>
                        <p><i class="fas fa-clock"></i> 11:00 AM</p>
                        <p><i class="fas fa-user"></i> María López</p>
                        <p><i class="fas fa-map-marker-alt"></i> Sala 2</p>
                        <img src="imagen2.jpg" alt="Imagen de la actividad 2">
                        <div class="activity-details">
                            <p>Descripción: Ejercicios prácticos donde los participantes simularán escenarios de ataques 
                                cibernéticos para comprender mejor las amenazas actuales 
                                y cómo responder ante ellas. Se discutirán técnicas de defensa y protección de datos críticos.</p>
                            <p>Biografía del ponente María López...</p>
                        </div>
                        <div class="btn-container">
                            <button class="btn btn-inscribirse" data-actividad-id="2">Inscribirse</button>
                        </div>
                    </div>
                </div>
                <div class="day">
                    <div class="activity">
                        <h3>Mesas Redondas sobre Regulación de Datos y Privacidad</h3>
                        <p><i class="fas fa-calendar-alt"></i> 10 de Julio de 2024</p>
                        <p><i class="fas fa-clock"></i> 11:00 AM</p>
                        <p><i class="fas fa-user"></i> María López</p>
                        <p><i class="fas fa-map-marker-alt"></i> Sala 2</p>
                        <img src="imagen2.jpg" alt="Imagen de la actividad 2">
                        <div class="activity-details">
                            <p>Descripción: Debates enfocados en la regulación de datos personales 
                                y privacidad en el contexto de la inteligencia artificial. 
                                Se explorarán políticas vigentes, desafíos éticos y 
                                recomendaciones para empresas que manejan grandes volúmenes de datos.</p>
                            <p>Biografía del ponente María López...</p>
                        </div>
                        <div class="btn-container">
                            <button class="btn btn-inscribirse" data-actividad-id="3">Inscribirse</button>
                        </div>
                    </div>
                </div>
                <div class="day">
                    <div class="activity">
                        <h3>Seminarios sobre Responsabilidad Ética en IA</h3>
                        <p><i class="fas fa-calendar-alt"></i> 10 de Julio de 2024</p>
                        <p><i class="fas fa-clock"></i> 11:00 AM</p>
                        <p><i class="fas fa-user"></i> María López</p>
                        <p><i class="fas fa-map-marker-alt"></i> Sala 2</p>
                        <img src="imagen2.jpg" alt="Imagen de la actividad 2">
                        <div class="activity-details">
                            <p>Descripción: Seminarios dedicados a explorar los aspectos éticos de la inteligencia artificial, 
                                centrados en cómo las empresas pueden asegurar que sus aplicaciones de IA sean éticamente responsables y socialmente beneficiosas.</p>
                            <p>Biografía del ponente María López...</p>
                        </div>
                        <div class="btn-container">
                            <button class="btn btn-inscribirse" data-actividad-id="4">Inscribirse</button>
                        </div>
                    </div>
                </div>
                <div class="day">
                    <div class="activity">
                        <h3>Sesiones de Networking y Ferias Tecnológicas</h3>
                        <p><i class="fas fa-calendar-alt"></i> 10 de Julio de 2024</p>
                        <p><i class="fas fa-clock"></i> 11:00 AM</p>
                        <p><i class="fas fa-user"></i> María López</p>
                        <p><i class="fas fa-map-marker-alt"></i> Sala 2</p>
                        <img src="imagen2.jpg" alt="Imagen de la actividad 2">
                        <div class="activity-details">
                            <p>Descripción: Espacios informales para que participantes, conferencistas y empresas patrocinadoras interactúen, 
                                compartan ideas y establezcan contactos comerciales. 
                                Incluirán demostraciones de tecnologías emergentes y soluciones innovadoras en IA y ciberseguridad.</p>
                            <p>Biografía del ponente María López...</p>
                        </div>
                        <div class="btn-container">
                            <button class="btn btn-inscribirse" data-actividad-id="5">Inscribirse</button>
                        </div>
                    </div>
                </div>
                <!-- Más actividades -->
            </div>
        </main>

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

        <!-- Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    </body>

    <servlet>
        <servlet-name>InscribirseServlet</servlet-name>
        <servlet-class>com.example.Checking.InscribirseServlet</servlet-class>
    </servlet>
    <servlet-mapping>
        <servlet-name>InscribirseServlet</servlet-name>
        <url-pattern>/InscribirseServlet</url-pattern>
    </servlet-mapping>

</html>

