let elento_seleccionado =0 ;
let fichero_seleccionado ="" ;
let fichero_seleccionado2 ="" ;
let user_type = 0;
let regant_global='';
let regnew_global='';

function set_insertar(){
    var jugadore_name              = document.getElementById("jugador_name").value;
    var jugador_lastname           = document.getElementById("jugador_lastname").value;
    var jugador_fecha_nacimiento   = document.getElementById("jugador_fecha_nacimiento").value ;
    var jugador_cedula             = document.getElementById("jugador_cedula").value ;
    var jugador_direccion          = document.getElementById("jugador_direccion").value ;
    var jugador_equipo             = document.getElementById("jugador_equipo").value ;
    var jugador_evento             = document.getElementById("jugador_evento").value ;
    var url_img                    = document.getElementById("pic").value;
    var url_adjunto                = document.getElementById("adjunto1").value;

    var jugador_estatus               = document.getElementById("jugador_estatus").value;
    var jugador_telefono              = document.getElementById("jugador_telefono").value;
    var jugador_centro                = document.getElementById("jugador_centro").value;


    var accion = 1;

    regnew_global=
    jugadore_name            
    +jugador_lastname        
    +jugador_cedula         
    +jugador_fecha_nacimiento
    +jugador_direccion        
    +jugador_equipo          
    +jugador_estatus  
    +jugador_telefono 
    +jugador_centro  ;

    
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
                set_subir_adjunto1(jugadore_name,jugador_lastname,jugador_fecha_nacimiento,jugador_cedula,jugador_direccion,jugador_equipo,accion,ruta,jugador_estatus,jugador_telefono,jugador_centro,jugador_evento);
            }
        });
    }else{
        alert("los campos nombres,apellidos deben tener al menos 3 caractesres, el campo identifficacion minimo 10 al igual que debe selecionar una fecha de nacimiento formato YYYY-MM-DD");
    }
    
}

function set_seleccionar(id_seleccionado){
    var accion = 2;//opcion para seleccionar los datos del usuario
    var jugador = event.srcElement.id;

    if(jugador>0){
        elento_seleccionado =jugador ;
    }else{
        elento_seleccionado =id_seleccionado ;
    }

    $.post("ctrl/jugadores.php"
    ,{"jugador":elento_seleccionado 
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
        var url_adjunto                = document.getElementById("label_adjunto");
        var jugador_estatus            = document.getElementById("jugador_estatus");
        var jugador_telefono           = document.getElementById("jugador_telefono");
        var jugador_centro             = document.getElementById("jugador_centro");
        var jugador_evento             = document.getElementById("jugador_evento") ;


        //id,nombres,apellidos,identificacion,fecha_nacimiento,direccion,equipo,url_img,url_adjunto1

        jugador_id                        = json[0];
        jugadore_name.value               = json[1];
        jugador_lastname.value            = json[2];
        jugador_cedula.value              = json[3];
        jugador_fecha_nacimiento.value    = json[4];
        jugador_direccion.value           = json[5];
        jugador_equipo.value              = json[6];

        fichero_seleccionado = json[7];
        fichero_seleccionado2 = json[8];

        jugador_estatus.value              = json[9];
        jugador_telefono.value              = json[10];
        jugador_centro.value              = json[11];

        if(json[7]!=null && json[7].length>0){
            usuario_logo.src = "../imagenes_subidas/"+json[7];
        }else{
            usuario_logo.src = "../imagenes/usuario1.png";
        }

        if(json[8]!=null && json[8].length>0){
            //url_adjunto.innerHTML = json[8];
            adjunto_visor.src =  "../archivos_subidos/"+json[8];
            adjunto_href.setAttribute("href",  "../archivos_subidos/"+json[8]);
            adjunto_href.innerHTML= "../archivos_subidos/"+json[8];
        }else{
            url_adjunto.innerHTML ="Adjunto 1";
            adjunto_visor.src = "../archivos_subidos/usuario1.png";
        }


        regant_global=
        jugadore_name.value            
        +jugador_lastname.value         
        +jugador_cedula.value           
        +jugador_fecha_nacimiento.value 
        +jugador_direccion.value        
        +jugador_equipo.value           
        +jugador_estatus.value  
        +jugador_telefono.value 
        +jugador_centro.value   ;


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


function readURL2(input) {

    if((fichero_seleccionado2!=null && fichero_seleccionado2.length>0) && user_type==1){
        alert("ESTE USUARIO NO TIENE PERMISO DE CAMBIAR ESTE DATO UNA VEZ SUBIDO");
    }else{
        const $seleccionArchivos = document.querySelector("#adjunto1");
        $imagenPrevisualizacion = document.querySelector("#adjunto_visor");
    
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
}

function set_agregar_datos_php(jugadore_name,jugador_lastname,jugador_fecha_nacimiento,identificacion,jugador_direccion,jugador_equipo,accion,ruta,ruta2,jugador_estatus,jugador_telefono,jugador_centro,jugador_evento){
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
    ,"id":elento_seleccionado 
    ,"jugador_estatus":jugador_estatus 
    ,"jugador_telefono":jugador_telefono 
    ,"jugador_centro":jugador_centro 
    ,"jugador_evento":jugador_evento
    }
    ,function(respuesta){
        var resp = respuesta.trim();
        if(resp == 'AGREGADO CORRECTO'){
            set_insertar_accion('','A','JUGADORES','','');
            alert('AGREGADO CORRECTO');
        }else if(resp == 'MODIFICACION REALIZADA'){
            set_insertar_accion('','M','JUGADORES','','');
            alert('MODIFICACION REALIZADA');
        }else{
            alert('ERROR => '+respuesta);
        }

 });
}

function set_subir_adjunto1(jugadore_name,jugador_lastname,jugador_fecha_nacimiento,identificacion,jugador_direccion,jugador_equipo,accion,ruta,jugador_estatus,jugador_telefono,jugador_centro,jugador_evento){
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
                 ruta2 = fichero_seleccionado2;
            }

            if((fichero_seleccionado2!=null && fichero_seleccionado2.length>0) && user_type==1){
                ruta2 = fichero_seleccionado2;
            }
            
            set_agregar_datos_php(jugadore_name,jugador_lastname,jugador_fecha_nacimiento,identificacion,jugador_direccion,jugador_equipo,accion,ruta,ruta2,jugador_estatus,jugador_telefono,jugador_centro,jugador_evento);
        }
    });
}

function set_filtrar_listado(){
    var jugador_cedula             = document.getElementById("jugador_cedula").value ;
    var jugador_equipo             = document.getElementById("jugador_equipo").value ;
    var jugador_name               = document.getElementById("jugador_name").value;
    var jugador_apellido           = document.getElementById("jugador_lastname").value;
    
    var listado_jugadores          = document.getElementById("lista_jugadores");

    listado_jugadores.innerHTML = '';

    set_listado_filtrado(jugador_cedula,jugador_equipo,jugador_name,jugador_apellido);
}

function set_agregar_fila(jugadore_name,jugador_lastname,identificacion,id){
    var tableRow = document.getElementById("lista_jugadores");
    var fila = document.createElement("tr");
    var celda1 = document.createElement("td");
    var celda2 = document.createElement("td");
    var celda3 = document.createElement("td");
    celda1.innerHTML = jugadore_name;
    celda2.innerHTML = jugador_lastname;
    celda3.innerHTML = identificacion;

    celda1.onclick = function() {  set_seleccionar(id); };

    fila.appendChild(celda1);
    fila.appendChild(celda2);
    fila.appendChild(celda3);
    tableRow.appendChild(fila);
}

function set_listado_filtrado(jugador_cedula,jugador_equipo,jugador_name,jugador_apellido){
    var accion = 4;//opcion para seleccionar los datos del equipo
    console.log('jugador_cedula'+jugador_cedula)
    console.log('jugador_equipo'+jugador_equipo)
    console.log('jugador_name'+jugador_name)
    console.log('jugador_apellido'+jugador_apellido)

        $.post("ctrl/jugadores.php"
        ,{"identificacion":jugador_cedula 
        ,"jugador_equipo":jugador_equipo 
        ,"jugador_nombre":jugador_name 
        ,"jugador_apellido":jugador_apellido 
        ,"accion":accion 
        }
        ,function(respuesta){
            var listado_jugadores          = document.getElementById("lista_jugadores");
            listado_jugadores.innerHTML = '';
            var json = $.parseJSON(respuesta);
            console.log(json);
            for(i=0;i<json.length;i++){
                //console.log(json[i]);                
                set_agregar_fila(json[i][1],json[i][2],json[i][3],json[i][0]);
            }
        }); 
}


function set_seleccionar_jugador(id_seleccionado){
    var accion = 2;//opcion para seleccionar los datos del usuario

    $.post("ctrl/jugadores.php"
    ,{"jugador":id_seleccionado 
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
        var url_adjunto                = document.getElementById("label_adjunto");
        var jugador_estatus            = document.getElementById("jugador_estatus");
        var jugador_telefono           = document.getElementById("jugador_telefono");
        var jugador_centro             = document.getElementById("jugador_centro");
        var jugador_evento             = document.getElementById("jugador_evento") ;


        //id,nombres,apellidos,identificacion,fecha_nacimiento,direccion,equipo,url_img,url_adjunto1

        jugador_id                        = json[0];
        jugadore_name.value               = json[1];
        jugador_lastname.value            = json[2];
        jugador_cedula.value              = json[3];
        jugador_fecha_nacimiento.value    = json[4];
        jugador_direccion.value           = json[5];
        jugador_equipo.value              = json[6];

        fichero_seleccionado = json[7];
        fichero_seleccionado2 = json[8];

        jugador_estatus.value              = json[9];
        jugador_telefono.value              = json[10];
        jugador_centro.value              = json[11];

        if(json[7]!=null && json[7].length>0){
            usuario_logo.src = "../imagenes_subidas/"+json[7];
        }else{
            usuario_logo.src = "../imagenes/usuario1.png";
        }

        if(json[8]!=null && json[8].length>0){
            //url_adjunto.innerHTML = json[8];
            adjunto_visor.src =  "../archivos_subidos/"+json[8];
            adjunto_href.setAttribute("href",  "../archivos_subidos/"+json[8]);
            adjunto_href.innerHTML= "../archivos_subidos/"+json[8];
        }else{
            url_adjunto.innerHTML ="Adjunto 1";
            adjunto_visor.src = "../archivos_subidos/usuario1.png";
        }
    }); 
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