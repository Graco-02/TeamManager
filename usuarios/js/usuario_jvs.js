function set_insertar(){
    var usuario_names           = document.getElementById("usuario_names").value;
    var usuario_lastnames       = document.getElementById("usuario_lastnames").value;
    var usuario_identificacion  = document.getElementById("usuario_identificacion").value;
    var usuario_name_acces      = document.getElementById("usuario_name_acces").value ;
    var usuario_clave           = document.getElementById("usuario_clave").value;
    var usuario_tipo            = document.getElementById("usuario_tipo").value;
    var accion = 1;


    if(usuario_names.length >= 4 && usuario_lastnames.length >= 4 && usuario_name_acces.length >= 4 && usuario_clave.length >= 4){
        $.post("ctrl/usuarios_ctrl.php"
        ,{"usuario_names":usuario_names 
        ,"usuario_lastnames":usuario_lastnames 
        ,"usuario_identificacion":usuario_identificacion 
        ,"usuario_name_acces":usuario_name_acces 
        ,"usuario_clave":usuario_clave 
        ,"usuario_tipo":usuario_tipo 
        ,"accion":accion 
        }
        ,function(respuesta){
            alert("Agregado");
        }); 
    }else{
        alert("faltan datos los obligatorios son nombres,apellidos,usuario,clave todos deben tener almenos 4 caracteres");
    }
}



function set_seleccionar(usuario){
    alert("objeto seleccionado "+usuario);
}
