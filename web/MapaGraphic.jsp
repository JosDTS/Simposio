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
    </head>
    <header class="custom-header">
        <div class = "logos">
            <img src="Images/LogoUCR.png" alt="Universidad de Costa Rica" class=" logo-ucr">
            <img src="Images/SSurHorizo.png" alt="Logotipo de la Sede del Sur" class=" logo-sede">
            <img src="Images/SSur-CIEhorizo.png" alt="Logo de la carrera de Informatica Empresarial" class=" logo-carrera">
        </div>

    </header>
    <body>
        <section>
            <h1 class="Title-Map">MAPA ITERATIVO DE LA SEDE DEL SUR </h1>
        <div class="container-map">

            <img src="Images/MapaSSur.png" alt="MapaSSur"  usemap="#mapa" class="mapa"/>
            <map id="mapa">
                <area shape="Circle" coords="445,112,48" href="" alt="CLUB CENTRO">
                <area shape="Circle" coords="528,224,52" href="" alt="EDIFICIO PRINCIPAL">
                <area shape="Circle" coords="445,112,48" href="" alt="CLUB CENTRO">
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
                            <img src="Images/ClubCentro.png" alt="Club Centro"/>
                        </a>
                       
                    </div>
                     <div class="description-card">
                         <p>CLUB CENTRO</p>
                     </div>
                    
                </div>
                
                <div class="card-container">
                    <div class="header-card">
                        <a href="#">
                            <img src="Images/ClubCentro.png" alt="Edificio Principal"/>
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

