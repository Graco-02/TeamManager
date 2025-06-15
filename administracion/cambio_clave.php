<?php
    require_once("../utilidades/conexion.php");
    require_once("../utilidades/alerta.php");
    require_once("validacion_admin.php");

    session_start();

    if(count($_POST)>0){
        if (isset($_POST['longin_name']) && strlen($_POST['longin_name']) >= 5) {
            if (isset($_POST['longin_clave']) && strlen($_POST['longin_clave']) >= 4) {
                if(set_validar_caracteres($_POST['longin_name'],$_POST['longin_clave'])  && ($_POST['longin_clave'] != $_POST['longin_name'])){
                    if(set_modificar_clave($_POST['longin_name'],$_POST['longin_clave'])){
                        alert("Modificacion realizada");
                        header("Location:../index.php");    
                    }else{
                        alert("no se pudo realizar la modificacion");
                    }
                }else{
                    alert("no se permiten caracteres ilegales, ademas de que la clave y el usuario no pueden ser iguales");
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
              <a href="../index.php"><img src="../imagenes/logo-abasado.png" alt="header_logo" id="header_img"/></a>  
                      <div class="logo_name">
                          <p>asociacion de baloncesto de santo domingo</p>
                      </div>
              </div>
        </div>
    </header>

    <main>
        <div class="main_contenido_2">
            <h1>cambio de credenciales</h1>
            <form action="" method="post" class="loging_formulario">
                     <label for="longin_name">usuario</label>
                     <input type="text" placeholder="FULANITO" class="input_formulario" name="longin_name" id="longin_name"/>
                     <label for="longin_clave">clave</label>
                     <input type="password" placeholder="CLAVE" class="input_formulario" name="longin_clave" id="longin_clave"/>

                     <input type="submit" value="CAMBIAR" name="acceder_bt" class="buton_formulario input_formulario">
            </form>
        </div>
    </main>
</body>
</html>