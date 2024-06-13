<%-- 
    Document   : Login
    Created on : 7 jun. 2024, 11:25:38
    Author     : ESTUDIANTE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio de sesion</title>
        <link rel="stylesheet" href="Style/Home.css">
    </head>
    <body>
        <header class="custom-header">
            <div class="logos">
                <img src="Images/LogoUCR.png" alt="Universidad de Costa Rica" class=" logo-ucr">
                <img src="Images/SSurHorizo.png" alt="Logotipo de la Sede del Sur" class=" logo-sede">
                <img src="Images/SSur-CIEhorizo.png" alt="Logo de la carrera de Informatica Empresarial" class=" logo-carrera">
            </div>
        </header>
        <nav>
            <a href = "index.html">Inicio</a>
            <a href = "RegistrationGraphic.jsp">Registrarse</a>
            <a href = "#">Contacto</a>

        </nav>
        <form id="loginForm" action="Login.jsp" method="Post">
            <div class="container3">           
                <h2 class="login-header">Inicio de Sesión</h2>
                <div class="input-field">
                    <label for="email">Introduce tu email</label>
                    <input name ="email" type="text" required>

                </div>
                <div class="input-field">
                    <label for="password">Introduce tu contraseña</label>
                    <input name ="password" type="password" required>

                </div>
                <div class="forget">               
                    <label for="remember">
                        <input type="checkbox" id="remember">
                        <span>Recordarme</span>
                    </label>
                    <a href="#">¿Olvidaste tu contraseña?</a>
                </div>
                <button type="submit">Entrar</button>
                <div class="register">
                    <p>¿No tienes una cuenta? <a href="Registration.jsp">Registrarse</a></p>
                </div>

            </div>
        </form>

        <footer class="bg-primary text-white text-center py-3">
            <p>&copy; 2024 Universidad XYZ. Todos los derechos reservados.</p>
        </footer>
    </body>
</html>
