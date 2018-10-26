<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="google-signin-client_id" content="341042382513-spt3pjn88up45m1f3518u264j05f712r.apps.googleusercontent.com">
        <script src="https://apis.google.com/js/platform.js" async defer></script>

        <title>Sistema de Pasantias</title>

        <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <!-- Our Custom CSS -->
        <link rel="stylesheet" href="estilos/css/main.css">
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">

    </head>
    <body>
        <div class="wrapper">

            <!-- Sidebar Holder -->
            <nav id="sidebar">
                <div id="dismiss">
                    <i class="glyphicon glyphicon-arrow-left"></i>
                </div>
                <div class="sidebar-header">
                    <h3>Sistema de Calificación de Pasantías</h3>
                </div>
                <ul class="list-unstyled components">
                    <p>Menú</p>
                    <li class="active">
                        <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false">NOTAS</a>
                        <ul class="collapse list-unstyled" id="homeSubmenu">
                            <li><a href="alumno_buscar.jsp">Registrar</a></li>
                            <li><a href="#">Listar</a></li>
                            <li><a href="#">Reportes</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false">mas funciones</a>
                        <ul class="collapse list-unstyled" id="pageSubmenu">
                            <li><a href="#">opcion1</a></li>
                            <li><a href="#">opcion2</a></li>
                            <li><a href="#">opcion3</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">resumen</a>
                    </li>
                    <li>
                        <a href="#">contactanos</a>
                    </li>
                </ul>
            </nav>

            <!-- Page Content Holder -->
            <div id="content">

                <nav class="navbar navbar-default">
                    <div class="container-fluid">

                        <div class="navbar-header">
                            <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
                                <i class="glyphicon glyphicon-align-left"></i>
                                <span>Menu</span>
                            </button>
                        </div>

                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="#">Page</a></li>
                                <li><a href="#">Page</a></li>
                                <li><a href="#">Page</a></li>
                                <li> <a href="index.html" onclick="signOut();">Cerrar sesión</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <!-- BUSCANDO ALUMNO POR CODIGO -->
                <center>
                    <form action="SAlumno_buscar" method="post">
                        Codigo de alumno : <input type="text" name="codigo"> <br>
                        <button type="submit">Buscar</button>
                    </form>
                </center>

            </div>
        </div>
        <div class="overlay"></div>


        <!-- jQuery CDN -->
        <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
        <!-- Bootstrap Js CDN -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <!-- jQuery Custom Scroller CDN -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>

        <script type="text/javascript">
                                    $(document).ready(function () {
                                        $("#sidebar").mCustomScrollbar({
                                            theme: "minimal"
                                        });

                                        $('#dismiss, .overlay').on('click', function () {
                                            $('#sidebar').removeClass('active');
                                            $('.overlay').fadeOut();
                                        });

                                        $('#sidebarCollapse').on('click', function () {
                                            $('#sidebar').addClass('active');
                                            $('.overlay').fadeIn();
                                            $('.collapse.in').toggleClass('in');
                                            $('a[aria-expanded=true]').attr('aria-expanded', 'false');
                                        });
                                    });
        </script>
        <script>
            function signOut() {
                var auth2 = gapi.auth2.getAuthInstance();
                auth2.signOut().then(function () {
                    console.log('User signed out.');
                });
            }

            function onLoad() {
                gapi.load('auth2', function () {
                    gapi.auth2.init();
                });
            }
        </script>
        <script src="https://apis.google.com/js/platform.js?onload=onLoad" async defer></script>
    </body>
</html>
