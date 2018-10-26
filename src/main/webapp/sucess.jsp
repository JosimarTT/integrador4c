<!doctype html>
<html lang="en">
    <head>
        <meta name="google-signin-scope" content="profile email">
        <meta name="google-signin-client_id" content="341042382513-spt3pjn88up45m1f3518u264j05f712r.apps.googleusercontent.com">
        <script src="https://apis.google.com/js/platform.js?onload=onLoad" async defer></script>
        <script src="https://apis.google.com/js/platform.js" async defer></script>
        <meta charset="UTF-8">
        <title>Document</title>
        <link rel="stylesheet" href="estilos/css/login.css" type="text/css">
    </head>
    <body>
        <div class="outer">
            <div class="middle">
                <div class="inner">
                    <center>
                        <img  src="img/tecsup.png" alt="" width="400" class="paddingV">
                        <h1 id="titulo" class="paddingV">Pagina de inicio</h1>
                        <div id="signOut"><button onclick="signOut()">Sign Out</button></div>
                    </center>
                </div>
            </div>
        </div>

        <script>
            function signOut() {
                var auth2 = gapi.auth2.getAuthInstance();
                auth2.signOut().then(function () {
                    console.log('User signed out.');
                });
                location.href = 'index.html';
            }
            function onLoad() {
                gapi.load('auth2', function () {
                    gapi.auth2.init();
                });
            }
        </script>
    </body>
</html>

