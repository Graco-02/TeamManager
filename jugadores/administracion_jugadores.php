<?php
      require_once("../utilidades/conexion.php");
      require_once("../utilidades/alerta.php");
      require_once("ctrl/jugadores.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>administracion de eventos</title>
    <link rel="stylesheet" href="css/jugadores.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/table_css.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js" type="text/javascript"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <script src="js/jugadores.js"></script>
</head>
<body>
        <header>
            <div id="header_contenido">
                <div class="cabecera">
                    <img src="../imagenes/imagen_logo1.jpg" alt="header_logo" id="header_logo"/>
                    <div class="logo_name">
                        <p>Team Manager</p>
                    </div>
                </div>
                <div class="menu_administracion_principal">
                    <a href="../eventos/administracion_eventos.php">eventos</a> 
                    <a href="../equipos/administracion_equipos.php">equipos</a> 
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

                            <label for="jugador_name">Nombres</label>
                            <input type="text" placeholder="XXX" class="input_formulario" name="jugador_name" id="jugador_name" required/>

                            <label for="jugador_lastname">Apellidos</label>
                            <input type="text" placeholder="XXX" class="input_formulario" name="jugador_lastname" id="jugador_lastname" required/>  

                            <label for="jugador_fecha_nacimiento">Fecha de Nacimiento</label>
                            <input type="date" placeholder="" class="input_formulario" name="jugador_fecha_nacimiento" id="jugador_fecha_nacimiento" required/>

                            <label for="jugador_cedula">Identificacion</label>
                            <div class="flex">
                             <input type="text" placeholder="" class="input_formulario" name="jugador_cedula" id="jugador_cedula" required/>
                             <img src="../imagenes/lupa.png" alt="usuario" class="lupa" onclick="set_filtrar_listado();"/>
                            </div>


                            <label for="jugador_direccion">Direccion</label>
                            <input type="text" placeholder="" class="input_formulario" name="jugador_direccion" id="jugador_direccion" required/>

                            <label for="jugador_equipo">Equipo</label>
                            <select class="input_formulario" onchange="" id="jugador_equipo" name="jugador_equipo">
                                <?php get_listar_equipos_select();?>
                            </select>

                            <input type="submit" value="AGREGAR" name="acceder_bt" class="buton_formulario" onclick="">
                        </fieldset>

                        <fieldset>
                             <legend class="formulario_legend">Archivos Adjuntos</legend>
                             <label for="adjunto1">Adjunto 1</label>
                             <img src="../imagenes/usuario1.png" alt="usuario" id="adjunto_1" hidden/>
                             <input type="file" name="adjunto1" id="adjunto1" onchange="readURL2(this.value)"/>
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
                    <tbody id="jugadores">
                         <?php get_listar_jugadores_todos();?>
                    </tbody>
                    </table>
                </section>

            </div>
        </main>


</body>
</html>