<?php
      require_once("../utilidades/conexion.php");
      require_once("../utilidades/alerta.php");
      require_once("ctrl/eventos.php");
      session_start();
      $user_type = $_SESSION['user_type'];
      $equipo_seleccionado=0;

      if(isset($_GET['id_equipo'])){
        $equipo_seleccionado=$_GET['id_equipo'];
      }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>administracion de eventos</title>
    <link rel="stylesheet" href="css/eventos.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/table_css.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js" type="text/javascript"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <script src="js/eventos.js"></script>
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
                    <?php if( $user_type==0){?>
                        <a href="../usuarios/admin_usuarios.php">usuarios</a> 
                        <a href="../equipos/administracion_equipos.php">equipos</a> 
                        <a href="../jugadores/administracion_jugadores.php">jugadores</a> 
                        <a href="../histlog/histlog.php">historico</a> 
                    <?php }else{?>
                        <a href="../jugadores/administracion_jugadores.php?id_equipo=<?php echo $_SESSION['admin_id'];?>">jugadores</a> 
                        <a href="../eventos/administracion_eventos.php?id_equipo=<?php echo $_SESSION['admin_id'];?>">Eventos</a> 
                        <a href="../equipos/adsministracion_equipos_restringida.php">equipos</a> 
                    <?php }?>     
                </div>
            </div>
        </header>

        <main>
            <div class="main_contenido">
                <section class="formulario_entrada">
                    <form id="form" action="javascript: set_insertar();" class="loging_formulario">
                        <fieldset>
                            <legend class="formulario_legend">Datos Evento</legend>
                            <label for="evento_name">Nombre Del Evento</label>
                             <input type="text" placeholder="Torneo X" class="input_formulario" name="evento_name" id="evento_name" required/>

                            <label for="evento_num_equipos">Cantidad de Equipos Permitidos</label>
                            <input type="number" placeholder="0" class="input_formulario" name="evento_num_equipos" id="evento_num_equipos" required/>

                            <label for="evento_num_jug_equipos">Cantidad de Jugadores Por Equipo</label>
                            <input type="number" placeholder="0" class="input_formulario" name="evento_num_jug_equipos" id="evento_num_jug_equipos" required/>

                            <label for="evento_descripcion">Descripcion Corta</label>
                            <input type="text" placeholder="" class="input_formulario" name="evento_descripcion" id="evento_descripcion"/>

                            <label for="evento_fecha_inicio">Fecha De Inicio</label>
                            <input type="date" placeholder="" class="input_formulario" name="evento_fecha_inicio" id="evento_fecha_inicio"/>

                            <?php if( $user_type==0){?>
                                <label for="check_estado_evento">Estado</label>
                                <select name="check_estado_evento" id="check_estado_evento" class="input_formulario">
                                    <option value="0">ABIERTO</option>
                                    <option value="1">FINALIZADO</option>
                                </select>

                                <input type="submit" value="AGREGAR" name="acceder_bt" class="buton_formulario" onclick="">
                            <?php }?>

                        </fieldset>
                    </form>
                </section>

                <section id="listado_usuario">
                    
                    <div class="flex_class">
                      <h1>Eventos</h1>
                     
                      <a href="historico_eventos.php?usuario=<?php echo $_SESSION['usuario_logeado'];?>">
                         <img src="../imagenes/historico.png" alt="header_logo" id="histori_bt" />
                      </a> 

                    </div>

                    <table id="listado_usuarios" class="listado_usuarios_css">
                        <tr>
                          <th>Nombre</th>
                          <th>Fecha De Inicio</th>
                          <th>Inicia en Dias</th>
                          <th>Estado</th>
                        </tr>
                       <?php get_listar_eventos_todos();?>
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


</body>
</html>