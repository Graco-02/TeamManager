<?php

if(count($_POST)>0){
    include_once("../../utilidades/conexion.php");
    include_once("../../utilidades/alerta.php");
    $accion        = $_POST['accion'];

    switch ($accion) {
     case 1://opcion 1-agregar nuevo usuario
        $equipo_name              = $_POST["equipo_name"];              
        $equipo_categoria         = $_POST["equipo_categoria"]; 
        $equipo_circunscripcion   = $_POST["equipo_circunscripcion"]; 
        $equipo_anio              = $_POST["equipo_anio"]; 
        $equipo_rama              = $_POST["equipo_rama"]; 
        $equipo_entrenador        = $_POST["equipo_entrenador"]; 
        $equipo_entrenador_tel    = $_POST["equipo_entrenador_tel"]; 
        $equipo_delegado          = $_POST["equipo_delegado"]; 
        $equipo_delegado_tel      = $_POST["equipo_delegado_tel"]; 
        $equipo_municipio         = $_POST["equipo_municipio"];
        $equipo_sector            = $_POST["equipo_sector"];
        $url_img                  = $_POST["url_img"];

        set_insert_equipo($equipo_name, $equipo_municipio,$equipo_sector,$url_img,$equipo_categoria,$equipo_circunscripcion,$equipo_anio,$equipo_rama,$equipo_entrenador,$equipo_entrenador_tel,$equipo_delegado,$equipo_delegado_tel);
        break;
     case 2:
        $equipo        = $_POST['equipo'];
        get_equipo($equipo);
      break;
     case 3:
        $equipo_name              = $_POST["equipo_name"];
        $equipo_categoria         = $_POST["equipo_categoria"]; 
        $equipo_circunscripcion   = $_POST["equipo_circunscripcion"]; 
        $equipo_anio              = $_POST["equipo_anio"]; 
        $equipo_rama              = $_POST["equipo_rama"]; 
        $equipo_entrenador        = $_POST["equipo_entrenador"]; 
        $equipo_entrenador_tel    = $_POST["equipo_entrenador_tel"]; 
        $equipo_delegado          = $_POST["equipo_delegado"]; 
        $equipo_delegado_tel      = $_POST["equipo_delegado_tel"]; 

        $equipo_name_ant          = $_POST["name_ant"];
        $equipo_municipio         = $_POST["equipo_municipio"];
        $equipo_sector            = $_POST["equipo_sector"];
        $url_img                  = $_POST["url_img"];
        $id=$_POST["id"];
        set_modificar_equipo($equipo_name,$equipo_municipio,$equipo_sector,$url_img,$id,$equipo_name_ant,$equipo_categoria,$equipo_circunscripcion,$equipo_anio,$equipo_rama,$equipo_entrenador,$equipo_entrenador_tel,$equipo_delegado,$equipo_delegado_tel);
        break; 
      case 4:
          $equipo        = $_POST['equipo'];
          $evento        = $_POST['evento'];
          get_jugadores_equipo($equipo,$evento);
        break ; 
      case 5:
          $equipo        = $_POST['equipo'];
          $jugador       = $_POST['jugador'];
          set_eliminar_jugador($equipo,$jugador);
        break ;         
    }
       
}


function set_insert_equipo($equipo_name, $equipo_municipio,$equipo_sector,$url_img,$equipo_categoria,$equipo_circunscripcion,$equipo_anio,$equipo_rama,$equipo_entrenador,$equipo_entrenador_tel,$equipo_delegado,$equipo_delegado_tel){
    $conn = conectar();
    $sql="INSERT INTO equipos (nombre,municipio,sector,url_logo,categoria,circunscripcion,anio,rama,entrenador,entrenador_tel,delegado,delegado_tel) 
    VALUES ('$equipo_name','$equipo_municipio','$equipo_sector','$url_img','$equipo_categoria','$equipo_circunscripcion','$equipo_anio','$equipo_rama','$equipo_entrenador','$equipo_entrenador_tel','$equipo_delegado','$equipo_delegado_tel')";
   
    if ($conn->query($sql) == TRUE) {	
      /* creo un usuario generico para cada equipo la clave generica sera el mismo nombre el equipo al entrar debera cambiarla */
       $hash_clave = hash('sha256', $equipo_name);
       set_insert_usuario($equipo_name,'','',$equipo_name,$hash_clave,1,$url_img);
       //echo  'AGREGADO CORRECTO';
    }else{
        echo 'AGREGADO INCORRECTO';
    }
}


function get_listar_equipos_todos(){
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
         $municipio     = $row["municipio"];
         $sector        = $row["sector"];
         $url_logo      = $row["url_logo"];
         $estado        = $row["estado"];
         $id            = $row["id"];


           echo "<script> var usuario_js = '".$id."';</script>";
           echo "<tr>";
           echo "<td id='".$id."' name='fila'";
           echo 'onclick="set_seleccionar(usuario_js);">';
           echo $nombre;
           echo "</td>";
           echo "<td >$municipio</td>";
           echo "<td >$sector</td>";
           echo "<td><button type='button' id='".$id."' onclick='set_ver_plantilla(usuario_js);'>PLANTILLA</button></td>";
           echo "</tr> ";
       }		 
       
      }
    
      $conn->close();
 }

 function get_listar_equipos_restringido($equipo_name){
  $conn = conectar();
  $date = date('Y-m-d');
    // Check connection
   if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
   }

    $sql = "SELECT id,nombre,municipio,sector,url_logo,estado from equipos where nombre='$equipo_name'"; 
    $result = $conn->query($sql);
    $count=1;         
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc() ) {
        
       $nombre        = $row["nombre"];				  
       $municipio     = $row["municipio"];
       $sector        = $row["sector"];
       $url_logo      = $row["url_logo"];
       $estado        = $row["estado"];
       $id            = $row["id"];


         echo "<script> var usuario_js = '".$id."';</script>";
         echo "<tr>";
         echo "<td id='".$id."' name='fila'";
         echo 'onclick="set_seleccionar(usuario_js);">';
         echo $nombre;
         echo "</td>";
         echo "<td >$municipio</td>";
         echo "<td >$sector</td>";
         echo "<td><button type='button' id='".$id."' onclick='set_ver_plantilla(usuario_js);'>PLANTILLA</button></td>";
         echo "</tr> ";
     }		 
     
    }
  
    $conn->close();
}



 function get_equipo($equipo){
    $conn = conectar();
      // Check connection
     if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
     }
 
      $sql = "SELECT id,nombre,municipio,sector,url_logo,estado,categoria,circunscripcion,anio,rama,entrenador,entrenador_tel,delegado,delegado_tel
       from equipos where id=$equipo"; 
 
      $result = $conn->query($sql);
      $count=1;         
      if ($result->num_rows > 0) {
          while($row = $result->fetch_assoc() ) {
          
         $equipo_array = array();    
         array_push($equipo_array,$row["id"]);
         array_push($equipo_array,$row["nombre"]);
         array_push($equipo_array,$row["municipio"]);
         array_push($equipo_array,$row["sector"]);
         array_push($equipo_array,$row["url_logo"]);
         array_push($equipo_array,$row["estado"]);
         array_push($equipo_array,$row["categoria"]);
         array_push($equipo_array,$row["circunscripcion"]);
         array_push($equipo_array,$row["anio"]);
         array_push($equipo_array,$row["rama"]);
         array_push($equipo_array,$row["entrenador"]);
         array_push($equipo_array,$row["entrenador_tel"]);
         array_push($equipo_array,$row["delegado"]);
         array_push($equipo_array,$row["delegado_tel"]);

         echo json_encode($equipo_array);
       }		 
       
      }
        $conn->close();
 }
 
 function set_modificar_equipo($equipo_name, $equipo_municipio,$equipo_sector,$url_img,$id,$equipo_name_ant,$equipo_categoria,$equipo_circunscripcion,$equipo_anio,$equipo_rama,$equipo_entrenador,$equipo_entrenador_tel,$equipo_delegado,$equipo_delegado_tel){
    $conn = conectar();
 
       $sql="UPDATE equipos SET nombre='$equipo_name',
                                categoria='$equipo_categoria',
                                circunscripcion='$equipo_circunscripcion',
                                anio='$equipo_anio',
                                rama='$equipo_rama',
                                entrenador='$equipo_entrenador',
                                entrenador_tel='$equipo_entrenador_tel',
                                delegado='$equipo_delegado',
                                delegado_tel='$equipo_delegado_tel',
                                municipio='$equipo_municipio',
                                sector='$equipo_sector',
                                url_logo='$url_img'
           where id =$id";
 
       if ($conn->query($sql) == TRUE) {		   
        set_actualizar_usuario($equipo_name,$equipo_name,$equipo_name_ant);
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

function get_jugadores_equipo($equipo,$evento){
  $conn = conectar();
    // Check connection
   if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
   }

   if($evento==0){
    $sql = "SELECT id,nombres,apellidos,identificacion,fecha_nacimiento,direccion,equipo,url_img,url_adjunto1,idescolar,estado_sistema 
    from jugadores where  equipo =".$equipo ; 
   }else{
    $sql = "SELECT id,nombres,apellidos,identificacion,fecha_nacimiento,direccion,equipo,url_img,url_adjunto1,idescolar,estado_sistema
    from jugadores where  equipo =".$equipo." and (id,$equipo,$evento) in (select jugador,equipo,evento from relacion_equipo_jugador_evento)" ; 
   }

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
       array_push($jugador_array,$row["idescolar"]);
       array_push($jugador_array,$row["estado_sistema"]);

       array_push($jugadores_array,$jugador_array);
     }		 
        echo json_encode($jugadores_array);
    }
      $conn->close();
}


function set_actualizar_usuario($usuario,$clave,$equipo_name_ant){
     $conn = conectar();
     $hash_clave = hash('sha256', $clave);

     $sql="UPDATE usu001 SET clave='$hash_clave',usuario='$usuario',nombres='$usuario'
           WHERE usuario ='$equipo_name_ant'";

     if ($conn->query($sql) == TRUE) {		   
       $conn->close();
       echo  'MODIFICACION REALIZADA';
     }  else {
    echo "Error Modificacion: " . $sql . "<br>" . $conn->error;
     }  
}


function set_eliminar_jugador($equipo,$jugador_id){
  $conn = conectar();
 
  $sql="DELETE FROM relacion_equipo_jugador_evento WHERE jugador =".$jugador_id." AND equipo =".$equipo;

  if ($conn->query($sql) == TRUE) {		   
    // # Cogemos el identificador con que se ha guardado
    $sql="DELETE FROM jugadores WHERE id =".$jugador_id." AND equipo =".$equipo;
    if ($conn->query($sql) == TRUE) {	
      echo  'ELIMINACION REALIZADA';
    }
  }   else {
    echo "Error Modificacion: " . $sql . "<br>" . $conn->error;
  }
}


function get_planilla_jugadores($equipo){

      $equipo_array_jugadores = array();    
      $equipo_array_jugadores = get_jugadores_equipo_solo_lista($equipo) ;
      foreach ($equipo_array_jugadores as $jugador) {
       # code...
           echo '<div class="plantilla_jugadores_datos_jugador">';
           echo "<img src='../imagenes_subidas/".$jugador[7]."' alt='usuario' id='plantilla_jugadores_datos_jugador_img'/>";
           echo "<div id='plantilla_jugadores_datos_jugador_datos'>";
           echo "<span class='plantilla_jugadores_datos_jugador_headers' id='plantilla_jugadores_datos_jugador_nombre'>"
           .$jugador[1]." , ".$jugador[2]."</span>";
           echo "<span class='plantilla_jugadores_datos_jugador_headers' id='plantilla_jugadores_datos_jugador_fecnac'>".$jugador[4]."</span>";
           echo "<span class='plantilla_jugadores_datos_jugador_headers' id='plantilla_jugadores_datos_jugador_identificaion'>".$jugador[3]."</span>";
           echo "<span class='plantilla_jugadores_datos_jugador_headers' id='plantilla_jugadores_datos_jugador_centro'>".$jugador[9]."</span>";
           echo "<span class='plantilla_jugadores_datos_jugador_headers' id='plantilla_jugadores_datos_jugador_centro_id'>".$jugador[10]."</span>";
           echo "</div>";
           echo "</div>";   
      }

  /*    $conn = conectar();
      // Check connection
     if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
     }
 
      $sql = "SELECT id,nombre,municipio,sector,url_logo,estado,categoria,circunscripcion,anio,rama,entrenador,entrenador_tel,delegado,delegado_tel
       from equipos where id=$equipo"; 
 
      $result = $conn->query($sql);
      $count=1;         
      if ($result->num_rows > 0) {
          while($row = $result->fetch_assoc() ) {
        
         array_push($equipo_array,$row["id"]);
         array_push($equipo_array,$row["nombre"]);
         array_push($equipo_array,$row["municipio"]);
         array_push($equipo_array,$row["sector"]);
         array_push($equipo_array,$row["url_logo"]);
         array_push($equipo_array,$row["estado"]);
         array_push($equipo_array,$row["categoria"]);
         array_push($equipo_array,$row["circunscripcion"]);
         array_push($equipo_array,$row["anio"]);
         array_push($equipo_array,$row["rama"]);
         array_push($equipo_array,$row["entrenador"]);
         array_push($equipo_array,$row["entrenador_tel"]);
         array_push($equipo_array,$row["delegado"]);
         array_push($equipo_array,$row["delegado_tel"]);

       }		 
       
      }
        $conn->close();*/
}


function get_jugadores_equipo_solo_lista($equipo){
  $conn = conectar();
    // Check connection
   if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
   }

    $sql = "SELECT id,nombres,apellidos,identificacion,fecha_nacimiento,direccion,equipo,url_img,url_adjunto1,centro,idescolar,estado_sistema 
    from jugadores where  equipo =".$equipo ; 
   

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
       array_push($jugador_array,$row["centro"]);
       array_push($jugador_array,$row["idescolar"]);
       array_push($jugador_array,$row["estado_sistema"]);

       array_push($jugadores_array,$jugador_array);
     }		 
    }
      $conn->close();

      return $jugadores_array;
}

?>