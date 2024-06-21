<%-- 
    Document   : Registration
    Created on : 9 jun. 2024, 15:37:38
    Author     : chava
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Formulario de Registro</title>
        <link rel="stylesheet" href="Style/Home.css">
        <link rel="stylesheet" href="Style/Registration.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.
              3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYm
              Dr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    
    </head>
    <header class="custom-header">
            <div class="logos">
                <img src="Images/LogoUCR.png" alt="Universidad de Costa Rica" 
                     class=" logo-ucr">
                <img src="Images/SSurHorizo.png" alt="Logotipo 
                     Sede del Sur" class=" logo-sede">
                <img src="Images/SSur-CIEhorizo.png" 
                     alt="Logo de la carrera de Informatica Empresarial"
                     class=" logo-carrera">
            </div>

        </header>
    <body class="Registro"> 
        <nav class="navbar navbar-expand-sm bg-body-tertiary">
            <a href = "index.html">Inicio</a>
            <a href = "LoginGraphic.jsp">Iniciar Sesion</a>
            <a href = "#">Actividades</a>
            <a href = "#">Contacto</a>
        </nav>
        <div class="container2" >

            <h2>Formulario de Registro</h2>
            <form action="Registration.jsp" method="post" id="registrationForm">
                <label for="userType">Registrarse como:</label>
                <select id="userType" name="userType" required>
                    <option value="">Seleccionar...</option>
                    <option value="docente">Docente</option>
                    <option value="estudiante">Estudiante</option>
                </select>

                <label for="name">Nombre:</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Correo Electrónico:</label>
                <input type="email" id="email" name="email" required>

                <label for="password">Contraseña:</label>
                <input type="password" id="password" name="password" required>

                <label for="idNumber">Número de Identificación:</label>
                <input type="text" id="idNumber" name="idNumber" required>

                <label for="institution">Institución Educativa:</label>
                <input type="text" id="institution" name="institution" required>

                <label for="interestArea">Área de Interés:</label>
                <input type="text" id="interestArea" name="interestArea" required>

                <label for="participantType">Tipo de Participante:</label>
                <select id="participantType" name="participantType" required>
                    <option value="">Seleccionar...</option>
                    <option value="asistente">Asistente</option>
                    <option value="ponente">Ponente</option>
                    <option value="empresa">Empresa</option>
                </select>

                <button type="submit">Registrarse</button>
                <img src="Images/SSur-CIEhorizo.png" alt="" class="logo-carrera">
            </form>
        </div>
        <footer class="bg-primary text-white text-center py-3">
            <p>&copy; 2024 Universidad XYZ. Todos los derechos reservados.</p>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/boot
    strap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLES
    aAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
