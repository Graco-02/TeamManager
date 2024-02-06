<?php
      require_once("../utilidades/conexion.php");
      require_once("../utilidades/alerta.php");
      require_once("ctrl/equipos.php");
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
                    <a href="../usuarios/admin_usuarios.php">jugadores</a> 
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

                            <label for="evento_name">Nombre</label>
                            <input type="text" placeholder="XXX" class="input_formulario" name="equipo_name" id="equipo_name" required/>

                            <label for="evento_name">Municipio</label>
                            <input type="text" placeholder="XXX" class="input_formulario" name="equipo_name" id="equipo_municipio" required/>

                            <label for="evento_name">Sector</label>
                            <input type="text" placeholder="XXX" class="input_formulario" name="equipo_name" id="equipo_sector" required/>

                            <input type="submit" value="AGREGAR" name="acceder_bt" class="buton_formulario" onclick="">
                        </fieldset>
                    </form>
                </section>

                <section id="listado_usuario">
                    <table id="listado_usuarios" class="listado_usuarios_css">
                        <tr>
                          <th>Nombre</th>
                          <th>Municipio</th>
                          <th>Sector</th>
                        </tr>
                       <?php get_listar_equipos_todos();?>
                    </table>
                </section>

            </div>
        </main>


</body>
</html>