<?php
      require_once("../utilidades/conexion.php");
      require_once("../utilidades/alerta.php");
      require_once("ctrl/equipos.php");
      session_start();
      $user_type = $_SESSION['user_type'];
      $usuario_logeado = $_SESSION['usuario_logeado'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>administracion de eventos</title>
    <link rel="stylesheet" href="css/equipos.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/table_css.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js" type="text/javascript"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <script src="js/equipos.js"></script>
    <script>user_type=<?php echo $user_type; ?></script>
    <!--<script>usuario_logeado=<?php echo $usuario_logeado; ?></script>-->
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
                    <a href="../jugadores/administracion_jugadores.php?id_equipo=<?php echo $_SESSION['admin_id'];?>">jugadores</a> 
                    <a href="../eventos/administracion_eventos.php?id_equipo=<?php echo $_SESSION['admin_id'];?>">Eventos</a> 
                    <a href="../equipos/adsministracion_equipos_restringida.php">equipos</a> 
                    <a href="../utilidades/logout.php">SALIR</a>                    
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
                            <legend class="formulario_legend">Datos Equipo</legend>

                            <label for="equipo_name">Nombre Del CLub o Liga</label>
                            <input type="text" placeholder="XXX" class="input_formulario" name="equipo_name" id="equipo_name" required/>


                            <div class="flex">
                                <div>                               
                                     <label for="equipo_categoria">categoria</label>
                                     <input type="text" placeholder="XXX" class="input_formulario" name="equipo_categoria" id="equipo_categoria" required/>
                                </div>     

                                 <div>  
                                    <label for="equipo_circunscripcion">circunscripcion</label>
                                     <input type="text" placeholder="XXX" class="input_formulario" name="equipo_circunscripcion" id="equipo_circunscripcion" required/>
                                </div>
                            </div>

                            <div class="flex">
                                <div>
                                <label for="equipo_anio">Anio</label>
                                <input type="text" placeholder="XXX" class="input_formulario" name="equipo_anio" id="equipo_anio" required/>
                                </div>

                                <div>
                                <label for="equipo_rama">rama</label>
                                <input type="text" placeholder="XXX" class="input_formulario" name="equipo_rama" id="equipo_rama" required/>
                                </div>
                            </div>



                            <div class="flex">
                                <div>
                                <label for="equipo_entrenador">entrenador@</label>
                                <input type="text" placeholder="XXX" class="input_formulario" name="equipo_entrenador" id="equipo_entrenador" required/>
                                </div>

                                <div>
                                <label for="equipo_entrenador_tel">telefono</label>
                                <input type="text" placeholder="9999999999" class="input_formulario" name="equipo_entrenador_tel" id="equipo_entrenador_tel" required/>
                                </div>
                            </div>


                            <div class="flex">
                                <div>
                                <label for="equipo_delegado">delegad@&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text" placeholder="XXX" class="input_formulario" name="equipo_delegado" id="equipo_delegado" required/>
                                </div>
                                <div>
                                <label for="equipo_delegado_tel">telefono</label>
                                <input type="text" placeholder="9999999999" class="input_formulario" name="equipo_delegado_tel" id="equipo_delegado_tel" required/>
                                </div>    
                            </div>    



                            <label for="equipo_municipio">Municipio</label>
                            <input type="text" placeholder="XXX" class="input_formulario" name="equipo_municipio" id="equipo_municipio" required/>

                            <label for="equipo_sector">Sector</label>
                            <input type="text" placeholder="XXX" class="input_formulario" name="equipo_sector" id="equipo_sector" required/>

                            <!-- #regi
                             <input type="submit" value="MODIFICAR" name="acceder_bt" class="buton_formulario" onclick="">
                             -->
                        </fieldset>
                    </form>
                </section>

                <section id="listado_usuario">
                 <h1>Equipos</h1>
                    <table id="listado_usuarios" class="listado_usuarios_css">
                        <tr>
                          <th>Nombre</th>
                          <th>Municipio</th>
                          <th>Sector</th>
                          <th>*</th>
                        </tr>
                       <?php get_listar_equipos_restringido($_SESSION['usuario_logeado']);?>
                    </table>

                    <div id='equipos_div' class='display_none'>
                    <h1>Jugadores</h1>
                    <table id="listado_jugadores_equipo" class="listado_usuarios_css">
                        <thead>
                            <tr>
                              <th>Nombre</th>
                              <th>Apellido</th>
                              <th>Identificacion</th>
                              <th>Accion</th>
                            </tr>
                        </thead>

                        <tbody id="jugadores">

                        </tbody>
                    </table>
                    </div>
                </section>

            </div>
        </main>
</body>
</html>