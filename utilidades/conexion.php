<?php
function conectar(){
   //local
    $servername = "localhost";
    $username = "root";
    $password = "0287";
    $dbname = "teammanager";
  
    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }else{
        return $conn;
    }
}


function get_datos_configuracion(){
    $conn = conectar();
    $datos_configuracion=array();
    $pos=0;
    // Check connection
   if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    } else {
        $sql = "SELECT *
                FROM configuracion ";  
        $result = $conn->query($sql);         
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc() ) {
                $datos_configuracion[$pos++] = $row;
            }		     
        }
    }
    $conn->close();
    return $datos_configuracion;
}

?>