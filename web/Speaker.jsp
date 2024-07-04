<%-- 
    Document   : Speaker
    Created on : 2 jul. 2024, 12:09:15
  * @author Jocelyn
 * @author Jeison
 * @author Adrian 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Presentadores del Simposio</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Font Awesome para iconos -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!-- Estilos personalizados -->
    <link rel="stylesheet" href="Style/Home.css">
    <link rel="stylesheet" href="Style/Speaker.css">
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
            <h2> Ponentes del simposio </h2>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <img src="Images/JuanPerez.jpg" class="card-img-top" alt="Juan Pérez">
                    <div class="card-body">
                        <h5 class="card-title">Juan Pérez</h5>
                        <p class="card-text"><span>Afiliación:</span> Universidad de Costa Rica</p>
                        <p><span>Biografía:</span> Juan Pérez es un experto en inteligencia artificial con más de 10 años de experiencia en el campo. Ha trabajado en diversos proyectos de innovación tecnológica y es autor de varios artículos científicos.</p>
                        <p><span>Resumen de la ponencia:</span> En su presentación, Juan abordará las últimas tendencias en inteligencia artificial y cómo estas están transformando diferentes industrias.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="https://es.visafoto.com/img/docs/mx_passport_35x45.jpg" class="card-img-top" alt="María López">
                    <div class="card-body">
                        <h5 class="card-title">María López</h5>
                        <p class="card-text"><span>Afiliación:</span> Instituto Tecnológico de Costa Rica</p>
                        <p><span>Biografía:</span> María López es especialista en ciberseguridad y ha dirigido múltiples proyectos para mejorar la seguridad de sistemas informáticos. Su trabajo se centra en la defensa contra amenazas cibernéticas y la protección de datos.</p>
                        <p><span>Resumen de la ponencia:</span> María presentará simulacros de ataques cibernéticos, proporcionando a los participantes conocimientos prácticos sobre cómo responder a estas amenazas.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="Images/CarlosGomez.jpg" class="card-img-top" alt="Carlos Gómez">
                    <div class="card-body">
                        <h5 class="card-title">Carlos Gómez</h5>
                        <p class="card-text"><span>Afiliación:</span> Universidad Nacional</p>
                        <p><span>Biografía:</span> Carlos Gómez es un reconocido investigador en ética y regulación de datos. Su trabajo se enfoca en las implicaciones éticas del uso de la inteligencia artificial y la privacidad de los datos.</p>
                        <p><span>Resumen de la ponencia:</span> En su charla, Carlos explorará las políticas de regulación de datos y privacidad, así como los desafíos éticos que enfrentan las empresas que manejan grandes volúmenes de datos.</p>
                    </div>
                </div>
            </div>
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
    <!-- Script para búsqueda de actividades -->
    <script src="JS/searchActivities.js"></script>
</body>
</html>