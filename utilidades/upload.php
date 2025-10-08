<?php 


   if (!file_exists('imagenes_subidas')) {
      mkdir('imagenes_subidas', 0777);
    }

    $randomString = generateRandomString(15); 

    move_uploaded_file($_FILES['file']['tmp_name'], '../imagenes_subidas/'.$randomString.$_FILES['file']['name']);
    echo $randomString.$_FILES['file']['name'];

function generateRandomString($length = 10) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[random_int(0, $charactersLength - 1)];
    }
    return $randomString;
}

?>