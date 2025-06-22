<?php 
   
   if (!file_exists('volantes')) {
      mkdir('volantes', 0777);
    }

    move_uploaded_file($_FILES['file']['tmp_name'], '../volantes/'. $_FILES['file']['name']);
    echo $_FILES['file']['name'];
?>