let elento_seleccionado =0 ;
let fichero_seleccionado ="" ;

function set_insertar(){
    var jugadore_name              = document.getElementById("jugador_name").value;
    var jugador_lastname           = document.getElementById("jugador_lastname").value;
    var jugador_fecha_nacimiento   = document.getElementById("jugador_fecha_nacimiento").value ;
    var jugador_cedula             = document.getElementById("jugador_cedula").value ;
    var jugador_direccion          = document.getElementById("jugador_direccion").value ;
    var jugador_equipo             = document.getElementById("jugador_equipo").value ;
    var url_img                    = document.getElementById("pic").value;
    var url_adjunto                = document.getElementById("adjunto1").value;
    var accion = 1;

    if(elento_seleccionado>0){
        accion = 3;
    }
    
    if(jugadore_name.length>=3 && jugador_lastname.length>=3 && jugador_cedula.length>=10 && jugador_fecha_nacimiento.length>=10){
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
                set_subir_adjunto1(jugadore_name,jugador_lastname,jugador_fecha_nacimiento,jugador_cedula,jugador_direccion,jugador_equipo,accion,ruta);
            }
        });
    }else{
        alert("los campos nombres,apellidos deben tener al menos 3 caractesres, el campo identifficacion minimo 10 al igual que debe selecionar una fecha de nacimiento formato YYYY-MM-DD");
    }
    
}

function set_seleccionar(jugador){
    var accion = 2;//opcion para seleccionar los datos del usuario
    var jugador = event.srcElement.id;
    elento_seleccionado =jugador ;

    $.post("ctrl/jugadores.php"
    ,{"jugador":jugador 
    ,"accion":accion 
    }
    ,function(respuesta){
        var json = $.parseJSON(respuesta);
        console.log(json);

        var jugador_id =0;
        var jugadore_name              = document.getElementById("jugador_name");
        var jugador_lastname           = document.getElementById("jugador_lastname");
        var jugador_fecha_nacimiento   = document.getElementById("jugador_fecha_nacimiento") ;
        var jugador_cedula             = document.getElementById("jugador_cedula") ;
        var jugador_direccion          = document.getElementById("jugador_direccion") ;
        var jugador_equipo             = document.getElementById("jugador_equipo") ;
        var url_img                    = document.getElementById("pic");
        var url_adjunto                = document.getElementById("adjunto1");


        //id,nombres,apellidos,identificacion,fecha_nacimiento,direccion,equipo,url_img,url_adjunto1

        jugador_id                        = json[0];
        jugadore_name.value               = json[1];
        jugador_lastname.value            = json[2];
        jugador_cedula.value              = json[3];
        jugador_fecha_nacimiento.value    = json[4];
        jugador_direccion.value           = json[5];
        jugador_equipo.value              = json[6];

        fichero_seleccionado = json[7];

        if(json[7]!=null && json[7].length>0){
            usuario_logo.src = "../imagenes_subidas/"+json[7];
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


function set_agregar_datos_php(jugadore_name,jugador_lastname,jugador_fecha_nacimiento,identificacion,jugador_direccion,jugador_equipo,accion,ruta,ruta2){
    $.post("ctrl/jugadores.php"
    ,{"jugadore_name":jugadore_name 
    ,"jugador_lastname":jugador_lastname 
    ,"jugador_fecha_nacimiento":jugador_fecha_nacimiento 
    ,"identificacion":identificacion 
    ,"jugador_direccion":jugador_direccion 
    ,"jugador_equipo":jugador_equipo 
    ,"accion":accion 
    ,"url_img":ruta 
    ,"url_adjunto":ruta2 
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

function set_subir_adjunto1(jugadore_name,jugador_lastname,jugador_fecha_nacimiento,identificacion,jugador_direccion,jugador_equipo,accion,ruta){
    var formData = new FormData();
    var file_data = $('#adjunto1').prop('files')[0];
    formData.append('file',file_data);

    $.ajax({
        url: '../utilidades/upload2.php',
        type: 'post',
        data: formData,
        contentType: false,
        processData: false,
        success: function(response) {
            var ruta2 ='';
            if(file_data!=null){
                ruta2=response;
            }else{
                 ruta2 = fichero_seleccionado;
            }

            set_agregar_datos_php(jugadore_name,jugador_lastname,jugador_fecha_nacimiento,identificacion,jugador_direccion,jugador_equipo,accion,ruta,ruta2);
        }
    });
}