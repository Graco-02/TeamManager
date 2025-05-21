let regant_global='';
let regnew_global='';

function set_insertar(){
    var usuario_names           = document.getElementById("usuario_names").value;
    var usuario_lastnames       = document.getElementById("usuario_lastnames").value;
    var usuario_identificacion  = document.getElementById("usuario_identificacion").value;
    var usuario_name_acces      = document.getElementById("usuario_name_acces").value ;
    var usuario_clave           = document.getElementById("usuario_clave").value;
    var usuario_tipo            = document.getElementById("usuario_tipo").value;
    var accion = 1;
    var url_img      = document.getElementById("pic").value;

    regnew_global=
    usuario_names          
    +usuario_lastnames      
    +usuario_identificacion 
    +usuario_name_acces     
    +usuario_clave          
    +usuario_tipo  ;         



    if(usuario_names.length >= 4 && usuario_lastnames.length >= 4 && usuario_name_acces.length >= 4 && usuario_clave.length >= 4 && usuario_identificacion.length >=10){
                var formData = new FormData();
                var file_data = $('#pic').prop('files')[0];
                formData.append('file',file_data);
                $.ajax({
                    url: '../utilidades/upload.php',
                    type: 'post',
                    data: formData,
                    contentType: false,
                    processData: false,
                    success: function(response) {
                        $.post("ctrl/usuarios_ctrl.php"
                        ,{"usuario_names":usuario_names 
                        ,"usuario_lastnames":usuario_lastnames 
                        ,"usuario_identificacion":usuario_identificacion 
                        ,"usuario_name_acces":usuario_name_acces 
                        ,"usuario_clave":usuario_clave 
                        ,"usuario_tipo":usuario_tipo 
                        ,"accion":accion 
                        ,"url_img":response 
                        }
                       
                    }
                });


    }else{
        alert("faltan datos los obligatorios son nombres,apellidos,identificacion,usuario,clave todos deben tener almenos 4 caracteres");
    }
}

function set_agregar_fila(usuario_names_entero,usuario_identificacion){
    var tableRow = document.getElementById("listado_usuarios");
    var fila = document.createElement("tr");
    var celda1 = document.createElement("td");
    var celda2 = document.createElement("td");
    var celda3 = document.createElement("td");
    celda1.innerHTML = usuario_names_entero;
    celda2.innerHTML = usuario_identificacion;
    fila.appendChild(celda1);
    fila.appendChild(celda2);
    tableRow.appendChild(fila);
}

function set_seleccionar(usuario){
    var accion = 2;//opcion para seleccionar los datos del usuario
    var usuario = event.srcElement.id;

    $.post("ctrl/usuarios_ctrl.php"
    ,{"usuario":usuario 
    ,"accion":accion 
    }
    ,function(respuesta){
        var json = $.parseJSON(respuesta);
        console.log(json);

        var usuario_names           = document.getElementById("usuario_names");
        var usuario_lastnames       = document.getElementById("usuario_lastnames");
        var usuario_identificacion  = document.getElementById("usuario_identificacion");
        var usuario_name_acces      = document.getElementById("usuario_name_acces") ;
        var usuario_clave           = document.getElementById("usuario_clave");
        var usuario_tipo            = document.getElementById("usuario_tipo");
        var usuario_logo            = document.getElementById("usuario_logo");
 
        usuario_names.value = json[0];
        usuario_lastnames.value =json[1];
        usuario_identificacion.value =json[2];
        usuario_name_acces.value =json[3];
        usuario_clave.value =json[4];
        usuario_tipo.value = json[5];
        if(json[6]!=null && json[6].length>0){
            usuario_logo.src = "../imagenes_subidas/"+json[6];
        }else{
            usuario_logo.src = "../imagenes/usuario1.png";
        }

        regant_global=
        usuario_names.value           
        +usuario_lastnames.value       
        +usuario_identificacion.value  
        +usuario_name_acces.value      
        +usuario_clave.value           
        +usuario_tipo.value   ;  

    }); 
}

function readURL(input) {
    const $seleccionArchivos = document.querySelector("#pic"),
    $imagenPrevisualizacion = document.querySelector("#usuario_logo");

    const archivos = $seleccionArchivos.files;
    // Si no hay archivos salimos de la función y quitamos la imagen
    if (!archivos || !archivos.length) {
      $imagenPrevisualizacion.src = "";
      return;
    }
    // Ahora tomamos el primer archivo, el cual vamos a previsualizar
    const primerArchivo = archivos[0];
    // Lo convertimos a un objeto de tipo objectURL
    const objectURL = URL.createObjectURL(primerArchivo);
    // Y a la fuente de la imagen le ponemos el objectURL
    $imagenPrevisualizacion.src = objectURL;
}

function set_insertar_accion(usuario,accion_modulo,modulo,regant,regnew){
    var accion = 1;
    
    $.post("../histlog/ctrl/histlog.php"
    ,{"usuario":usuario 
    ,"accion_modulo":accion_modulo 
    ,"modulo":modulo 
    ,"regant":regant_global 
    ,"regnew":regnew_global 
    ,"accion":accion 
    }
    ,function(respuesta){
        var resp = respuesta.trim();
        if(resp != 'AGREGADO CORRECTO'){
            alert('ERROR AGREGANDO HISTORICO => '+respuesta);
        }
        location.reload();
 });
}