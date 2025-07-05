<?php

if(count($_POST)>0){
    include_once("../../utilidades/conexion.php");
    include_once("../../utilidades/alerta.php");
    $accion        = $_POST['accion'];
   //alert("PGP");
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
        $check_estado_evento      = $_POST["check_estado_evento"];
        $date = date( "Y-m-d", strtotime($evento_fecha_inicio) );
        $id=$_POST["id"];
        set_modificar($evento_name, $evento_num_equipos,$evento_num_jug_equipos,$evento_descripcion,$date,$id,$check_estado_evento);
        break; 
      case 4:
        $evento        = $_POST['evento'];
        get_listar_equipos_no_linkados($evento);
        break;
      case 5:
          $evento        = $_POST['evento_id'];
          $equipo        = $_POST['equipo_id'];
          set_insert_relacion_equipo($evento, $equipo );
          break;     
      case 6:
            $evento        = $_POST['evento_id'];
            $equipo        = $_POST['equipo_id'];
            set_eliminar_equipo_linkado($evento, $equipo );
            break;  
      case 7:
            $id               = $_POST['id'];
            $fecha_ini        = $_POST['fecha_ini'];
            get_listar_eventos_filtrados($id,$fecha_ini);
            break;  
      case 8:
            $evento        = $_POST['evento_id'];
            $equipo        = $_POST['equipo_id'];
            get_estaus_pago_evento($evento,$equipo);
            break;   
      case 9:
            $evento        = $_POST['evento_id'];
            $equipo        = $_POST['equipo_id'];
            $ruta          = $_POST['ruta'];
            set_modificar_indicador_pago_evento($evento,$equipo,$ruta);
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
 
      $sql = "SELECT id,nombre,cantidad_equipos,cantidad_jugadores_equipo,descripcion,fecha_incio,estado from eventos where estado = 0"; 
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
         $estado      = $row["estado"];


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

          if($estado>0){
            echo "<td >".'Finalizado'."</td>";
          }else{
            echo "<td >".'En curso'."</td>";
          }
           echo "</tr> ";
       }		 
       
      }
    
      $conn->close();
 }


 function get_listar_eventos_filtrados($id,$fecha_ini){
  $conn = conectar();
  $date = date('Y-m-d');
    // Check connection
   if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
   }

    $sql="";
    if($id > 0){
      $sql = 
       "select eq.nombre,evq.evento as myevento_id,even.nombre as myevento_name,even.fecha_incio as myevento_fecha_ini,case even.estado when 0 then 'ACTIVO'  when 1 then 'FINALIZADO' end as estadox 
       from equipos eq, relacion_equipo_evento evq, eventos even
              where eq.id = evq.equipo
              and even.id = evq.evento
              and eq.id = ".$id." and even.fecha_incio ='".$fecha_ini."'"." group by evq.evento,even.nombre,even.fecha_incio";
             ; 
    }else{
      $sql = "select even.id as myevento_id,even.nombre as myevento_name,even.fecha_incio as myevento_fecha_ini,case even.estado when 0 then 'ACTIVO' when 1 then 'FINALIZADO' end as estadox
              from  eventos even
              where even.fecha_incio ='".$fecha_ini."'"." group by even.nombre,even.fecha_incio"
            ; 
    }

    $result = $conn->query($sql);
    $count=1;         
    $eventos_lista = array();   
    if ($result->num_rows > 0) {
      while($row = $result->fetch_assoc() ) {
        
         $id          = $row["myevento_id"];				  
         $nombre      = $row["myevento_name"];				  
         $fecha_incio = $row["myevento_fecha_ini"];
         $estado      = $row["estadox"];

         $evento_array = array();    
         array_push($evento_array,$id );
         array_push($evento_array,$nombre );
         array_push($evento_array,$fecha_incio );
         array_push($evento_array,$estado );

         array_push($eventos_lista,$evento_array );

      }		
         echo json_encode($eventos_lista);
    }else{
      echo 'no se encontraron datos '.$id." - ".$fecha_ini;
    }
  
    $conn->close();
}


 function get_evento($evento){
    $conn = conectar();
      // Check connection
     if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
     }
 
      $sql = "SELECT id,nombre,cantidad_equipos,cantidad_jugadores_equipo,descripcion,fecha_incio,estado from eventos where id =$evento"; 
 
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
         array_push($evento_array,$row["estado"]);

         echo json_encode($evento_array);
       }		 
       
      }
        $conn->close();
 }
 
 function set_modificar($evento_name, $evento_num_equipos,$evento_num_jug_equipos,$evento_descripcion,$evento_fecha_inicio,$id,$check_estado_evento){
    $conn = conectar();
 
       $sql="UPDATE eventos SET nombre='$evento_name',
                               cantidad_equipos=$evento_num_equipos,
                               cantidad_jugadores_equipo=$evento_num_jug_equipos,
                               descripcion='$evento_descripcion',
                               estado='$check_estado_evento',
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

 
function get_listar_equipos_no_linkados($evento){
  $conn = conectar();
  $date = date('Y-m-d');
    // Check connection
   if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
   }

    $sql = "SELECT a.id,a.nombre,a.municipio,a.sector,a.url_logo,a.estado 
    from equipos a"; 


    $result = $conn->query($sql);
    $count=1;     
    $equipo_array_lista    = array();  
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc() ) {
        
         $equipo_array = array();    
         array_push($equipo_array,$row["id"]);
         array_push($equipo_array,$row["nombre"]);
         array_push($equipo_array,$row["municipio"]);
         array_push($equipo_array,$row["sector"]);
         array_push($equipo_array,$row["url_logo"]);
         array_push($equipo_array,$row["estado"]);
         array_push($equipo_array,get_listar_equipos_linkados($evento,$row["id"]));
         array_push($equipo_array,get_cantidad_jugadores($row["id"],$evento));
         array_push($equipo_array,get_estaus_pago_evento_2($evento,$row["id"]));
         
         array_push($equipo_array_lista, $equipo_array);
     }		 
      echo json_encode($equipo_array_lista);
    }
  
    $conn->close();
}


function get_listar_equipos_linkados($evento,$equipo){
  $conn = conectar();
  $date = date('Y-m-d');
    // Check connection
   if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
   }

    $sql = "SELECT equipo from relacion_equipo_evento where evento =".$evento." AND equipo = ".$equipo; 

    $result = $conn->query($sql);
    $count=1; 
    $existe = 0;    
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc() ) {  
          $existe=1;
        }		 
    }
    $conn->close();
    return $existe;
}

function get_estaus_pago_evento($evento,$equipo){
  $conn = conectar();
  $date = date('Y-m-d');
    // Check connection
   if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
   }

    $sql = "SELECT indpago,ruta_volante from relacion_equipo_evento where evento =".$evento." AND equipo = ".$equipo; 

    $result = $conn->query($sql);
    $count=1; 
    $existe = 0;    
    $datos_evento = array();    
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc() ) {  
          $existe=1;
          array_push($datos_evento,$row["indpago"]);
          array_push($datos_evento,$row["ruta_volante"]);
        }		 
    }
    $conn->close();
    switch ($existe) {
      case 1:
        echo json_encode($datos_evento);
        break;
      
      default:
        echo $existe;
        break;
    }

   // echo "Prueba";
}


function get_estaus_pago_evento_2($evento,$equipo){
  $conn = conectar();
  $date = date('Y-m-d');
    // Check connection
   if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
   }

    $sql = "SELECT indpago from relacion_equipo_evento where evento =".$evento." AND equipo = ".$equipo; 

    $result = $conn->query($sql);
    $count=1; 
    $existe = 0;    
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc() ) {  
          $existe=$row["indpago"];
        }		 
    }
    $conn->close();
    return $existe;
}


function set_insert_relacion_equipo($evento_id, $equipo_id ){
  $conn = conectar();
  $sql="INSERT INTO relacion_equipo_evento (equipo,evento) 
  VALUES ($equipo_id, $evento_id)";
 
  if ($conn->query($sql) == TRUE) {	
    $conn->close();
     echo  'AGREGADO CORRECTO';
  }else{
    $conn->close();
      echo 'AGREGADO INCORRECTO';
  }
}

function set_eliminar_equipo_linkado($evento,$equipo){
  $conn = conectar();
  $date = date('Y-m-d');
    // Check connection
   if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
   }

    $sql = "DELETE FROM relacion_equipo_evento where evento =".$evento." AND equipo = ".$equipo; 
    if ($conn->query($sql) == TRUE) {
      $conn->close();	
      echo  'BORRADO CORRECTO';
    }else{
      $conn->close();
       echo 'BORRADO INCORRECTO';
    }
}


function get_cantidad_jugadores($equipo,$evento){
  $conn = conectar();
  $date = date('Y-m-d');
    // Check connection
   if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
   }

    $sql = "SELECT count(*) as total
     from jugadores where equipo = ".$equipo." and (equipo,$evento,id) in (select equipo,evento,jugador from relacion_equipo_jugador_evento)" ; 

    $result = $conn->query($sql);
    $count=1;    
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc() ) {  
          $count=$row["total"];
        }		 
    }
    $conn->close();
    return $count;
}

function set_modificar_indicador_pago_evento($evento,$equipo,$ruta){
      $conn = conectar();
 
       $sql="UPDATE relacion_equipo_evento SET indpago=1,ruta_volante="."'".$ruta."'"." WHERE evento =".$evento." AND equipo = ".$equipo;
 
       if ($conn->query($sql) == TRUE) {		   
         // # Cogemos el identificador con que se ha guardado
         $id=$conn->insert_id;	
         echo  'MODIFICACION REALIZADA';
      }   else {
         echo "Error Modificacion: " . $sql . "<br>" . $conn->error;
      }
}

?>