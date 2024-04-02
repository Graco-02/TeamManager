<?php
      require_once("../utilidades/conexion.php");
      require_once("../utilidades/alerta.php");
      require_once("ctrl/jugadores.php");
      $jugador=0;
      session_start();
      if(count($_GET)>0){
         $jugador = $_GET['jugador'];
      }

      $user_type = $_SESSION['user_type'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>administracion de eventos</title>
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/table_css.css">
    <link rel="stylesheet" href="css/jugadores.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js" type="text/javascript"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <script src="js/jugadores.js"></script>
    <script>user_type=<?php echo $user_type; ?></script>
</head>
<body >
        <header>
            <div id="header_contenido">
                <div class="cabecera">
                    <img src="../imagenes/imagen_logo1.jpg" alt="header_logo" id="header_logo"/>
                    <div class="logo_name">
                        <p>Team Manager</p>
                    </div>
                </div>
                <div class="menu_administracion_principal">
                    <?php if( $user_type==0){?>
                        <a href="../eventos/administracion_eventos.php">eventos</a> 
                        <a href="../equipos/administracion_equipos.php">equipos</a> 
                    <?php }else{?>
                        <a href="../jugadores/administracion_jugadores.php?id_equipo=<?php echo $_SESSION['admin_id'];?>">jugadores</a> 
                        <a href="../eventos/administracion_eventos.php?id_equipo=<?php echo $_SESSION['admin_id'];?>">Eventos</a> 
                        <a href="../equipos/adsministracion_equipos_restringida.php">equipos</a> 
                    <?php }?>    
                </div>
            </div>
        </header>

        <main>
            <div style="display: flex;" class="main_contenido" >
                <section class="formulario_entrada">
                    <form id="form" action="javascript: set_insertar();" class="loging_formulario" enctype=" multipart/form-data">
                         <div class="flex_colum">
                             <img src="../imagenes/usuario1.png" alt="usuario" id="usuario_logo"/>
                             <br>
                            <!-- <input type="file" name="pic" id="pic" onchange="readURL(this.value)"/> -->
                         </div>
                        <fieldset>
                            <legend class="formulario_legend">Datos Jugador</legend>

                            <div class="flex">
                                <div>
                                    <label for="jugador_name">Nombres</label>
                                    <input type="text" placeholder="XXX" class="input_formulario" name="jugador_name" id="jugador_name" required/>
                                </div>

                                <div>
                                     <label for="jugador_lastname">Apellidos</label>
                                      <input type="text" placeholder="XXX" class="input_formulario" name="jugador_lastname" id="jugador_lastname" required/>  
                                </div>
                            </div>


                            <label for="jugador_fecha_nacimiento">Fecha de Nacimiento</label>
                            <input type="date" placeholder="" class="input_formulario" name="jugador_fecha_nacimiento" id="jugador_fecha_nacimiento" required/>

                            <label for="jugador_cedula">Identificacion</label>
                            <div class="flex">
                             <input type="text" placeholder="" class="input_formulario" name="jugador_cedula" id="jugador_cedula" required/>
                            </div>


                            <div class="flex">
                                <div>
                                   <label for="jugador_estatus">Estatus</label>
                                      <input type="text" placeholder="XXX" class="input_formulario" name="jugador_estatus" id="jugador_estatus" required/>  
                                </div>
                                <div>
                                   <label for="jugador_telefono">Tel</label>
                                      <input type="text" placeholder="XXX" class="input_formulario" name="jugador_telefono" id="jugador_telefono" required/>  
                                </div>
                            </div>

                            <label for="jugador_direccion">Direccion</label>
                            <input type="text" placeholder="" class="input_formulario" name="jugador_direccion" id="jugador_direccion" required/>


                            <label for="jugador_centro">Centro</label>
                            <input type="text" placeholder="" class="input_formulario" name="jugador_centro" id="jugador_centro" required/>




                            <label for="jugador_equipo">Equipo</label>
                            <select class="input_formulario" onchange="" id="jugador_equipo" name="jugador_equipo">
                                <?php get_listar_equipos_select($equipo);?>
                            </select>

                        </fieldset>

                        <fieldset>
                             <legend class="formulario_legend">Archivos Adjuntos</legend>
                             <label for="adjunto1" id="label_adjunto">Adjunto 1</label>
                             <a id="adjunto_href" href="http://"></a>
                             <img src="../imagenes/usuario1.png" alt="usuario" id="adjunto_1" hidden/>
                          <!--   <input type="file" name="adjunto1" id="adjunto1" onchange="readURL2(this.value)"/> -->
                             <img src="../imagenes/usuario1.png" alt="adjunto_visor" id="adjunto_visor"/>
                        </fieldset>
                    </form>
                </section>

                <script> set_seleccionar_jugador(<?php echo $jugador;?>);</script>

            </div>
        </main>


</body>
</html>