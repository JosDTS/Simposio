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
    </head>
    <body class="Registro">

        <header class="custom-header">
            <div class="logos">
                <img src="Images/LogoUCR.png" alt="Universidad de Costa Rica" class=" logo-ucr">
                <img src="Images/SSurHorizo.png" alt="Logotipo de la Sede del Sur" class=" logo-sede">
                <img src="Images/SSur-CIEhorizo.png" alt="Logo de la carrera de Informatica Empresarial" class=" logo-carrera">
            </div>

        </header>
        <nav>
            <a href = "index.html">Inicio</a>
            <a href = "LoginGraphic.jsp">Iniciar Sesion</a>
            <a href = "#">Contacto</a>
        </nav>
        <div class="container2">

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
    </body>
</html>
