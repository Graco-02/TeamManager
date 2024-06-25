<?php 
   session_start();
   if(isset( $_SESSION['usuario_logeado'])){
      require_once("../utilidades/conexion.php");
      require_once("../utilidades/alerta.php");
?>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/admin_css.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        
        <title>administracion_principal</title>
    </head>
    <body>
        <header>
            <div id="header_contenido">
                <div class="cabecera">
                    <img src="../imagenes/imagen_logo1.jpg" alt="header_logo" id="header_logo"/>
                    <div class="logo_name">
                        <p>Team Manager</p>
                    </div>

                    <div class="menu_administracion_principal">
                    <a href="../usuarios/admin_usuarios.php">usuarios</a> 
                    <a href="../eventos/administracion_eventos.php">eventos</a> 
                    <a href="../equipos/administracion_equipos.php">equipos</a> 
                    <a href="../jugadores/administracion_jugadores.php">jugadores</a> 
                    <a href="../histlog/histlog.php">historico</a> 
                    </div>

                </div>
                <!--<div class="menu_administracion_principal">
                    <a href="../usuarios/admin_usuarios.php">usuarios</a> 
                    <a href="../eventos/administracion_eventos.php">eventos</a> 
                    <a href="../equipos/administracion_equipos.php">equipos</a> 
                    <a href="../jugadores/administracion_jugadores.php">jugadores</a> 
                    <a href="../histlog/histlog.php">historico</a> 
                </div>-->
            </div>
        </header>
    </body>
    </html>
<?php }else{
    header("Location:../index.php");
}?>