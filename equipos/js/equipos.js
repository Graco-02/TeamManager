let elento_seleccionado =0 ;
let fichero_seleccionado ="" ;

function set_insertar(){
    var equipo_name              = document.getElementById("equipo_name").value;
    var equipo_municipio       = document.getElementById("equipo_municipio").value;
    var equipo_sector   = document.getElementById("equipo_sector").value ;
    var url_img      = document.getElementById("pic").value;
    var accion = 1;

    if(elento_seleccionado>0){
        accion = 3;
    }
    
    if(equipo_name.length>=3){
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
                var ruta ='';
                if(file_data!=null){
                    ruta=response;
                }else{
                     ruta = fichero_seleccionado;
                }

                $.post("ctrl/equipos.php"
                ,{"equipo_name":equipo_name 
                ,"equipo_municipio":equipo_municipio 
                ,"equipo_sector":equipo_sector 
                ,"accion":accion 
                ,"url_img":ruta 
                ,"id":elento_seleccionado 
                }
                ,function(respuesta){
                    var resp = respuesta.trim();
                    if(resp == 'AGREGADO CORRECTO'){
                        alert('AGREGADO CORRECTO');
                        location.reload();
                    }else if(resp == 'MODIFICACION REALIZADA'){
                        alert('MODIFICACION REALIZADA');
                        location.reload();
                    }else{
                        alert('ERROR => '+respuesta);
                    }

             }); 
            }
        });
    }
    
}

function set_seleccionar(equipo){
    var accion = 2;//opcion para seleccionar los datos del usuario
    var equipo = event.srcElement.id;
    elento_seleccionado =equipo ;

    $.post("ctrl/equipos.php"
    ,{"equipo":equipo 
    ,"accion":accion 
    }
    ,function(respuesta){
        var json = $.parseJSON(respuesta);

        var equipo_name            = document.getElementById("equipo_name");
        var equipo_municipio       = document.getElementById("equipo_municipio");
        var equipo_sector          = document.getElementById("equipo_sector");
        var url_img                = document.getElementById("pic");
        var usuario_logo            = document.getElementById("usuario_logo");
        var evento_id=0;

        evento_id              = json[0];
        equipo_name.value      = json[1];
        equipo_municipio.value = json[2];
        equipo_sector.value    = json[3];
        var equipo_estado      = json[5];
        fichero_seleccionado = json[4];

        if(json[4]!=null && json[4].length>0){
            usuario_logo.src = "../imagenes_subidas/"+json[4];
        }else{
            usuario_logo.src = "../imagenes/usuario1.png";
        }
    }); 
}

function set_agregar_fila(evento_name,evento_fecha_inicio){
    var tableRow = document.getElementById("listado_usuarios");
    var fila = document.createElement("tr");
    var celda1 = document.createElement("td");
    var celda2 = document.createElement("td");
    var celda3 = document.createElement("td");
    celda1.innerHTML = evento_name;
    celda2.innerHTML = evento_fecha_inicio;
    fila.appendChild(celda1);
    fila.appendChild(celda2);
    tableRow.appendChild(fila);
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
