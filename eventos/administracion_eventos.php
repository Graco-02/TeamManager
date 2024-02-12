<?php
      require_once("../utilidades/conexion.php");
      require_once("../utilidades/alerta.php");
      require_once("ctrl/eventos.php");
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
                    <a href="../equipos/administracion_equipos.php">equipos</a> 
                    <a href="../jugadores/administracion_jugadores.php">jugadores</a> 
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

                            <input type="submit" value="AGREGAR" name="acceder_bt" class="buton_formulario" onclick="">
                        </fieldset>
                    </form>
                </section>

                <section id="listado_usuario">
                    <h1>Eventos</h1>
                    <table id="listado_usuarios" class="listado_usuarios_css">
                        <tr>
                          <th>Nombre</th>
                          <th>Fecha De Inicio</th>
                          <th>Inicia en Dias</th>
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