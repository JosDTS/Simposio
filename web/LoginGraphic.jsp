<%-- 
    Document   : Login
    Created on : 7 jun. 2024, 11:25:38
  * @author Jocelyn
 * @author Jeison
 * @author Adrian 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio de sesion</title>
        <link rel="stylesheet" href="Style/Home.css">
        <link rel="stylesheet" href="Style/Login.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <header class="custom-header">
        <div class="logos">
            <img src="Images/LogoUCR.png" alt="Universidad de Costa Rica" class=" logo-ucr">
            <img src="Images/SSurHorizo.png" alt="Logotipo de la Sede del Sur" class=" logo-sede">
            <img src="Images/SSur-CIEhorizo.png" alt="Logo de la carrera de Informatica Empresarial" class=" logo-carrera">
        </div>
    </header>
    <body class="body-login">
            <nav class="navbar navbar-expand-sm bg-body-tertiary"> 
                <a href = "index.html">Inicio</a>
                <a href = "RegistrationGraphic.jsp">Registrarse</a>
                

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
                    <div class="submit">
                        <button type="submit">Entrar</button>
                    </div>

                    <div class="register">
                        <p>¿No tienes una cuenta? <a href="Registration.jsp">Registrarse</a></p>
                    </div>

                </div>
            </form>
            <section class="space">

            </section>

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

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    </body>

</html>
