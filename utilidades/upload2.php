<?php 
   
   if (!file_exists('archivos_subidos')) {
      mkdir('archivos_subidos', 0777);
    }

    move_uploaded_file($_FILES['file']['tmp_name'], '../archivos_subidos/'. $_FILES['file']['name']);
    echo $_FILES['file']['name'];
?>