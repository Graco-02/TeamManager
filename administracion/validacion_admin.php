<?php
function set_validar_logging($user_name,$user_clave)
{
    $validacion = TRUE;
    //compruebo que los caracteres sean los permitidos
    $permitidos = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
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
                        $conn->close();
                        $_SESSION['admin_user'] = $row["usuario"];
                        if($row["tipo"]==0){
                            header("Location:administracion_admin_index.php");    
                        }else{
                            header("Location:../padron.php");    
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

?>