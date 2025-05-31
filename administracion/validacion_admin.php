<?php
function set_validar_logging($user_name,$user_clave){
    $validacion = TRUE;
    //compruebo que los caracteres sean los permitidos
    set_validar_caracteres($user_name,$user_clave);

    if ($validacion  === TRUE ) {
        $hash_clave = hash('sha256', $user_clave);
        $conn = conectar();
        // Check connection
        if ($conn->connect_error) {
            $validacion=FALSE; 
            die("Connection failed: " . $conn->connect_error);
        }else{
            $sql = "SELECT  usuario,clave,tipo FROM usu001 where usuario='$user_name'"; 
            $result = $conn->query($sql);
            
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    if($hash_clave == $row["clave"] || $row["clave"] == $user_clave){
                        $_SESSION['user_type'] = $row["tipo"];
                        $_SESSION['usuario_logeado'] = $row["usuario"];
                        $_SESSION['admin_id'] = $row["id"];

                        if($user_clave != $user_name){
                            $conn->close();
                            get_equipo_validacion($_SESSION['usuario_logeado']);
                            if($row["tipo"]==0){
                                header("Location:administracion/administracion_admin_index.php");    
                            }else{
                                header("Location:equipos/adsministracion_equipos_restringida.php");    
                            }
                        }else{
                            alert('el usuario y la clave son iguales deben ser cambiadas');
                            header("Location:administracion/cambio_clave.php");    
                            $validacion=TRUE; 
                        }
                    } else {
                        $validacion=FALSE; 
                    }
                }			 
                
            } else {
               $validacion=FALSE; 
            }
    
            $conn->close();
        }
    }
    return $validacion;
}


function set_validar_caracteres($user_name,$user_clave){
    $validacion = TRUE;
    $permitidos = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 ";
    for ($i=0; $i<strlen($user_name); $i++){
       if (strpos($permitidos, substr($user_name,$i,1))===false){
          echo 'NO SE ADMITEN CARATERES ILEGALES';
          $validacion = FALSE;
       }
    }

    for ($i=0; $i<strlen($user_clave); $i++){
        if (strpos($permitidos, substr($user_clave,$i,1))===false){
           echo 'NO SE ADMITEN CARATERES ILEGALES';
           $validacion = FALSE;
        }
     }

     return $validacion;
}

function set_modificar_clave($usuario_names,$usuario_clave){
    $hash_clave = hash('sha256', $usuario_clave);
    $conn = conectar();
  
       $sql="UPDATE usu001 SET clave='$hash_clave'
           where usuario ='$usuario_names'";
  
       if ($conn->query($sql) == TRUE) {		   
         return true;
       }   else {
         alert("Error Modificacion: " . $sql . "<br>" . $conn->error);
         return false;
       }
       $conn->close();
}


function get_equipo_validacion($equipo){
    $conn = conectar();
      // Check connection
     if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
     }
 
      $sql = "SELECT id,nombre,municipio,sector,url_logo,estado from equipos where nombre='$equipo'"; 
 
      $result = $conn->query($sql);
      $count=1;         
      if ($result->num_rows > 0) {
          while($row = $result->fetch_assoc() ) {  
             $_SESSION['admin_id'] = $row["id"];
          }		   
      }
        $conn->close();
 }

?>