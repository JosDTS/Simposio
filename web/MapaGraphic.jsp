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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/
              bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpo
              k6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/boots
         trap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESa
        AA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </head>
    <header class="custom-header">
        <div class = "logos">
            <img src="Images/LogoUCR.png" alt="Universidad de Costa Rica"
                 class=" logo-ucr">
            <img src="Images/SSurHorizo.png" alt="Logotipo de la Sede del Sur" 
                 class=" logo-sede">
            <img src="Images/SSur-CIEhorizo.png" alt="Logo de la carrera de
                 Informatica Empresarial" class=" logo-carrera">
        </div>

    </header>
    <body>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <a href ="index.html">Inicio</a>
            <a href ="LoginGraphic.jsp">Login</a>
            <a href = "RegistrationGraphic.jsp">Registro</a>
            <a href = "CalendarGraphic.jsp">Actividades</a>
            <div class="MenuIteam">
                <a href = "MapaGraphic.jsp" id="mapa">Mapa</a>
                <ul class="subMenu" id="submenu">
                    <li><a href ="#">Golfito</a></li>
                    <li><a href ="#">SedeSur</a></li>
                </ul>
            </div>
            <a href = "HistoryGraphic.jsp">Historia</a>
            <a href = "#">Contacto</a>

        </nav>
        <section>
            <h1 class="Title-Map">MAPA ITERATIVO DE LA SEDE DEL SUR </h1>
        <div class="container-map">

            <img src="Images/MapaSSur.png" alt="MapaSSur"  usemap="#mapa"
                 class="mapa"/>
            <map id="mapa">
                <area shape="Circle" coords="445,112,48" href="" 
                      alt="CLUB CENTRO">
                <area shape="Circle" coords="528,224,52" href="" 
                      alt="EDIFICIO PRINCIPAL">
                <area shape="Circle" coords="445,112,48" href="" 
                      alt="CLUB CENTRO">
            </map>
        </div>
            
            <p>
                
                
                
            </p>
        </section>
        
        
        <section class="Club-Centro">
            <div class="container" > 
                <div class="card-container">
                    <div class="header-card">
                        <a href="#">
                            <img src="Images/ClubCentro.png" 
                                 alt="Club Centro"/>
                        </a>
                       
                    </div>
                     <div class="description-card">
                         <p>CLUB CENTRO</p>
                     </div>
                    
                </div>
                
                <div class="card-container">
                    <div class="header-card">
                        <a href="#">
                            <img src="Images/ClubCentro.png" 
                                 alt="Edificio Principal"/>
                        </a>
                       
                    </div>
                     <div class="description-card">
                         <p>EDIFICIO PRINCIPAL</p>
                     </div>
                    
                </div>
                    
            </div>
        </section>
        
    </body>
    <p> 
    
    
    
    </p>
    <footer >
        <p>&copy; 2024 Universidad XYZ. Todos los derechos reservados.</p>
    </footer>
</html>

