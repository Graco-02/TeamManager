<?php

if(count($_POST)>0){
    include_once("../../utilidades/conexion.php");
    include_once("../../utilidades/alerta.php");
    $accion        = $_POST['accion'];

    switch ($accion) {
     case 1://opcion 1-agregar nuevo usuario
        $jugadore_name              = $_POST["jugadore_name"];
        $jugador_lastname           = $_POST["jugador_lastname"];
        $jugador_fecha_nacimiento   = $_POST["jugador_fecha_nacimiento"];
        $identificacion             = $_POST["identificacion"];
        $jugador_direccion          = $_POST["jugador_direccion"];
        $jugador_equipo             = $_POST["jugador_equipo"];
        $ruta                       = $_POST["url_img"];
        $ruta2                      = $_POST["url_adjunto"];
        $date = date( "Y-m-d", strtotime($jugador_fecha_nacimiento) );

        set_insert_jugador($jugadore_name,$jugador_lastname,$date,$identificacion,$jugador_direccion,$jugador_equipo,$ruta,$ruta2);
        break;
     case 2:
        $jugador        = $_POST['jugador'];
        get_jugador($jugador);
      break;
     case 3:
        $jugadore_name              = $_POST["jugadore_name"];
        $jugador_lastname           = $_POST["jugador_lastname"];
        $jugador_fecha_nacimiento   = $_POST["jugador_fecha_nacimiento"];
        $identificacion             = $_POST["identificacion"];
        $jugador_direccion          = $_POST["jugador_direccion"];
        $jugador_equipo             = $_POST["jugador_equipo"];
        $ruta                       = $_POST["url_img"];
        $ruta2                      = $_POST["url_adjunto"];
        $id                         = $_POST["id"];
        $date = date( "Y-m-d", strtotime($jugador_fecha_nacimiento) );

        set_modificar_equipo($jugadore_name,$jugador_lastname,$jugador_fecha_nacimiento,$identificacion,$jugador_direccion,$jugador_equipo,$ruta,$ruta2,$id);
        break; 
      case 4:
        $cedula        = $_POST['identificacion'];
        $equipo        = $_POST['jugador_equipo'];
        get_jugadores($cedula,$equipo);
        break;  
    }
       
}


function set_insert_jugador($jugadore_name,$jugador_lastname,$jugador_fecha_nacimiento,$identificacion,$jugador_direccion,$jugador_equipo,$ruta,$ruta2 ){
    $conn = conectar();
    $sql="INSERT INTO jugadores (nombres,apellidos,identificacion,fecha_nacimiento,direccion,equipo,url_img,url_adjunto1) 
    VALUES ('$jugadore_name','$jugador_lastname','$identificacion','$jugador_fecha_nacimiento','$jugador_direccion',$jugador_equipo,'$ruta','$ruta2')";
   
    if ($conn->query($sql) == TRUE) {	
        echo  'AGREGADO CORRECTO';
    }else{
        echo 'AGREGADO INCORRECTO';
    }
}


function get_listar_jugadores_todos(){
    $conn = conectar();
    $date = date('Y-m-d');
      // Check connection
     if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
     }
 
      $sql = "SELECT id,nombres,apellidos,identificacion,fecha_nacimiento,direccion,equipo,url_img,url_adjunto1 from jugadores"; 
      $result = $conn->query($sql);
      $count=1;         
      if ($result->num_rows > 0) {
          while($row = $result->fetch_assoc() ) {
          
         $nombre                = $row["nombres"];				  
         $apellidos             = $row["apellidos"];
         $identificacion        = $row["identificacion"];
         $fecha_nacimiento      = $row["fecha_nacimiento"];
         $direccion             = $row["direccion"];
         $equipo                = $row["equipo"];
         $url_img               = $row["url_img"];
         $url_adjunto1          = $row["url_adjunto1"];
         $id                    = $row["id"];


           echo "<script> var usuario_js = '".$id."';</script>";
           echo "<tr>";
           echo "<td id='".$id."' name='fila'";
           echo 'onclick="set_seleccionar(usuario_js);">';
           echo $nombre;
           echo "</td>";
           echo "<td >$apellidos</td>";
           echo "<td >$identificacion</td>";
           echo "</tr> ";
       }		 
       
      }
    
      $conn->close();
 }


 function get_jugador($jugador){
    $conn = conectar();
      // Check connection
     if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
     }
 
     $sql = "SELECT id,nombres,apellidos,identificacion,fecha_nacimiento,direccion,equipo,url_img,url_adjunto1 from jugadores where id=$jugador"; 
 
      $result = $conn->query($sql);
      $count=1;         
      if ($result->num_rows > 0) {
          while($row = $result->fetch_assoc() ) {
          
         $jugador_array = array();    
         array_push($jugador_array,$row["id"]);
         array_push($jugador_array,$row["nombres"]);
         array_push($jugador_array,$row["apellidos"]);
         array_push($jugador_array,$row["identificacion"]);
         array_push($jugador_array,$row["fecha_nacimiento"]);
         array_push($jugador_array,$row["direccion"]);
         array_push($jugador_array,$row["equipo"]);
         array_push($jugador_array,$row["url_img"]);
         array_push($jugador_array,$row["url_adjunto1"]);

         echo json_encode($jugador_array);
       }		 
       
      }
        $conn->close();
 }
 
 function set_modificar_equipo($jugadore_name,$jugador_lastname,$jugador_fecha_nacimiento,$identificacion,$jugador_direccion,$jugador_equipo,$ruta,$ruta2,$id){
    $conn = conectar();
 
       $sql="UPDATE jugadores SET nombres='$jugadore_name',
                                  apellidos='$jugador_lastname',
                                  identificacion='$identificacion',
                                  fecha_nacimiento='$jugador_fecha_nacimiento',
                                  direccion='$jugador_direccion',
                                  equipo=$jugador_equipo,
                                  url_img='$ruta',
                                  url_adjunto1='$ruta2'

           where id =$id";
 
       if ($conn->query($sql) == TRUE) {		   
         // # Cogemos el identificador con que se ha guardado
         $id=$conn->insert_id;	
         echo  'MODIFICACION REALIZADA';
     }   else {
      echo "Error Modificacion: " . $sql . "<br>" . $conn->error;
     }
 }


 function set_insert_usuario($usuario_names,$usuario_lastnames,$usuario_identificacion,$usuario_name_acces,$usuario_clave,$usuario_tipo,$url_img){
  $date = date('Y-m-d');
  $conn = conectar();
           //   # Agregamos la LOS DATOS DE LA PERSONA a la base de datos
    $sql="INSERT INTO usu001 (nombres,apellidos,identificacion,usuario,clave,tipo,fecalta,url_img) 
    VALUES ('$usuario_names','$usuario_lastnames','$usuario_identificacion','$usuario_name_acces','$usuario_clave',$usuario_tipo,'$date','$url_img')";
   
    if ($conn->query($sql) == TRUE) {	
       echo  'AGREGADO CORRECTO';
    }
}

function get_listar_equipos_select(){
  $conn = conectar();
  $date = date('Y-m-d');
    // Check connection
   if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
   }

    $sql = "SELECT id,nombre,municipio,sector,url_logo,estado from equipos"; 
    $result = $conn->query($sql);
    $count=1;         
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc() ) {
        
           $nombre        = $row["nombre"];				
           $id            = $row["id"];
          echo "<option value=".$id.">".$nombre."</option>";
        }		 
     
    }
  
    $conn->close();
}

function get_jugadores($cedula,$equipo){
  $conn = conectar();
    // Check connection
   if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
   }

   $sql = "SELECT id,nombres,apellidos,identificacion,fecha_nacimiento,direccion,equipo,url_img,url_adjunto1 
   from jugadores where identificacion like '%".$cedula."%' " ; 

    $result = $conn->query($sql);
    $count=1;         
    $jugadores_array = array();   
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc() ) {
        
       $jugador_array = array();    
       array_push($jugador_array,$row["id"]);
       array_push($jugador_array,$row["nombres"]);
       array_push($jugador_array,$row["apellidos"]);
       array_push($jugador_array,$row["identificacion"]);
       array_push($jugador_array,$row["fecha_nacimiento"]);
       array_push($jugador_array,$row["direccion"]);
       array_push($jugador_array,$row["equipo"]);
       array_push($jugador_array,$row["url_img"]);
       array_push($jugador_array,$row["url_adjunto1"]);

       array_push($jugadores_array,$jugador_array);
     }		 
        echo json_encode($jugadores_array);
    }
      $conn->close();
}

?>