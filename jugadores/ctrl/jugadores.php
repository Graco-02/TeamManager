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
        $jugador_estatus            = $_POST["jugador_estatus"];
        $jugador_telefono           = $_POST["jugador_telefono"];
        $jugador_centro             = $_POST["jugador_centro"];
        $jugador_evento             = $_POST["jugador_evento"];
        $date = date( "Y-m-d", strtotime($jugador_fecha_nacimiento) );

        set_insert_jugador($jugadore_name,$jugador_lastname,$date,$identificacion,$jugador_direccion,$jugador_equipo,$ruta,$ruta2,$jugador_estatus,$jugador_telefono,$jugador_centro,$jugador_evento);
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
        $jugador_estatus            = $_POST["jugador_estatus"];
        $jugador_telefono           = $_POST["jugador_telefono"];
        $jugador_centro             = $_POST["jugador_centro"];
        $jugador_evento             = $_POST["jugador_evento"];
        $date = date( "Y-m-d", strtotime($jugador_fecha_nacimiento) );

        set_modificar_jugador($jugadore_name,$jugador_lastname,$jugador_fecha_nacimiento,$identificacion,$jugador_direccion,$jugador_equipo,$ruta,$ruta2,$id,$jugador_estatus,$jugador_telefono,$jugador_centro,$jugador_evento);
        break; 
      case 4:
        $cedula        = $_POST['identificacion'];
        $equipo        = $_POST['jugador_equipo'];
        get_jugadores($cedula,$equipo);
        break;  
    }
       
}


function set_insert_jugador($jugadore_name,$jugador_lastname,$jugador_fecha_nacimiento,$identificacion,$jugador_direccion,$jugador_equipo,$ruta,$ruta2,$jugador_estatus,$jugador_telefono,$jugador_centro,$jugador_evento ){
    $conn = conectar();
    $sql="INSERT INTO jugadores (nombres,apellidos,identificacion,fecha_nacimiento,direccion,equipo,url_img,url_adjunto1,estatus,telefono,centro) 
    VALUES ('$jugadore_name','$jugador_lastname','$identificacion','$jugador_fecha_nacimiento','$jugador_direccion',$jugador_equipo,'$ruta','$ruta2','$jugador_estatus','$jugador_telefono','$jugador_centro')";
   
    if ($conn->query($sql) == TRUE) {
      $id=$conn->insert_id;		
      if(set_agregar_relacion_equipo_evento($id,$jugador_equipo,$jugador_evento)){
        echo  'AGREGADO CORRECTO';
      }else{
        echo  'ERROR EN AGREGADO';
      }
    }else{
        echo 'AGREGADO INCORRECTO';
    }
}


function get_listar_jugadores_todos($id_equipo){
    $conn = conectar();
    $date = date('Y-m-d');
      // Check connection
     if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
     }
      
      $sql ="";
      if($id_equipo == 0){
        $sql = "SELECT id,nombres,apellidos,identificacion,fecha_nacimiento,direccion,equipo,url_img,url_adjunto1,estatus,telefono,centro from jugadores"; 
      }else{
        $sql = "SELECT id,nombres,apellidos,identificacion,fecha_nacimiento,direccion,equipo,url_img,url_adjunto1,estatus,telefono,centro from jugadores where equipo=$id_equipo"; 
      }


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
         $estatus               = $row["estatus"];
         $telefono              = $row["telefono"];
         $centro                = $row["centro"];


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
 
     $sql = "SELECT id,nombres,apellidos,identificacion,fecha_nacimiento,direccion,equipo,url_img,url_adjunto1,estatus,telefono,centro from jugadores where id=$jugador"; 
 
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
         array_push($jugador_array,$row["estatus"]);
         array_push($jugador_array,$row["telefono"]);
         array_push($jugador_array,$row["centro"]);

         echo json_encode($jugador_array);
       }		 
       
      }
        $conn->close();
 }
 
 function set_modificar_jugador($jugadore_name,$jugador_lastname,$jugador_fecha_nacimiento,$identificacion,$jugador_direccion,$jugador_equipo,$ruta,$ruta2,$id,$jugador_estatus,$jugador_telefono,$jugador_centro,$jugador_evento){
    $conn = conectar();
 
       $sql="UPDATE jugadores SET nombres='$jugadore_name',
                                  apellidos='$jugador_lastname',
                                  identificacion='$identificacion',
                                  fecha_nacimiento='$jugador_fecha_nacimiento',
                                  direccion='$jugador_direccion',
                                  equipo=$jugador_equipo,
                                  url_img='$ruta',
                                  url_adjunto1='$ruta2',
                                  estatus='$jugador_estatus',
                                  telefono='$jugador_telefono',
                                  centro='$jugador_centro'


           where id =$id";
 
       if ($conn->query($sql) == TRUE) {		   
         // # Cogemos el identificador con que se ha guardado
        // $id=$conn->insert_id;	
         if(set_agregar_relacion_equipo_evento($id,$jugador_equipo,$jugador_evento)){
           echo  'MODIFICACION REALIZADA';
         }else{
           echo  'ERROR EN MODIFICACION';
         }


     }   else {
      echo "Error Modificacion: " . $sql . "<br>" . $conn->error;
     }
 }

function set_agregar_relacion_equipo_evento($jugador,$equipo,$evento){
  $date = date('Y-m-d');
  $validacion=TRUE;
  $conn = conectar();
           //   # Agregamos la LOS DATOS DE LA PERSONA a la base de datos
    $sql="INSERT IGNORE  INTO relacion_equipo_jugador_evento (equipo,evento,jugador) 
    VALUES ($equipo,$evento,$jugador)";
   
    if ($conn->query($sql) == TRUE) {	
      //echo($jugador.$equipo.$evento);
    }else{
      $validacion=false;
    }
       $conn->close();
       return $validacion;
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
       $conn->close();
}

function get_listar_equipos_select($equipo){
  $conn = conectar();
  $date = date('Y-m-d');
    // Check connection
   if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
   }
    $sql = ""; 
    if($equipo==0){
      $sql = "SELECT id,nombre,municipio,sector,url_logo,estado from equipos";
    }else{
      $sql = "SELECT id,nombre,municipio,sector,url_logo,estado from equipos where id=$equipo"; 
    } 
    
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

   $sql = "SELECT id,nombres,apellidos,identificacion,fecha_nacimiento,direccion,equipo,url_img,url_adjunto1,estatus,telefono,centro 
   from jugadores where (identificacion like '%".$cedula."%' AND equipo = $equipo)  OR (equipo = $equipo)" ; 

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
       array_push($jugador_array,$row["estatus"]);
       array_push($jugador_array,$row["telefono"]);
       array_push($jugador_array,$row["centro"]);

       array_push($jugadores_array,$jugador_array);
     }		 
        echo json_encode($jugadores_array);
    }
      $conn->close();
}

function get_listar_eventos_jugador($equipo,$jugador){
  $conn = conectar();
  $date = date('Y-m-d');
    // Check connection
   if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
   }

   $sql ="";
   if($jugador!=0){
    $sql = "SELECT id,nombre,cantidad_equipos,cantidad_jugadores_equipo,descripcion,fecha_incio from eventos 
    where (id,$equipo) in (select evento,equipo from relacion_equipo_evento) 
    and (id,$equipo,$jugador) not in (select evento,equipo,jugador from relacion_equipo_jugador_evento)"; 
   }else{
    if($equipo!=0){
      $sql = "SELECT id,nombre,cantidad_equipos,cantidad_jugadores_equipo,descripcion,fecha_incio from eventos 
      where (id,$equipo) in (select evento,equipo from relacion_equipo_evento) "; 
    }else{
      $sql = "SELECT id,nombre,cantidad_equipos,cantidad_jugadores_equipo,descripcion,fecha_incio from eventos  ";  
    }

   }


    $result = $conn->query($sql);
    $count=1;         
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc() ) {
        
       $nombre = $row["nombre"];				  
       $cantidad_equipos = $row["cantidad_equipos"];
       $cantidad_jugadores_equipo   = $row["cantidad_jugadores_equipo"];
       $descripcion     = $row["descripcion"];
       $fecha_incio      = $row["fecha_incio"];
       $id      = $row["id"];


       $diff = strtotime($fecha_incio) - strtotime($date);
       $dias = $diff/(60*60*24);

         if($dias>0){
            $nombre        = $row["nombre"];				
            $id            = $row["id"];
            echo "<option value=".$id.">".$nombre."</option>";
         }

         echo "</tr> ";
     }		 
     
    }
  
    $conn->close();
}

?>