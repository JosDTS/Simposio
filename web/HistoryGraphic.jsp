<%-- 
    Document   : HistoryGraphic
    Created on : 18 jun. 2024, 15:20:53
    Author     : ESTUDIANTE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Historia</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Style/Home.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:
              wght@700&family=Raleway:wght@400;700&display=swap" 
              rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css
              /bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEj
              ISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
              crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/j
        s/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5
        s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    </head>
    <header class="custom-header">
        <div class = "logos">
            <img src="Images/LogoUCR.png" alt="Universidad de Costa Rica" class=" logo-ucr">
            <img src="Images/SSurHorizo.png" alt="Logotipo de la Sede del Sur" class=" logo-sede">
            <img src="Images/SSur-CIEhorizo.png" alt="Logo de la carrera de Informatica Empresarial" class=" logo-carrera">
        </div>

    </header>
    <body>
        <nav >
            <a href = "LoginGraphic.jsp">Login</a>
            <a href = "RegistrationGraphic.jsp">Registro</a>
            <a href = "#">Actividades</a>
            <div class="MenuIteam">
                <a href = "MapaGraphic.jsp" id="mapa">Mapa</a>
                <ul class="subMenu" id="submenu">
                    <li><a href ="#">Golfito</a></li>
                    <li><a href ="#">SedeSur</a></li>
                </ul>
            </div>
            <a href = "#">Historia</a>
            <a href = "#">Actividades</a>
            <a href = "#">Contacto</a>

        </nav>

        <div class="containerHistory">
            <div class="image-container">
                <img src="Images/Barco.png" alt="Descripción de la imagen">
            </div>
            <div class="text-container">
                <h1>Golfito</h1>
                <p>Golfito. Municipio número 7 de la provincia de Puntarenas en
                    Costa Rica. Se encuentra en la costa del Pacífico Sur, cerca
                    de la frontera de Panamá y es cabecera que se ubica a unos 
                    290km de San José. Puerto para salir a la Península de Osa, 
                    con el Parque Nacional de Corcovado. En este distrito se 
                    ubica el Depósito Libre Comercial de Golfito, área importante 
                    para la economía del distrito. Posee un clima del Pacífico Sur.
                    Se creó el 10 de junio de 1949. </p>
                <h1>Antiguedad</h1>
                <p>Golfito. Municipio número 7 de la provincia de Puntarenas en
                    Costa Rica. Se encuentra en la costa del Pacífico Sur, cerca
                    de la frontera de Panamá y es cabecera que se ubica a unos 
                    290km de San José. Puerto para salir a la Península de Osa, 
                    con el Parque Nacional de Corcovado. En este distrito se 
                    ubica el Depósito Libre Comercial de Golfito, área importante 
                    para la economía del distrito. Posee un clima del Pacífico Sur.
                    Se creó el 10 de junio de 1949. </p>
            </div>
            
        </div>
        <footer >
            <p>&copy; 2024 Universidad XYZ. Todos los derechos reservados.</p>
        </footer>
    </body>
</html>
