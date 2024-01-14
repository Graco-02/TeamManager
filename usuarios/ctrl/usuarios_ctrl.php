 <?php
   if(count($_POST)>0){
       include_once("../../utilidades/conexion.php");
       include_once("../../utilidades/alerta.php");

       $usuario_names                    = $_POST['usuario_names'];
       $usuario_lastnames                = $_POST['usuario_lastnames'];
       $usuario_identificacion           = $_POST['usuario_identificacion'];
       $usuario_name_acces               = $_POST['usuario_name_acces'];
       $usuario_clave                    = $_POST['usuario_clave'];
       $usuario_tipo                     = $_POST['usuario_tipo'];
       $accion                           = $_POST['accion'];

       switch ($accion) {
        case 1://opcion 1-agregar nuevo usuario
          set_insert($usuario_names,$usuario_lastnames,$usuario_identificacion,$usuario_name_acces,$usuario_clave,$usuario_tipo);
        break;
       }
          
   }
   
function set_insert($usuario_names,$usuario_lastnames,$usuario_identificacion,$usuario_name_acces,$usuario_clave,$usuario_tipo){
    $date = date('Y-m-d');
    $conn = conectar();
             //   # Agregamos la LOS DATOS DE LA PERSONA a la base de datos
     $sql="INSERT INTO usu001 (nombres,apellidos,identificacion,usuario,clave,tipo,fecalta) 
     VALUES ('$usuario_names','$usuario_lastnames','$usuario_identificacion','$usuario_name_acces','$usuario_clave',$usuario_tipo,'$date')";
    
     if ($conn->query($sql) == TRUE) {	
        alert('AGREGADO CORRECTO');
     }   else {
        echo "Error: " . $sql . "<br>" . $conn->error;
     }
}
?>