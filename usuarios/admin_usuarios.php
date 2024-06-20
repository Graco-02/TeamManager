<?php 
   session_start();
   if(isset( $_SESSION['usuario_logeado'])){
      require_once("../utilidades/conexion.php");
      require_once("../utilidades/alerta.php");
      require_once("ctrl/usuarios_ctrl.php");
?>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/usuarios_css.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
        <script src="js/usuario_jvs.js"></script>
        <title>administracion usuarios</title>
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
                    <a href="../usuarios/admin_usuarios.php">usuarios</a> 
                </div>
            </div>
        </header>

        <main>
            <div class="main_contenido">
            <form id="form" action="javascript: set_insertar();" enctype=" multipart/form-data"  class="loging_formulario">
                <section id="datos_usuario">
                        <div class="flex_colum">
                             <img src="../imagenes/usuario1.png" alt="usuario" id="usuario_logo"/>
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
                         <legend class="formulario_legend">Datos Acceso</legend>
                         <label for="usuario_name_acces">Usuario</label>
                         <input type="text" placeholder="FULANITO" class="input_formulario" name="usuario_name_acces" id="usuario_name_acces" required/>

                         <label for="usuario_clave">Clave</label>
                         <input type="password" placeholder="De Tal" class="input_formulario" name="usuario_clave" id="usuario_clave" required/>


                         <label for="usuario_tipo" class="input_formulario">Tipo Acceso</label>
                         <select id="usuario_tipo" class="input_formulario" name="usuario_tipo">
                             <option value="0">Administrador</option>
                             <option value="1">Presidente del Club</option>
                         </select>

                       </fieldset>

                       <input type="submit" value="AGREGAR" name="acceder_bt" class="buton_formulario" onclick="">
                       </div>
                </section>
                </form>

                <section id="listado_usuario">
                    <table id="listado_usuarios" class="listado_usuarios_css">
                        <tr>
                          <th>Nombre</th>
                          <th>Identificacion</th>
                        </tr>
                        <?php get_listar_usuarios_todos();?>
                    </table>
                </section>
            </div>
        </main>
    </body>
    </html>
<?php }else{
    header("Location:../index.php");}?>