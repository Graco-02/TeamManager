<?php

if(count($_POST)>0){
    include_once("../utilidades/conexion.php");
    include_once("../utilidades/alerta.php");
    $accion  = $_POST['accion'];

    switch ($accion) {
     case 1://opcion 1-agregar nuevo
       $usuario_names                    = $_POST['usuario_names'];
       $usuario_lastnames                = $_POST['usuario_lastnames'];
       $usuario_identificacion           = $_POST['usuario_identificacion'];
       $usuario_colegio                  = $_POST['usuario_colegio'];
       $usuario_colegio_direccion        = $_POST['usuario_colegio_ubicacion'];
       $usuario_direccion                = $_POST['usuario_direccion'];
       $url_img                          = $_POST['url_img'];
       set_insert($usuario_names,$usuario_lastnames,$usuario_identificacion,$usuario_colegio,$usuario_colegio_direccion,$usuario_direccion,$url_img);
     break;
     case 2:
       $usuario    = $_POST['usuario'];
       get_persona($usuario);
      break;
    }
}


function set_insert($usuario_names,$usuario_lastnames,$usuario_identificacion,$colegio,$ubicacion_colegio,$direccion,$url_img){
    $date = date('Y-m-d');
    $conn = conectar();
             //   # Agregamos la LOS DATOS DE LA PERSONA a la base de datos
     if(get_validar_existencia($usuario_identificacion)==false){
      $sql="INSERT INTO padron (nombres,apellidos,identificacion,colegio,ubicacion_colegio,direccion,url_img) 
      VALUES ('$usuario_names','$usuario_lastnames','$usuario_identificacion','$colegio','$ubicacion_colegio','$direccion','$url_img')";
     
      if ($conn->query($sql) == TRUE) {	
         echo  'AGREGADO CORRECTO';
      }
     }else{
       set_modificar($usuario_names,$usuario_lastnames,$usuario_identificacion,$colegio,$ubicacion_colegio,$direccion,$url_img);
     }
}


function set_modificar($usuario_names,$usuario_lastnames,$usuario_identificacion,$colegio,$ubicacion_colegio,$direccion,$url_img){
    $conn = conectar();
 
       $sql="UPDATE padron SET apellidos='$usuario_lastnames',
                               nombres='$usuario_names',
                               colegio='$colegio',
                               ubicacion_colegio='$ubicacion_colegio',
                               direccion='$direccion',
                               url_img='$url_img'
           where identificacion ='$usuario_identificacion'";
 
       if ($conn->query($sql) == TRUE) {		   
         // # Cogemos el identificador con que se ha guardado
         $id=$conn->insert_id;	
         echo  'MODIFICACION REALIZADA';
     }   else {
       echo "Error Modificacion: " . $sql . "<br>" . $conn->error;
     }
 }

 function get_validar_existencia($identificacion){
    $conn = conectar();
      // Check connection
     if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
     }
 
      $sql = "SELECT * from padron where identificacion ='$identificacion'"; 
 
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


 function get_listar_usuarios_todos(){
    $conn = conectar();
      // Check connection
     if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
     }
 
      $sql = "SELECT nombres,apellidos,identificacion,colegio,ubicacion_colegio,direccion,url_img from padron"; 
      $result = $conn->query($sql);
      $count=1;         
      if ($result->num_rows > 0) {
          while($row = $result->fetch_assoc() ) {
          
         $nombres_c = $row["nombres"].' , '.$row["apellidos"];				  
         $identificacion = $row["identificacion"];
         $colegio   = $row["colegio"];
         $colegio_direccion     = $row["ubicacion_colegio"];
         $direccion      = $row["direccion"];
         $url_img   = $row["url_img"];
         
           echo "<script> var usuario_js = '".$identificacion."';</script>";
 
           echo "<tr>";
           echo "<td id='".$identificacion."' name='fila'";
           echo 'onclick="set_seleccionar(usuario_js);">';
           echo $nombres_c;
           echo "</td>";
           echo "<td >$identificacion</td>";
           echo "<td >$colegio</td>";
           echo "</tr> ";
       }		 
       
      }
    
      $conn->close();
 }
 
 function get_persona($identificacion){
    $conn = conectar();
      // Check connection
     if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
     }
 
      $sql = "SELECT nombres,apellidos,identificacion,colegio,ubicacion_colegio,direccion,url_img
      from padron where identificacion ='$identificacion'"; 
 
      $result = $conn->query($sql);
      $count=1;         
      if ($result->num_rows > 0) {
          while($row = $result->fetch_assoc() ) {
          
         $usuario_array = array();    
         array_push($usuario_array,$row["nombres"]);
         array_push($usuario_array,$row["apellidos"]);
         array_push($usuario_array,$row["identificacion"]);
         array_push($usuario_array,$row["colegio"]);
         array_push($usuario_array,$row["ubicacion_colegio"]);
         array_push($usuario_array,$row["direccion"]);
         array_push($usuario_array,$row["url_img"]);

         echo json_encode($usuario_array);
       }		 
       
      }
    
      $conn->close();
 }

?>