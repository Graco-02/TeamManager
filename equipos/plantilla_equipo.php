<?php
      require_once("../utilidades/conexion.php");
      require_once("../utilidades/alerta.php");
      require_once("ctrl/equipos.php");
      session_start();
      if(isset($_SESSION['user_type'])){
      $user_type = $_SESSION['user_type'];
      $equipo_seleccionado=$_GET['id_equipo'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>plantilla equipos</title>
    <link rel="stylesheet" href="css/equipos.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/table_css.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js" type="text/javascript"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <script src="js/equipos.js"></script>
</head>
<body style="background-color: white;">
        <header>
            <div id="header_contenido">
                <div class="cabecera">
                    <?php if( $user_type==0){?>
                        <a href="../administracion/administracion_admin_index.php"><img src="../imagenes/logo-abasado.png" alt="header_logo" id="header_logo"/></a> 
                    <?php }else{?>
                        <a href="../equipos/adsministracion_equipos_restringida.php"><img src="../imagenes/logo-abasado.png" alt="header_logo" id="header_logo"/></a> 
                    <?php }?>  
                    <div class="logo_name">
                        <p>asociacion de baloncesto de santo domingo</p>
                    </div>
                </div>
                <div class="menu_administracion_principal">

                </div>
            </div>
        </header>

        <main>
            <div class="main_contenido_plantilla">
               <span id="equipo_name_span">LOS TULIPANES</span>
               <script>set_seleccionar_2(<?php echo $equipo_seleccionado;?>);</script>
            </div>
            <hr>
            <br><br>     
            <section id="contenedor_jugadores">
                <?php get_planilla_jugadores($equipo_seleccionado);?> 
            <!--     <div class="plantilla_jugadores_datos_jugador">
                    <img src="../imagenes/usuario1.png" alt="usuario" id="plantilla_jugadores_datos_jugador_img"/>
                    <div id="plantilla_jugadores_datos_jugador_datos">
                        <span class="plantilla_jugadores_datos_jugador_headers" id="plantilla_jugadores_datos_jugador_nombre"><span class="titulos_span">Nombre :&nbsp;</span>jugador</span>
                        <span class="plantilla_jugadores_datos_jugador_headers" id="plantilla_jugadores_datos_jugador_fecnac"><span class="titulos_span">fecha de nacimiento :&nbsp;</span>2010-01-01</span>
                        <span class="plantilla_jugadores_datos_jugador_headers" id="plantilla_jugadores_datos_jugador_identificaion"><span class="titulos_span">identificacion :&nbsp;</span>001-0000000-0</span>
                        <span class="plantilla_jugadores_datos_jugador_headers" id="plantilla_jugadores_datos_jugador_centro"><span class="titulos_span">centro :&nbsp;</span>centro escolar</span>
                        <span class="plantilla_jugadores_datos_jugador_headers" id="plantilla_jugadores_datos_jugador_centro_id"><span class="titulos_span">id centro :&nbsp;</span>001-0000000-0</span>
                    </div>
                </div>    -->        
            </section>

        </main>


</body>
</html>
<?php }?>