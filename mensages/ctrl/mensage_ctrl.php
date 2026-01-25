<?php

if(count($_POST)>0){
    session_start();
    $usuario_logeado = $_SESSION['usuario_logeado'];
    $user_type = $_SESSION['user_type'];
    include_once("../../utilidades/conexion.php");
    include_once("../../utilidades/alerta.php");
    $accion        = $_POST['accion'];
 
    switch ($accion) {
        case 1:
            # code... para agregar nuevo mensage
            $usuario = $_POST['usuario'];;
            $mensage = $_POST['mensage'];
            $fecha_ini = $_POST['fecha_ini'];
            $fecha_fin = $_POST['fecha_fin'];
            
            set_insertar_mensage($usuario,$mensage,$fecha_ini,$fecha_fin);
            break;
        case 2:
            get_listar_mensages();
            break;        
        default:
            # code...
            break;
    }
 
}

function set_insertar_mensage($usuario,$mensage,$fecha_ini,$fecha_fin){
  $date = date("Y-m-d h:i:s");

  $conn = conectar();
           //   # Agregamos la LOS DATOS DE LA PERSONA a la base de datos
    $sql="INSERT INTO mensage (usuario,mensage,fecha_alta,fecha_ini,fecha_fin) 
    VALUES ('$usuario','$mensage','$date','$fecha_ini','$fecha_fin')";
   
    if ($conn->query($sql) == TRUE) {	
       echo  'AGREGADO CORRECTO';
    }
  $conn->close();
}


function get_listar_usuarios_historico(){
  $conn = conectar();
  $date = date('Y-m-d');
    // Check connection
   if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
   }

   $sql = "SELECT usuario from usu001 where tipo = 1"; 

    $result = $conn->query($sql);
    $count=1;         
    if ($result->num_rows > 0) {
         echo "<option value='TODOS'>TODOS</option>";
        while($row = $result->fetch_assoc() ) {		
         //por algun motivo que desconozco el espacio corta el mensaje en el combo		
          $nombre = str_replace(" ", "_", $row["usuario"]);  
          echo "<option value=".$nombre.">".$nombre."</option>";
        }		 
    }
  
    $conn->close();
}

function get_listar_mensages(){
  $conn = conectar();
  $date = date('Y-m-d');
    // Check connection
   if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
   }

   $sql = "SELECT usuario,mensage,fecha_alta,fecha_ini,fecha_fin,estado from mensage "; 

    $result = $conn->query($sql);
    $count=0;
    $mensages_array = array();           
    if ($result->num_rows > 0) {

        while($row = $result->fetch_assoc() ) {		
          $mensage_array = array();   
          array_push($mensage_array,$row['usuario']);
          array_push($mensage_array,$row['mensage']);
          array_push($mensage_array,$row['fecha_alta']);
          array_push($mensage_array,$row['fecha_ini']);
          array_push($mensage_array,$row['fecha_fin']);
          array_push($mensage_array,$row['estado']);

          array_push($mensages_array,$mensage_array);
        }		 
    }
  
    $conn->close();
    echo json_encode($mensages_array);
}

?>