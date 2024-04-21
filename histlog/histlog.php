<?php
      require_once("../utilidades/conexion.php");
      require_once("../utilidades/alerta.php");
      require_once("ctrl/histlog.php");
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
    <link rel="stylesheet" href="css/histlog.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js" type="text/javascript"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <script src="js/histlog.js"></script>
    <script>user_type=<?php echo $user_type; ?></script>
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
            </div>
        </header>

        <main>
            <div class="main_contenido">
                <section class="formulario_entrada">
                    <form id="form" action="javascript: set_buscar();" class="loging_formulario" enctype=" multipart/form-data">
                        <fieldset>
                            <legend class="formulario_legend">Historico</legend>

                            <label for="usuario_historico">Usuario</label>
                            <select class="input_formulario" onchange="" id="usuario_historico" name="usuario_historico">
                              <?php get_listar_usuarios_historico()?>
                            </select>

                            <label for="fecha_accion_1">Fecha inicio</label>
                            <input type="date" placeholder="" class="input_formulario" name="fecha_accion_1" id="fecha_accion_1" />

                            <label for="fecha_accion_2">Fecha fin</label>
                            <input type="date" placeholder="" class="input_formulario" name="fecha_accion_2" id="fecha_accion_2" />

                            <input type="submit" value="BUSCAR" name="acceder_bt" class="buton_formulario" onclick="">
                        </fieldset>
                    </form>
                </section>

                <section id="listado_usuario">
                    <table id="listado_usuarios" class="listado_usuarios_css">
                        <thead>
                            <tr>
                              <th>usuario</th>
                              <th>fecha</th>
                              <th>accion</th>
                              <th>modulo</th>
                            </tr>
                        </thead>
                        <tbody id="lista_acciones">
                             
                        </tbody>
                    </table>
                </section>

            </div>
        </main>


</body>
</html>

<?php }else{
    alert("SOLO UN ADMINISTRADOR PUEDE USAR ESTE MODULO");
}?>