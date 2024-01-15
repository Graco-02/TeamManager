 <?php
   if(count($_POST)>0){
       include_once("../../utilidades/conexion.php");
       include_once("../../utilidades/alerta.php");
       $accion                           = $_POST['accion'];

       switch ($accion) {
        case 1://opcion 1-agregar nuevo usuario
          $usuario_names                    = $_POST['usuario_names'];
          $usuario_lastnames                = $_POST['usuario_lastnames'];
          $usuario_identificacion           = $_POST['usuario_identificacion'];
          $usuario_name_acces               = $_POST['usuario_name_acces'];
          $usuario_clave                    = $_POST['usuario_clave'];
          $usuario_tipo                     = $_POST['usuario_tipo'];
          $url_img                          = $_POST['$url_img'];
          set_insert($usuario_names,$usuario_lastnames,$usuario_identificacion,$usuario_name_acces,$usuario_clave,$usuario_tipo,$url_img);
        break;
        case 2:
          $usuario    = $_POST['usuario'];
          get_usuario($usuario);
         break;
       }
          
   }
   
function set_insert($usuario_names,$usuario_lastnames,$usuario_identificacion,$usuario_name_acces,$usuario_clave,$usuario_tipo,$url_img){
    $date = date('Y-m-d');
    $conn = conectar();
             //   # Agregamos la LOS DATOS DE LA PERSONA a la base de datos
     if(get_validar_existencia($usuario_name_acces)==false){
      $sql="INSERT INTO usu001 (nombres,apellidos,identificacion,usuario,clave,tipo,fecalta,url_img) 
      VALUES ('$usuario_names','$usuario_lastnames','$usuario_identificacion','$usuario_name_acces','$usuario_clave',$usuario_tipo,'$date','$url_img')";
     
      if ($conn->query($sql) == TRUE) {	
         echo  'AGREGADO CORRECTO';
      }
     }else{
      set_modificar($usuario_names,$usuario_lastnames,$usuario_identificacion,$usuario_name_acces,$usuario_clave,$usuario_tipo);
     }
}


function get_listar_usuarios_todos(){
   $conn = conectar();
     // Check connection
    if ($conn->connect_error) {
         die("Connection failed: " . $conn->connect_error);
    }

     $sql = "SELECT usuario,clave,tipo,nombres,apellidos,identificacion,municipio,sector,calle,lugar,fecalta,estado from usu001"; 
     $result = $conn->query($sql);
     $count=1;         
     if ($result->num_rows > 0) {
         while($row = $result->fetch_assoc() ) {
         
        $nombres_c = $row["nombres"].' , '.$row["apellidos"];				  
        $identificacion = $row["identificacion"];
        $usuario   = $row["usuario"];
        $clave     = $row["clave"];
        $tipo      = $row["tipo"];
        $nombres   = $row["nombres"];
        $apellidos = $row["apellidos"];
        $municipio = $row["municipio"];
        $sector    = $row["sector"];
        $calle     = $row["calle"];
        $lugar     = $row["lugar"];
        $fecalta   = $row["fecalta"];
        $estado    = $row["estado"];
          echo "<script> var usuario_js = '".$usuario."';</script>";


          echo "<tr>";
          echo "<td id='".$usuario."' name='fila'";
          echo 'onclick="set_seleccionar(usuario_js);">';
          echo $nombres_c;
          echo "</td>";
          echo "<td >$identificacion</td>";
          echo "</tr> ";
      }		 
      
     }
   
     $conn->close();
}

function get_usuario($usuario){
   $conn = conectar();
     // Check connection
    if ($conn->connect_error) {
         die("Connection failed: " . $conn->connect_error);
    }

     $sql = "SELECT usuario,clave,tipo,nombres,apellidos,identificacion,municipio,sector,calle,lugar,fecalta,estado,url_img
     from usu001 where usuario ='$usuario'"; 

     $result = $conn->query($sql);
     $count=1;         
     if ($result->num_rows > 0) {
         while($row = $result->fetch_assoc() ) {
         

        $usuario_array = array();    
        array_push($usuario_array,$row["nombres"]);
        array_push($usuario_array,$row["apellidos"]);
        array_push($usuario_array,$row["identificacion"]);
        array_push($usuario_array,$row["usuario"]);
        array_push($usuario_array,$row["clave"]);
        array_push($usuario_array,$row["tipo"]);
        array_push($usuario_array,$row["url_img"]);
        array_push($usuario_array,$row["municipio"]);
        array_push($usuario_array,$row["sector"]);
        array_push($usuario_array,$row["calle"]);
        array_push($usuario_array,$row["lugar"]);
        array_push($usuario_array,$row["fecalta"]);
        array_push($usuario_array,$row["estado"]);


        echo json_encode($usuario_array);
      }		 
      
     }
   
     $conn->close();
}

function set_modificar($usuario_names,$usuario_lastnames,$usuario_identificacion,$usuario_name_acces,$usuario_clave,$usuario_tipo){
   $conn = conectar();

      $sql="UPDATE usu001 SET identificacion='$usuario_identificacion',
                              apellidos='$usuario_lastnames',
                              nombres='$usuario_names',
                              tipo=$usuario_tipo,
                              clave='$usuario_clave'
          where usuario ='$usuario_name_acces'";

      if ($conn->query($sql) == TRUE) {		   
        // # Cogemos el identificador con que se ha guardado
        $id=$conn->insert_id;	
        echo  'MODIFICACION REALIZADA';
    }   else {
     echo "Error Modificacion: " . $sql . "<br>" . $conn->error;
    }
}


function get_validar_existencia($usuario){
   $conn = conectar();
     // Check connection
    if ($conn->connect_error) {
         die("Connection failed: " . $conn->connect_error);
    }

     $sql = "SELECT usuario,clave,tipo,nombres,apellidos,identificacion,municipio,sector,calle,lugar,fecalta,estado
     from usu001 where usuario ='$usuario'"; 

     $result = $conn->query($sql);
     $count=1;         
     $validacion = false;

     if ($result->num_rows > 0) {
         while($row = $result->fetch_assoc() ) {
            $validacion = true;
         }		 
      
     }
   
     $conn->close();
     return $validacion;
}

?>