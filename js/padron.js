function set_insertar(){
    var usuario_names           = document.getElementById("usuario_names").value;
    var usuario_lastnames       = document.getElementById("usuario_lastnames").value;
    var usuario_identificacion  = document.getElementById("usuario_identificacion").value;
    var usuario_colegio         = document.getElementById("usuario_colegio").value ;
    var usuario_colegio_ubicacion = document.getElementById("usuario_colegio_ubicacion").value;
    var usuario_direccion         = document.getElementById("usuario_direccion").value;
    var accion = 1;
    var url_img      = document.getElementById("pic").value;

    if(usuario_names.length >= 4 && usuario_lastnames.length >= 4 && usuario_identificacion.length >= 11){
                var formData = new FormData();
                var file_data = $('#pic').prop('files')[0];
                formData.append('file',file_data);
                $.ajax({
                    url: 'utilidades/upload.php',
                    type: 'post',
                    data: formData,
                    contentType: false,
                    processData: false,
                    success: function(response) {
                        $.post("ctrl/padron_ctrl.php"
                        ,{"usuario_names":usuario_names 
                        ,"usuario_lastnames":usuario_lastnames 
                        ,"usuario_identificacion":usuario_identificacion 
                        ,"usuario_colegio":usuario_colegio 
                        ,"usuario_colegio_ubicacion":usuario_colegio_ubicacion 
                        ,"usuario_direccion":usuario_direccion 
                        ,"accion":accion 
                        ,"url_img":response 
                        }
                        ,function(respuesta){
                            var resp = respuesta.trim();
                                usuario_names_entero = usuario_names+' , '+usuario_lastnames;
                                if(resp == 'AGREGADO CORRECTO'){
                                    alert('AGREGADO CORRECTO');
                                    set_agregar_fila(usuario_names_entero,usuario_identificacion);
                                }else if(resp == 'MODIFICACION REALIZADA'){
                                    alert('MODIFICACION REALIZADA');
                                    location.reload();
                                }else{
                                    alert('ERROR => '+respuesta);
                                }

                     }); 
                    }
                });


    }else{
        alert("faltan datos los obligatorios son nombres,apellidos,identificacion todos deben tener almenos 4 caracteres");
    }
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

function set_agregar_fila(usuario_names_entero,usuario_identificacion,colegio){
    var tableRow = document.getElementById("listado_usuarios");
    var fila = document.createElement("tr");
    var celda1 = document.createElement("td");
    var celda2 = document.createElement("td");
    var celda3 = document.createElement("td");
    celda1.innerHTML = usuario_names_entero;
    celda2.innerHTML = usuario_identificacion;
    celda3.innerHTML = colegio;
    fila.appendChild(celda1);
    fila.appendChild(celda2);
    fila.appendChild(celda3);
    tableRow.appendChild(fila);
}

function set_seleccionar(usuario){
    var accion = 2;//opcion para seleccionar los datos del usuario
    var usuario_select = event.srcElement.id;

    $.post("ctrl/padron_ctrl.php"
    ,{"usuario":usuario_select 
    ,"accion":accion 
    }
    ,function(respuesta){
        var json = $.parseJSON(respuesta);
        console.log(json);

        var usuario_names           = document.getElementById("usuario_names");
        var usuario_lastnames       = document.getElementById("usuario_lastnames");
        var usuario_identificacion  = document.getElementById("usuario_identificacion");
        var usuario_name_acces      = document.getElementById("usuario_colegio") ;
        var usuario_clave           = document.getElementById("usuario_colegio_ubicacion");
        var usuario_tipo            = document.getElementById("usuario_direccion");
        var usuario_logo            = document.getElementById("usuario_logo");
 
        usuario_names.value = json[0];
        usuario_lastnames.value =json[1];
        usuario_identificacion.value =json[2];
        usuario_name_acces.value =json[3];
        usuario_clave.value =json[4];
        usuario_tipo.value = json[5];
        if(json[6]!=null && json[6].length>0){
            usuario_logo.src = "imagenes_subidas/"+json[6];
        }else{
            usuario_logo.src = "imagenes/usuario1.png";
        }

    }); 
}