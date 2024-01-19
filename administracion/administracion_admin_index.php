<?php 
   session_start();
   if(isset( $_SESSION['admin_user'])){
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
                 <img src="../imagenes/fradiz1.jpg" alt="" srcset="" id="header_logo">
                 <img src="../imagenes/IMG-20240117-WA0005.jpg" alt="" srcset="" id="header_logo">
             </div>
                <div class="menu_administracion_principal">
                    <a href="../usuarios/admin_usuarios.php">eventos</a> 
                    <a href="../usuarios/admin_usuarios.php">usuarios</a> 
                </div>
            </div>
        </header>
    </body>
    </html>
<?php }else{
    header("Location:acceso_admin.php");
}?>