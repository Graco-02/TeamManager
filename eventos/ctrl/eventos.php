<?php

if(count($_POST)>0){
    include_once("../../utilidades/conexion.php");
    include_once("../../utilidades/alerta.php");
    $accion        = $_POST['accion'];

    switch ($accion) {
     case 1://opcion 1-agregar nuevo usuario
        $evento_name              = $_POST["evento_name"];
        $evento_num_equipos       = $_POST["evento_num_equipos"];
        $evento_num_jug_equipos   = $_POST["evento_num_jug_equipos"];
        $evento_descripcion       = $_POST["evento_descripcion"];
        $evento_fecha_inicio      = $_POST["evento_fecha_inicio"];
        $date = date( "Y-m-d", strtotime($evento_fecha_inicio) );

        set_insert($evento_name, $evento_num_equipos,$evento_num_jug_equipos,$evento_descripcion,$date );
        break;
     case 2:
        $evento        = $_POST['evento'];
        get_evento($evento);
      break;
     case 3:
        $evento_name              = $_POST["evento_name"];
        $evento_num_equipos       = $_POST["evento_num_equipos"];
        $evento_num_jug_equipos   = $_POST["evento_num_jug_equipos"];
        $evento_descripcion       = $_POST["evento_descripcion"];
        $evento_fecha_inicio      = $_POST["evento_fecha_inicio"];
        $date = date( "Y-m-d", strtotime($evento_fecha_inicio) );
        $id=$_POST["id"];
        set_modificar($evento_name, $evento_num_equipos,$evento_num_jug_equipos,$evento_descripcion,$date,$id);
        break; 
    }
       
}


function set_insert($evento_name, $evento_num_equipos,$evento_num_jug_equipos,$evento_descripcion,$evento_fecha_inicio ){
    $conn = conectar();
    $sql="INSERT INTO eventos (nombre,cantidad_equipos,cantidad_jugadores_equipo,descripcion,fecha_incio) 
    VALUES ('$evento_name', $evento_num_equipos,$evento_num_jug_equipos,'$evento_descripcion','$evento_fecha_inicio')";
   
    if ($conn->query($sql) == TRUE) {	
       echo  'AGREGADO CORRECTO';
    }else{
        echo 'AGREGADO INCORRECTO';
    }
}


function get_listar_eventos_todos(){
    $conn = conectar();
    $date = date('Y-m-d');
      // Check connection
     if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
     }
 
      $sql = "SELECT id,nombre,cantidad_equipos,cantidad_jugadores_equipo,descripcion,fecha_incio from eventos"; 
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

           echo "<script> var usuario_js = '".$id."';</script>";
           echo "<tr>";
           echo "<td id='".$id."' name='fila'";
           echo 'onclick="set_seleccionar(usuario_js);">';
           echo $nombre;
           echo "</td>";
           echo "<td >$fecha_incio</td>";

           if($dias>0){
             echo "<td >$dias</td>";
           }else{
            echo "<td >".'Ya ha Iniciado'."</td>";
           }

           
           echo "</tr> ";
       }		 
       
      }
    
      $conn->close();
 }


 function get_evento($evento){
    $conn = conectar();
      // Check connection
     if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
     }
 
      $sql = "SELECT id,nombre,cantidad_equipos,cantidad_jugadores_equipo,descripcion,fecha_incio from eventos where id =$evento"; 
 
      $result = $conn->query($sql);
      $count=1;         
      if ($result->num_rows > 0) {
          while($row = $result->fetch_assoc() ) {
          
         $evento_array = array();    
         array_push($evento_array,$row["id"]);
         array_push($evento_array,$row["nombre"]);
         array_push($evento_array,$row["cantidad_equipos"]);
         array_push($evento_array,$row["cantidad_jugadores_equipo"]);
         array_push($evento_array,$row["descripcion"]);
         array_push($evento_array,$row["fecha_incio"]);

         echo json_encode($evento_array);
       }		 
       
      }
        $conn->close();
 }
 
 function set_modificar($evento_name, $evento_num_equipos,$evento_num_jug_equipos,$evento_descripcion,$evento_fecha_inicio,$id){
    $conn = conectar();
 
       $sql="UPDATE eventos SET nombre='$evento_name',
                               cantidad_equipos=$evento_num_equipos,
                               cantidad_jugadores_equipo=$evento_num_jug_equipos,
                               descripcion='$evento_descripcion',
                               fecha_incio='$evento_fecha_inicio'
           where id =$id";
 
       if ($conn->query($sql) == TRUE) {		   
         // # Cogemos el identificador con que se ha guardado
         $id=$conn->insert_id;	
         echo  'MODIFICACION REALIZADA';
     }   else {
      echo "Error Modificacion: " . $sql . "<br>" . $conn->error;
     }
 }

?>