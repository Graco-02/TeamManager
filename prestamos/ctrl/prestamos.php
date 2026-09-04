<?php

if(count($_POST)>0){
    include_once("../../utilidades/conexion.php");
    include_once("../../utilidades/alerta.php");
    $accion        = $_POST['accion'];

    switch ($accion) {
     case 1://opcion 1-selecciona el jugador a trasladar
        $jugador_cedula  = $_POST['jugador_cedula'];
        get_jugador($jugador_cedula);
      break; 
     case 2://opcion 2-recupera el listado de trastados realziados al equipo seleccionado para ese evento
        $jugador_evento  = $_POST['jugador_evento'];
        $jugador_equipo_temp  = $_POST['jugador_equipo_temp'];
         get_jugadores($jugador_equipo_temp,$jugador_evento);
      break;    
     case 3://opcion 3-recupera los datos del evento sleccionado
        $jugador_evento  = $_POST['jugador_evento'];
         get_evento($jugador_evento);
      break;    
     case 4://opcion 4-agregar nuevo traslado
         $jugador_equipo_temporal = $_POST['jugador_equipo_temporal'];
         $prestamo_fecha_ini      = $_POST['prestamo_fecha_ini'];
         $prestamo_fecha_fin      = $_POST['prestamo_fecha_fin'];
         $jugador_equipo_base     = $_POST['jugador_equipo_base'];
         $id_evento               = $_POST['id_evento'];
         $id_jugador              = $_POST['id_jugador'];
         $carta                   = $_POST['carta'];
         set_insert_jugador( $jugador_equipo_temporal,
                            $prestamo_fecha_ini,
                            $prestamo_fecha_fin,
                            $jugador_equipo_base,
                            $id_evento,
                            $id_jugador,
                            $carta );
     break;     
     case 5://opcion 1-selecciona el jugador a trasladar
        $jugador_cedula  = $_POST['jugador_cedula'];
        get_jugadore_prestamos($jugador_cedula);          
    }
       
}


function set_insert_jugador( $jugador_equipo_temporal,$prestamo_fecha_ini,$prestamo_fecha_fin,$jugador_equipo_base,$id_evento,$id_jugador,$carta ){
    $conn = conectar();
      $date = date('Y-m-d');
    $sql="INSERT INTO prestamos (id_jugador,id_equipo_original,id_equipo_temporal,id_evento,fecha_solicitud,fecha_incio,fecha_fin,carta) 
    VALUES ($id_jugador,$jugador_equipo_base,$jugador_equipo_temporal,$id_evento,'$date','$prestamo_fecha_ini','$prestamo_fecha_fin','$carta')";
   
    if ($conn->query($sql) == TRUE) {
      $id=$conn->insert_id;		
      echo 'CORRECTO';
    }else{
        echo 'INCORRECTO';
    }
  }

 function get_jugador($cedula){
    $conn = conectar();
      // Check connection
     if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
     }
 
     $sql = "SELECT id,nombres,apellidos,identificacion,fecha_nacimiento,direccion,equipo,url_img,url_adjunto1,estatus,telefono,centro,idescolar,estado_sistema 
     from jugadores where identificacion = '".$cedula."'" ; 
 
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
         array_push($jugador_array,$row["idescolar"]);
         array_push($jugador_array,$row["estado_sistema"]);

         echo json_encode($jugador_array);
       }		 
       
      }
        $conn->close();
 }
 
 function set_modificar_jugador($jugadore_name,$jugador_lastname,$jugador_fecha_nacimiento,$identificacion,
 $jugador_direccion,$jugador_equipo,$ruta,$ruta2,$id,$jugador_estatus,$jugador_telefono,
 $jugador_centro,$jugador_evento,$jugador_id_centro,$jugador_sistem_estatus){
      
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
                                  idescolar='$jugador_id_centro',
                                  estado_sistema='$jugador_sistem_estatus',
                                  centro='$jugador_centro'


           where id =$id";
 
       if ($conn->query($sql) == TRUE) {		   
         // # Cogemos el identificador con que se ha guardado
        // $id=$conn->insert_id;	
        if(strlen($jugador_evento) > 0){
          if($jugador_evento > 0 ){
             if($jugador_evento=='x'){
               set_sacar_de_evento($jugador_equipo,$id,$jugador_evento);
             }else{
               if($jugador_evento!='y'){
               if(set_agregar_relacion_equipo_evento($id,$jugador_equipo,$jugador_evento)){
                 echo  'MODIFICACION REALIZADA';
               }else{
                 echo  'ERROR EN MODIFICACION';
               }
              }else{
                echo  'MODIFICACION REALIZADA';
              }
            }
            }else{
              echo  'MODIFICACION REALIZADA';
            }   
        }else{
          echo  'MODIFICACION REALIZADA';
        }

     }   else {
      echo "Error Modificacion: " . $sql . "<br>" . $conn->error;
     }
    
 }

function set_agregar_relacion_equipo_evento($jugador,$equipo,$evento){
  $date = date('Y-m-d');
  $validacion=TRUE;
  if($evento!=0){
  $conn = conectar();
           //   # Agregamos la LOS DATOS DE LA PERSONA a la base de datos
    $sql="INSERT IGNORE INTO relacion_equipo_jugador_evento (equipo,evento,jugador) 
    VALUES ($equipo,$evento,$jugador)";
   
    if ($conn->query($sql) == TRUE) {	
      //echo($jugador.$equipo.$evento);
    }else{
      $validacion=false;
    }
       $conn->close();
  }
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
    echo "<option value="."0".">".'TODOS'."</option>"; 
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc() ) {
        
           $nombre        = $row["nombre"];				
           $id            = $row["id"];
           if($equipo!=0){
            echo "<option value=".$id." selected>".$nombre."</option>";
           }else{
            echo "<option value=".$id.">".$nombre."</option>";
           }
        }		 
     
    }
  
    $conn->close();
}

function get_jugadores($equipo,$evento){
  $conn = conectar();
    // Check connection
   if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
   }
    
    $sql = "SELECT id,nombres,apellidos,identificacion,fecha_nacimiento,direccion,equipo,url_img,url_adjunto1,estatus,telefono,centro,idescolar,
           (select eq.nombre from equipos eq where eq.id = equipo ) as equipo_name  
            FROM jugadores WHERE id in (select id_jugador from prestamos where id_equipo_temporal =".$equipo." and id_evento =".$evento.")" ; 

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
       array_push($jugador_array,$row["idescolar"]);
       array_push($jugador_array,$row["equipo_name"]);
       
       array_push($jugadores_array,$jugador_array);
     }		 
        echo json_encode($jugadores_array);
    }
      $conn->close();
}


function get_jugadore_prestamos($numdoc){
  $conn = conectar();
    // Check connection
   if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
   }
    
    $sql = "SELECT p.id as id,
            j.nombres as nombres ,
            j.apellidos as apellidos,
            j.identificacion as identificacion,
            j.fecha_nacimiento as fecha_nacimiento,
            j.direccion as direccion,
            j.equipo as equipo,
            j.url_img as url_img,
            j.url_adjunto1 as url_adjunto1,
            j.estatus as estatus,
            j.telefono as telefono,
            j.centro as centro,
            j.idescolar as idescolar,
            (select eq.nombre from equipos eq where eq.id = j.equipo ) as equipo_name ,
            p.carta as carta ,
            p.fecha_fin as fecha_fin 
            FROM jugadores j, prestamos p
            WHERE j.identificacion ='".$numdoc."'
            and p.id_jugador = j.id;" ; 

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
       array_push($jugador_array,$row["idescolar"]);
       array_push($jugador_array,$row["equipo_name"]);
       array_push($jugador_array,$row["carta"]);
       array_push($jugador_array,$row["fecha_fin"]);
       
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

  
    $sql = "SELECT id,nombre,cantidad_equipos,cantidad_jugadores_equipo,descripcion,fecha_incio from eventos WHERE estado = 0";  
    $result = $conn->query($sql);
    $count=0;         
    if ($result->num_rows > 0) {
        echo "<option value=".'0'.">".'N/A'."</option>"; 
        while($row = $result->fetch_assoc() ) {
            $nombre = $row["nombre"];				  
            $fecha_incio      = $row["fecha_incio"];
            $id      = $row["id"];
     
            $diff = strtotime($fecha_incio) - strtotime($date);
            $dias = $diff/(60*60*24);
     
              if($dias>0){
                 $nombre        = $row["nombre"];				
                 $id            = $row["id"];
                 echo "<option value=".$id.">".$nombre."</option>";
                 $count++;
              }
        }     
    }

     if($count==0){
          echo "<option value=".'0'.">".'NO HAY EVENTOS DISPONIBLES'."</option>"; 
     }
  
    $conn->close();
}

 function get_eliminar_jugador($jugador){
    $conn = conectar();
      // Check connection
     if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
     }
 

     //PRIMERO SE ELIMINAN LOS REGISTROS DE EVENTOS DEL JUGADOR LUEGO LO DEMAS
     $sql = "DELETE from relacion_equipo_jugador_evento where jugador=$jugador"; 
 
      $result = $conn->query($sql);
       
      if ($conn->query($sql) == TRUE) {		   
         $sql = "DELETE from jugadores where id=$jugador"; 
              $result = $conn->query($sql);      
         if ($conn->query($sql) == TRUE) {	
           echo 'CORRECTO';
         }
      }
        $conn->close();
 }

 function set_modificar_jugador_restringido($id,$jugador_equipo,$jugador_evento){
  $total_jugadores = get_validar_cantidad_jugadores_inscritos($jugador_equipo,$jugador_evento);
  $permitdos_evento = get_total_eventos($jugador_evento);

  //echo ' total inscritos = '.$total_jugadores.' equipo = '.$jugador_equipo.' evento '.$jugador_evento.' permite = '.$permitdos_evento;
  if($total_jugadores < get_total_eventos($jugador_evento)){
    if(set_agregar_relacion_equipo_evento($id,$jugador_equipo,$jugador_evento)){
      echo  'MODIFICACION REALIZADA';
    }else{
      echo  'ERROR EN MODIFICACION';
    }
  }else{
      echo  'EXCEDE LIMITE DE JUGADORES EN EL EVENTO ACTUALEMTE : '.$total_jugadores;
  }
  
 }


 function set_sacar_de_evento($equipo,$jugador,$evento){
    $conn = conectar();
 
  $sql="DELETE FROM relacion_equipo_jugador_evento WHERE jugador =".$jugador." AND equipo =".$equipo;

  if ($conn->query($sql) == TRUE) {		   
      echo  'MODIFICACION REALIZADA';
  }   else {
    echo "Error Modificacion: " . $sql . "<br>" . $conn->error;
  }
}

function get_listar_jugadores_todos_paginabl_filtrado($id_equipo,$desde,$total_paginacion,$estatus,$anio_filtro){
    $conn = conectar();
    $date = date('Y-m-d');
    


      // Check connection
     if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
     }
      
      $sql ="";
      if($id_equipo == 0){
         if($estatus!='x'){
             if(strlen($anio_filtro)==0){
                $sql = "SELECT id,nombres,apellidos,identificacion,fecha_nacimiento,direccion,equipo,url_img,url_adjunto1,estatus,telefono,centro,idescolar,(select eq.nombre from equipos eq where eq.id = equipo ) as equipo_name 
                from jugadores where estado_sistema = ".$estatus." order by nombres asc LIMIT $desde, $total_paginacion";     
             }else{
                $sql = "SELECT id,nombres,apellidos,identificacion,fecha_nacimiento,direccion,equipo,url_img,url_adjunto1,estatus,telefono,centro,idescolar,(select eq.nombre from equipos eq where eq.id = equipo ) as equipo_name 
                from jugadores where estado_sistema = ".$estatus." and substr(fecha_nacimiento,1,4)='".$anio_filtro."' order by nombres asc LIMIT $desde, $total_paginacion";
             }
         }else{
             if(strlen($anio_filtro)==0){
                 $sql = "SELECT id,nombres,apellidos,identificacion,fecha_nacimiento,direccion,equipo,url_img,url_adjunto1,estatus,telefono,centro,idescolar,(select eq.nombre from equipos eq where eq.id = equipo ) as equipo_name 
                 from jugadores  order by nombres asc LIMIT $desde, $total_paginacion"; 
             }else{
                 $sql = "SELECT id,nombres,apellidos,identificacion,fecha_nacimiento,direccion,equipo,url_img,url_adjunto1,estatus,telefono,centro,idescolar,(select eq.nombre from equipos eq where eq.id = equipo ) as equipo_name 
                 from jugadores where substr(fecha_nacimiento,1,4)='".$anio_filtro."' order by nombres asc LIMIT $desde, $total_paginacion"; 
             }    
        }    
      }else{
        if($estatus!='x'){
          if(strlen($anio_filtro)==0){
           $sql = "SELECT id,nombres,apellidos,identificacion,fecha_nacimiento,direccion,equipo,url_img,url_adjunto1,estatus,telefono,centro,idescolar,(select eq.nombre from equipos eq where eq.id = equipo ) as equipo_name 
           from jugadores where (equipo=".$id_equipo." AND estado_sistema = ".$estatus.")  order by nombres asc LIMIT $desde, $total_paginacion";
          }else{
            $sql = "SELECT id,nombres,apellidos,identificacion,fecha_nacimiento,direccion,equipo,url_img,url_adjunto1,estatus,telefono,centro,idescolar,(select eq.nombre from equipos eq where eq.id = equipo ) as equipo_name 
            from jugadores where equipo=".$id_equipo." AND estado_sistema = ".$estatus." and substr(fecha_nacimiento,1,4)='".$anio_filtro."'
              order by nombres asc LIMIT $desde, $total_paginacion";
          }
        }else{
          if(strlen($anio_filtro)==0){
           $sql = "SELECT id,nombres,apellidos,identificacion,fecha_nacimiento,direccion,equipo,url_img,url_adjunto1,estatus,telefono,centro,idescolar,(select eq.nombre from equipos eq where eq.id = equipo ) as equipo_name 
           from jugadores where equipo=".$id_equipo."  order by nombres asc LIMIT $desde, $total_paginacion";     
          }else{
           $sql = "SELECT id,nombres,apellidos,identificacion,fecha_nacimiento,direccion,equipo,url_img,url_adjunto1,estatus,telefono,centro,idescolar,(select eq.nombre from equipos eq where eq.id = equipo ) as equipo_name 
           from jugadores where equipo=".$id_equipo." and substr(fecha_nacimiento,1,4)='".$anio_filtro."' order by nombres asc LIMIT $desde, $total_paginacion";              
          } 
        }
      }

      $result = $conn->query($sql);
      $count=1;      
      $datos="";   
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
         $equipo_name           = $row["equipo_name"];
         $idescolar             = $row["idescolar"];

          
//
           
           $datos = $datos."<script> let usuario_js = '".$id."';</script>";
           $datos = $datos."<tr>";
           $datos = $datos."<td id='".$id."' name='fila'";
           $datos = $datos.'onclick="set_seleccionar('.$id.');">';
           $datos = $datos.$nombre;
           $datos = $datos."</td>";
           $datos = $datos."<td >".$apellidos."</td>";
           $datos = $datos."<td >".$identificacion."</td>";
           $datos = $datos."<td >".$idescolar."</td>";
           $datos = $datos."<td >".$fecha_nacimiento."</td>";
           $datos = $datos."<td >".$equipo_name."</td>";


           if($id_equipo==0){
             $datos = $datos. "<td> <button id='bt_eliminar' "."onClick='set_eliminar_jugador(".$id.")' >Eliminar</button></td>"; 
           }


          $datos = $datos. "</tr> ";
       }		 
       
      }
    
      $conn->close();
      echo $datos;
 }


 function get_validar_cantidad_jugadores_inscritos($equipo,$evento){
    $conn = conectar();
      // Check connection
     if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
     }
 
     $sql = "select count(*) as total  from relacion_equipo_jugador_evento 
             where equipo = ".$equipo." and evento=".$evento; 
      $result = $conn->query($sql);
      $validacion=0;         
      if ($result->num_rows > 0) {
          while($row = $result->fetch_assoc() ) {
          $validacion=$row["total"]; 
       }		 
       
      }
      $conn->close();
     // echo 'valido la cantidad y el resultado es '.$validacion;
      return $validacion; 
 }


  function get_total_eventos($evento){
    $conn = conectar();
      // Check connection
     if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
     }
 
     $sql = "select cantidad_jugadores_equipo from eventos where id=".$evento; 
      $result = $conn->query($sql);
      $validacion=0;         
      if ($result->num_rows > 0) {
          while($row = $result->fetch_assoc() ) {
          $validacion=$row["cantidad_jugadores_equipo"]; 
       }		 
      }
      $conn->close();
     // echo 'valido la cantidad y el resultado es '.$validacion;
      return $validacion; 
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
         session_start();
          $_SESSION['evento_seleccionado'] = $evento;

         echo json_encode($evento_array);
       }		 
       
      }
        $conn->close();
 }
?>