<?php

if(count($_POST)>0){
    include_once("../../utilidades/conexion.php");
    include_once("../../utilidades/alerta.php");
    $accion        = $_POST['accion'];

    switch ($accion) {
     case 1://opcion 1-agregar nuevo usuario
        $equipo_name              = $_POST["equipo_name"];
        $equipo_municipio         = $_POST["equipo_municipio"];
        $equipo_sector            = $_POST["equipo_sector"];
        $url_img                  = $_POST["url_img"];

        set_insert_equipo($equipo_name, $equipo_municipio,$equipo_sector,$url_img);
        break;
     case 2:
        $equipo        = $_POST['equipo'];
        get_equipo($equipo);
      break;
     case 3:
        $equipo_name              = $_POST["equipo_name"];
        $equipo_municipio         = $_POST["equipo_municipio"];
        $equipo_sector            = $_POST["equipo_sector"];
        $url_img                  = $_POST["url_img"];
        $id=$_POST["id"];
        set_modificar_equipo($equipo_name, $equipo_municipio,$equipo_sector,$url_img,$id);
        break; 
    }
       
}


function set_insert_equipo($equipo_name, $equipo_municipio,$equipo_sector,$url_img ){
    $conn = conectar();
    $sql="INSERT INTO equipos (nombre,municipio,sector,url_logo) 
    VALUES ('$equipo_name','$equipo_municipio','$equipo_sector','$url_img')";
   
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
 
      $sql = "SELECT id,nombre,municipio,sector,url_logo,estado from equipos where id=$equipo"; 
 
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

         echo json_encode($equipo_array);
       }		 
       
      }
        $conn->close();
 }
 
 function set_modificar_equipo($equipo_name, $equipo_municipio,$equipo_sector,$url_img,$id){
    $conn = conectar();
 
       $sql="UPDATE equipos SET nombre='$equipo_name',
                                municipio='$equipo_municipio',
                                sector='$equipo_sector',
                                url_logo='$url_img'
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



?>