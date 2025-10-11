<?php
      require_once("../utilidades/conexion.php");
      require_once("../utilidades/alerta.php");
      //require_once("ctrl/histlog.php");
      session_start();
      if(isset($_SESSION['user_type'])){
      $user_type = $_SESSION['user_type'];

      if(isset($_GET['id_equipo'])){
        $equipo_seleccionado=$_GET['id_equipo'];
      }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Historico De Eventos</title>
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/table_css.css">
    <link rel="stylesheet" href="../histlog/css/histlog.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js" type="text/javascript"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <script src="js/eventos.js"></script>
    <script>user_type=<?php echo $user_type; ?></script>
    <script>user_id=<?php echo $equipo_seleccionado; ?></script>
</head>
<body>
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
            </div>
        </header>

        <main>
            <div class="main_contenido">
                <section class="formulario_entrada">
                    <form id="form" action="javascript: set_llamar_historico();" class="loging_formulario" enctype=" multipart/form-data">
                        <fieldset>
                            <legend class="formulario_legend">Historico</legend>

                            <label for="fecha_accion_1">Fecha inicio</label>
                            <input type="date" placeholder="" class="input_formulario" name="fecha_accion_1" id="fecha_accion_1" required/>


                            <input type="submit" value="BUSCAR" name="acceder_bt" class="buton_formulario" onclick="">
                        </fieldset>
                    </form>
                </section>

                <section id="listado_usuario">
                    <table id="listado_usuarios" class="listado_usuarios_css">
                        <thead>
                            <tr>
                              <th>Evento</th>
                              <th>fecha inicio</th>
                              <th>estado</th>
                            </tr>
                        </thead>
                        <tbody id="lista_acciones">
                             
                        </tbody>
                    </table>

                <div id='equipos_div'>
                    <h1>Equipos</h1>
                    <table id="listado_equipos" class="listado_usuarios_css">
                        <thead>
                        <tr>
                          <th>Nombre</th>
                          <th>Municipio</th>
                          <th>Sector</th>
                          <th>Jugadores</th>
                          <th>Accion</th>
                        </tr>
                        </thead>

                        <tbody id="lista_equipos_evento"></tbody>
                    </table>
                    </div>
                </section>

            </div>
        </main>

        <div id="caja_pago" class="no_visible">
            <section>
                    <form id="form" action="javascript: set_agregar_volante();" class="loging_formulario" enctype=" multipart/form-data">
                        <fieldset  class="flex" style="flex-direction: column;">
                             <legend class="formulario_legend">Volante de Pago</legend>
                             <label for="adjunto1" id="label_adjunto">Adjunto 1</label>
                             <a id="adjunto_href" href="http://"></a>
                             <br><br>
                             <img src="../imagenes/usuario1.png" alt="usuario" id="adjunto_1" hidden/>
                             <img src="../imagenes/usuario1.png" alt="adjunto_visor" id="adjunto_visor"/>
                             <br><br>
                       <!--       <input type="file" name="adjunto1" id="adjunto1" onchange="readURL2(this.value)"/> -->
                             
                        </fieldset>

                    <!--    <input type="submit" value="AGREGAR" name="acceder_bt" class="buton_formulario" onclick=""> -->
                        
                    </form>
                    <button class="buton_formulario" onclick="set_abrir_cerrar_formulario_pago();" value="cerrar">CERRAR
            </section>
       </div>

</body>
</html>
<?php }?>