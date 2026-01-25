<?php
      require_once("../utilidades/conexion.php");
      require_once("../utilidades/alerta.php");
      require_once("ctrl/mensage_ctrl.php");
      session_start();
      $user_type = $_SESSION['user_type'];
?>

<?php if(isset( $user_type) &&  $user_type==0){ ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>administracion de eventos</title>
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/table_css.css">
    <link rel="stylesheet" href="css/mensage.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js" type="text/javascript"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <script src="js/mensage_js.js"></script>
    <script>user_type=<?php echo $user_type; ?></script>
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
                    <div class="menu_administracion_principal">
                      <a href="../usuarios/admin_usuarios.php">usuarios</a> 
                      <a href="../eventos/administracion_eventos.php">eventos</a> 
                      <a href="../equipos/administracion_equipos.php">equipos</a> 
                      <a href="../jugadores/administracion_jugadores.php">jugadores</a> 
                      <a href="../histlog/histlog.php">historico</a> 
                    </div>

            </div>
        </header>

        <main>
            <div class="main_contenido">
                <section class="formulario_entrada">
                    <form id="form" action="javascript: set_insertar_accion();" class="loging_formulario" enctype=" multipart/form-data">
                        <fieldset>
                            <legend class="formulario_legend">Mensajes</legend>

                            <label for="usuario_select">Usuario</label>
                            <select class="input_formulario" onchange="//pruebas();" id="usuario_select" name="usuario_select" required>
                              <?php get_listar_usuarios_historico()?>
                            </select>
                            <!-- #region -->
                            <label for="txt_mensage">Mensage</label>
                            <textarea class="input_formulario"  name="txt_mensage" id="txt_mensage" required></textarea>

                            <label for="fecha_accion_1">Fecha inicio</label>
                            <input type="date" placeholder="" class="input_formulario" name="fecha_accion_1" id="fecha_accion_1" required />

                            <label for="fecha_accion_2">Fecha fin</label>
                            <input type="date" placeholder="" class="input_formulario" name="fecha_accion_2" id="fecha_accion_2" required/>

                            <input type="submit" value="ENVIAR" name="acceder_bt" class="buton_formulario" onclick="">
                        </fieldset>
                    </form>
                </section>

                <section id="listado_usuario">
                    <table id="listado_usuarios" class="listado_usuarios_css">
                        <thead>
                            <tr>
                              <th>Usuario</th>
                              <th>mensaje</th>
                              <th>fecha inicio</th>
                              <th>fecha fin</th>
                            </tr>
                        </thead>
                        <tbody id="lista_mensages">
                             
                        </tbody>
                    </table>
                </section>

            </div>
        </main>


</body>
</html>
<script>
    get_listar_mensages();
</script>

<?php }else{
    alert("SOLO UN ADMINISTRADOR PUEDE USAR ESTE MODULO");
}?>