<?php
    require_once("../utilidades/conexion.php");
    require_once("../utilidades/alerta.php");
    require_once("validacion_admin.php");

    session_start();

    if(count($_POST)>0){
        if (isset($_POST['longin_name']) && strlen($_POST['longin_name']) >= 5) {
            if (isset($_POST['longin_clave']) && strlen($_POST['longin_clave']) >= 4) {
                $user_name = $_POST['longin_name'];
                $user_clave = $_POST['longin_clave'];
                if (set_validar_logging($user_name, $user_clave) === TRUE) {

                } else {
                    alert("usuario o clave invalida");
                }
            }else{
                alert("la clave de usuario debe tener al menos 4 caracteres");
            }
        }else{
            alert("el nombre de usuario debe tener al menos 5 caracteres");
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/admin_css.css">
    <title>acceso_admin</title>
</head>
<body>
    <header>
        <div class="cabecera">
            <img src="../imagenes/imagen_logo1.jpg" alt="header_logo" id="header_logo"/>
            <div class="logo_name">
                <p>Team Manager</p>
            </div>
        </div>
    </header>

    <main>
        <div class="main_contenido">
            <img src="../imagenes/loging_2.png" alt="header_logo" id="login_img"/>  
            <form action="" method="post" class="loging_formulario">
                     <label for="longin_name">usuario</label>
                     <input type="text" placeholder="FULANITO" class="input_formulario" name="longin_name" id="longin_name"/>
                     <label for="longin_clave">clave</label>
                     <input type="password" placeholder="CLAVE" class="input_formulario" name="longin_clave" id="longin_clave"/>

                     <input type="submit" value="ACCEDER" name="acceder_bt" class="buton_formulario input_formulario">
            </form>
        </div>
    </main>
</body>
</html>