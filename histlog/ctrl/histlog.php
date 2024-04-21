<?php

if(count($_POST)>0){
    session_start();
    $usuario_logeado = $_SESSION['usuario_logeado'];
    $user_type = $_SESSION['user_type'];
    include_once("../../utilidades/conexion.php");
    include_once("../../utilidades/alerta.php");
    $accion        = $_POST['accion'];


    switch ($accion) {
     case 1://opcion 1-agregar nuevo historico
        $usuario       = $_POST['usuario'];  
        $accion_modulo  = $_POST['accion_modulo']; 
        $regant        = $_POST['regant'];  
        $regnew        = $_POST['regnew'];  
        $modulo        = $_POST['modulo'];   
        set_insertar_accion($usuario_logeado,$accion_modulo,$modulo,$regant,$regnew);
       break;
     case 2:
      $usuario       = $_POST['usuario'];  
      $fecha1        = $_POST['fecha1']; 
      $fecha2        = $_POST['fecha2'];  
      get_listar_historico($usuario,$fecha1,$fecha2);
      break;
     case 3:
       break; 
      case 4:
        break;  
    }    
}



function set_insertar_accion($usuario,$accion_modulo,$modulo,$regant,$regnew){
  $date = date("Y-m-d h:i:s");

  $conn = conectar();
           //   # Agregamos la LOS DATOS DE LA PERSONA a la base de datos
    $sql="INSERT INTO histori_log (usuario,fecha,accion,modulo,regant,regnew) 
    VALUES ('$usuario','$date','$accion_modulo','$modulo','$regant','$regnew')";
   
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

   $sql = "SELECT usuario from usu001"; 

    $result = $conn->query($sql);
    $count=1;         
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc() ) {
          $nombre = $row["usuario"];				  
          echo "<option value=".$nombre.">".$nombre."</option>";
        }		 
    }
  
    $conn->close();
}

function get_listar_historico($usuario,$fecha,$fecha2){
  $conn = conectar();
    // Check connection
   if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
   }


      
    $sql = "SELECT usuario,fecha,accion,modulo,regant,regnew 
            FROM histori_log 
            WHERE  usuario = "."'".$usuario."'"." AND SUBSTR(fecha,1,10) BETWEEN "."'".$fecha."'"." AND "."'".$fecha2."'"
  ; 

    $historico_lista_array = array();

    $result = $conn->query($sql);
    $count=0;      
    if ($result->num_rows > 0) {
      while($row = $result->fetch_assoc() ) {
       $historico_array = array();    
       array_push($historico_array,$row["usuario"]);
       array_push($historico_array,$row["fecha"]);
       array_push($historico_array,$row["accion"]);
       array_push($historico_array,$row["modulo"]);
       array_push($historico_array,$row["regant"]);
       array_push($historico_array,$row["regnew"]);
       array_push($historico_lista_array,$historico_array);
     }		 
      echo json_encode($historico_lista_array);
    }
  
    $conn->close();
}


?>