<?php
      require_once("../utilidades/conexion.php");
      require_once("../utilidades/alerta.php");
      require_once("ctrl/jugadores.php");
      $equipo=0;
      session_start();
      if(count($_GET)>0){
         $equipo = $_GET['id_equipo'];
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
                        <a href="../eventos/administracion_eventos.php">eventos</a> 
                        <a href="../equipos/administracion_equipos.php">equipos</a>  
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
                    <form id="form" action="javascript: set_insertar();" class="loging_formulario" enctype=" multipart/form-data">
                         <div class="flex_colum">
                             <img src="../imagenes/usuario1.png" alt="usuario" id="usuario_logo"/>
                             <br>
                             <input type="file" name="pic" id="pic" onchange="readURL(this.value)"/>
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
                             <img src="../imagenes/lupa.png" alt="usuario" class="lupa" onclick="set_filtrar_listado();"/>
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
                            
                            <label for="jugador_evento" >Eventos</label>
                            <select class="input_formulario" onchange="" id="jugador_evento" name="jugador_evento" >
                                <?php if($equipo>0){get_listar_eventos_jugador($equipo,0);}else{echo "<option value=".'0'.">".'NO HAY EVENTOS DISPONIBLES'."</option>";}?>
                            </select>

                            <input type="submit" value="AGREGAR" name="acceder_bt" class="buton_formulario" onclick="">
                        </fieldset>

                        <fieldset  class="flex" style="flex-direction: column;">
                             <legend class="formulario_legend">Archivos Adjuntos</legend>
                             <label for="adjunto1" id="label_adjunto">Adjunto 1</label>
                             <a id="adjunto_href" href="http://"></a>
                             <img src="../imagenes/usuario1.png" alt="usuario" id="adjunto_1" hidden/>
                             <input type="file" name="adjunto1" id="adjunto1" onchange="readURL2(this.value)"/>
                             <img src="../imagenes/usuario1.png" alt="adjunto_visor" id="adjunto_visor"/>
                        </fieldset>
                    </form>
                </section>

                <section id="listado_usuario">
                    <table id="listado_usuarios" class="listado_usuarios_css">
                        <thead>
                            <tr>
                              <th>Nombres</th>
                              <th>Apellidos</th>
                              <th>Identificacion</th>
                            </tr>
                        </thead>
                        <tbody id="lista_jugadores">
                             <?php get_listar_jugadores_todos($equipo);?>
                        </tbody>
                    </table>
                </section>

            </div>
        </main>


</body>
</html>