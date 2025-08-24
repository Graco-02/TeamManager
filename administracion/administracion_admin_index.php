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
        <title>administracion_principal</title>
    </head>
    <body>
        <header>
            <div id="header_contenido">
              <div class="cabecera">
              <a href="../administracion/administracion_admin_index.php"><img src="../imagenes/logo-abasado.png" alt="header_logo" id="header_img"/></a>  
                      <div class="logo_name">
                          <p>asociacion de baloncesto de santo domingo</p>
                      </div>
              </div>
              <div class="menu_administracion_principal">
                      <a href="../usuarios/admin_usuarios.php">usuarios</a> 
                      <a href="../eventos/administracion_eventos.php">eventos</a> 
                      <a href="../equipos/administracion_equipos.php">equipos</a> 
                      <a href="../jugadores/administracion_jugadores.php">jugadores</a> 
                      <a href="../histlog/histlog.php">historico</a> 
                      <a href="../utilidades/logout.php">SALIR</a> 
              </div>
            </div>
        </header>
        
    </body>
    </html>
<?php }else{
    header("Location:../index.php");
}?>