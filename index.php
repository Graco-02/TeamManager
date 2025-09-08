<?php
    require_once("utilidades/conexion.php");
    require_once("utilidades/alerta.php");
    require_once("administracion/validacion_admin.php");

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
    <link rel="stylesheet" href="css/index.css">
    <title>acceso_admin</title>
</head>
<body>
    <header>
        <img src="imagenes/logo-abasado.png" alt="header_logo" id="header_img"/>  
    </header>
    <main>
        <div class="contenedor_centro">
            <span id="header_formulario">asociacion de baloncesto de santo domingo</span>
            <div class="main_contenido">
                <img src="imagenes/logo user.png" alt="header_logo" id="login_img"/>  
                <form action="" method="post" class="loging_formulario">
                         <label for="longin_name">usuario</label>
                         <input type="text" placeholder="USUARIO" class="input_formulario" name="longin_name" id="longin_name"/>
                         <label for="longin_clave">clave</label>
                         <input type="password" placeholder="CLAVE" class="input_formulario" name="longin_clave" id="longin_clave"/>

                         <input type="submit" value="ACCEDER" name="acceder_bt" class="buton_formulario input_formulario">
                </form>
            </div>
        </div>
    </main>
</body>
</html>