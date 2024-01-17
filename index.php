<?php 
   session_start();
   if(isset( $_SESSION['admin_user'])){
      require_once("utilidades/conexion.php");
      require_once("utilidades/alerta.php");
      require_once("ctrl/padron_ctrl.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/table_css.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js" type="text/javascript"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <script src="js/padron.js"></script>
    <title>incio manejadores</title>
</head>
<body>
    <header>
        <div id="header_cabecera">
             <img src="imagenes/fradiz1.jpg" alt="" srcset="" id="header_logo">
             <img src="imagenes/IMG-20240117-WA0005.jpg" alt="" srcset="" id="header_logo2">
        </div>
    </header>
    
    <main>
        <div id="contenido_main">
        <section class="datos_captura">
             <form id="form" action="javascript: set_insertar();" enctype=" multipart/form-data"  class="formulario">
                <div>
                    <img src="imagenes/usuario1.png" alt="usuario" id="usuario_logo"/>
                    <br>
                    <input type="file" name="pic" id="pic" onchange="readURL(this.value)"/>
                </div>
                <div>
                    <fieldset>
                      <legend class="formulario_legend">Datos Personales</legend>
                      <label for="usuario_names">Nombres</label>
                      <input type="text" placeholder="FULANITO" class="input_formulario" name="usuario_names" id="usuario_names" required/>

                      <label for="usuario_lastnames">Apellidos</label>
                      <input type="text" placeholder="De Tal" class="input_formulario" name="usuario_lastnames" id="usuario_lastnames" required/>

                      <label for="usuario_identificacion">Identificacion</label>
                      <input type="text" placeholder="000-0000000-0" class="input_formulario" name="usuario_identificacion" id="usuario_identificacion"/>
                    </fieldset>

                    <fieldset>
                      <legend class="formulario_legend">Datos Votacion</legend>
                      <label for="usuario_colegio">Colegio Electoral</label>
                      <input type="text" placeholder="Colegio Electoral" class="input_formulario" name="usuario_colegio" id="usuario_colegio"/>

                      <label for="usuario_colegio_ubicacion">Ubicacion del colegio</label>
                      <input type="text" placeholder="Ubicacion del colegio" class="input_formulario" name="usuario_colegio_ubicacion" id="usuario_colegio_ubicacion" />

                      <label for="usuario_direccion">Direccion</label>
                      <input type="text" placeholder="Direccion" class="input_formulario" name="usuario_direccion" id="usuario_direccion"/>
                    </fieldset>

                    <input type="submit" value="AGREGAR" name="acceder_bt" class="buton_formulario" onclick="">
                </div>

             </form>
        </section>

        <section class="lista_datos">
                    <table id="listado_usuarios" class="listado_usuarios_css">
                        <tr>
                          <th>Nombre</th>
                          <th>Identificacion</th>
                          <th>Colegio</th>
                        </tr>
                        <?php get_listar_usuarios_todos();?>
                    </table>
        </section>
        </div>

    </main>


</body>
</html>

 <?php }else{
     header("Location:administracion/acceso_admin.php");
 }  ?>