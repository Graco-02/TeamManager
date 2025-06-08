let elento_seleccionado =0 ;
let fichero_seleccionado ="" ;
let id_seleccionado =0 ;
let name_ant ="" ;
let user_type = 0;
let evento_seleccionado=0;
let usuario_logeado_js='';
let regant_global='';
let regnew_global='';


function set_insertar(){
    var equipo_name                  = document.getElementById("equipo_name").value;
    var equipo_categoria             = document.getElementById("equipo_categoria").value;
    var equipo_circunscripcion       = document.getElementById("equipo_circunscripcion").value;
    var equipo_anio                  = document.getElementById("equipo_anio").value;
    var equipo_rama                  = document.getElementById("equipo_rama").value;
    var equipo_entrenador            = document.getElementById("equipo_entrenador").value;
    var equipo_entrenador_tel        = document.getElementById("equipo_entrenador_tel").value;
    var equipo_delegado              = document.getElementById("equipo_delegado").value;
    var equipo_delegado_tel          = document.getElementById("equipo_delegado_tel").value;

    var equipo_municipio       = document.getElementById("equipo_municipio").value;
    var equipo_sector   = document.getElementById("equipo_sector").value ;
    var url_img      = document.getElementById("pic").value;
    var accion = 1;

    if(elento_seleccionado>0){
        accion = 3;
    }
    
    
    regnew_global="";

    regnew_global=
    +equipo_name             
    +equipo_categoria        
    +equipo_circunscripcion  
    +equipo_anio             
    +equipo_rama             
    +equipo_entrenador       
    +equipo_entrenador_tel  
    +equipo_delegado         
    +equipo_delegado_tel    
    +equipo_municipio    
    +equipo_sector   ;   

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
                ,"equipo_categoria":equipo_categoria 
                ,"equipo_circunscripcion":equipo_circunscripcion 
                ,"equipo_anio":equipo_anio 
                ,"equipo_rama":equipo_rama 
                ,"equipo_entrenador":equipo_entrenador 
                ,"equipo_entrenador_tel":equipo_entrenador_tel 
                ,"equipo_delegado":equipo_delegado 
                ,"equipo_delegado_tel":equipo_delegado_tel 
                ,"equipo_municipio":equipo_municipio 
                ,"equipo_sector":equipo_sector 
                ,"accion":accion 
                ,"url_img":ruta 
                ,"id":elento_seleccionado 
                ,"name_ant":name_ant
                }
                ,function(respuesta){
                    var resp = respuesta.trim();
                    if(resp == 'AGREGADO CORRECTO'){
                        set_insertar_accion('','A','EQUIPOS',"","");
                        alert('AGREGADO CORRECTO');
                    }else if(resp == 'MODIFICACION REALIZADA'){
                        set_insertar_accion('','M','EQUIPOS',"","");
                        alert('MODIFICACION REALIZADA');
                    }else{
                        alert('ERROR MANIPULANDO EQUIPOS => '+respuesta);
                    }

             }); 
            }
        });
    }
    
}

function set_seleccionar(equipo){
    var accion = 2;//opcion para seleccionar los datos del usuario
    var equipo = event.srcElement.id;
    regant_global="";
    elento_seleccionado =equipo ;

    $.post("ctrl/equipos.php"
    ,{"equipo":equipo 
    ,"accion":accion 
    }
    ,function(respuesta){
        var json = $.parseJSON(respuesta);
        console.log(json);  

        var equipo_name                  = document.getElementById("equipo_name");
        var equipo_categoria             = document.getElementById("equipo_categoria");
        var equipo_circunscripcion       = document.getElementById("equipo_circunscripcion");
        var equipo_anio                  = document.getElementById("equipo_anio");
        var equipo_rama                  = document.getElementById("equipo_rama");
        var equipo_entrenador            = document.getElementById("equipo_entrenador");
        var equipo_entrenador_tel        = document.getElementById("equipo_entrenador_tel");
        var equipo_delegado              = document.getElementById("equipo_delegado");
        var equipo_delegado_tel          = document.getElementById("equipo_delegado_tel");

        var equipo_municipio       = document.getElementById("equipo_municipio");
        var equipo_sector          = document.getElementById("equipo_sector");
        var url_img                = document.getElementById("pic");
        var usuario_logo            = document.getElementById("usuario_logo");

        id_seleccionado        = json[0];
        equipo_name.value      = json[1];
        equipo_municipio.value = json[2];
        equipo_sector.value    = json[3];
        var equipo_estado      = json[5];

        equipo_categoria.value             = json[6];
        equipo_circunscripcion.value       = json[7];
        equipo_anio.value                  = json[8];
        equipo_rama.value                  = json[9];
        equipo_entrenador.value            = json[10];
        equipo_entrenador_tel.value        = json[11];
        equipo_delegado.value              = json[12];
        equipo_delegado_tel.value          = json[13];


        fichero_seleccionado = json[4];

        name_ant=json[1];

        if(json[4]!=null && json[4].length>0){
            usuario_logo.src = "../imagenes_subidas/"+json[4];
        }else{
            usuario_logo.src = "../imagenes/usuario1.png";
        }


        regant_global=
        +equipo_name.value             
        +equipo_categoria.value        
        +equipo_circunscripcion.value  
        +equipo_anio.value             
        +equipo_rama.value             
        +equipo_entrenador.value       
        +equipo_entrenador_tel.value   
        +equipo_delegado.value         
        +equipo_delegado_tel.value     
        +equipo_municipio.value    
        +equipo_sector.value    ;   

        set_relacion_equipo();
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

function set_agregar_fila_jugador(jugador_name,jugador_lastname,jugador_identificacion,id){
    var tableRow = document.getElementById("jugadores");
    var fila = document.createElement("tr");
    var celda1 = document.createElement("td");
    var celda2 = document.createElement("td");
    var celda3 = document.createElement("td");
    var celda4 = document.createElement("button");   
    var celda5 = document.createElement("button");


    celda1.innerHTML = jugador_name;
    celda2.innerHTML = jugador_lastname;
    celda3.innerHTML = jugador_identificacion;
    celda4.innerHTML ="SACAR";
    celda5.innerHTML ="VER";

    celda4.onclick = function() { set_sacar_jugador(id);};
    celda5.onclick = function() { location.href="../jugadores/visor_jugador.php?jugador="+id};

    fila.appendChild(celda1);
    fila.appendChild(celda2);
    fila.appendChild(celda3);
    if(user_type==0){
        fila.appendChild(celda4);
    }
    fila.appendChild(celda5);
    tableRow.appendChild(fila);
}

function set_relacion_equipo(){
    var accion = 4;//opcion para seleccionar los datos del equipo
    if(id_seleccionado>0){//primera validacion de que se ha seleccionado un elemento
        $.post("ctrl/equipos.php"
        ,{"equipo":id_seleccionado 
        ,"accion":accion 
        ,"evento":evento_seleccionado 
        }
        ,function(respuesta){
            var tableRow = document.getElementById("jugadores");
            tableRow.innerHTML="";
            try{
            var json = $.parseJSON(respuesta);
            for(i=0;i<json.length;i++){              
                set_agregar_fila_jugador(json[i][1],json[i][2],json[i][3],json[i][0]);
            }
           }catch(e){
            //console.log(e);
           }
        }); 
    }else{
        alert('DEBE SELECCIONAR UN EVENTO PRIMERO');
    }
}

function set_sacar_jugador(id){
    var accion = 5;//opcion para eliminar jugador

    $.post("ctrl/equipos.php"
    ,{"equipo":id_seleccionado 
    ,"jugador":id 
    ,"accion":accion 
    }
    ,function(respuesta){
        alert(respuesta); location.reload(); 
    }); 
}


function set_seleccionar_view(equipo){
    var accion = 2;//opcion para seleccionar los datos del usuario
    elento_seleccionado =equipo ;
    id_seleccionado =equipo; 

    $.post("ctrl/equipos.php"
    ,{"equipo":equipo 
    ,"accion":accion 
    }
    ,function(respuesta){
        var json = $.parseJSON(respuesta);
        console.log(json);  

        var equipo_name                  = document.getElementById("equipo_name");
        var equipo_categoria             = document.getElementById("equipo_categoria");
        var equipo_circunscripcion       = document.getElementById("equipo_circunscripcion");
        var equipo_anio                  = document.getElementById("equipo_anio");
        var equipo_rama                  = document.getElementById("equipo_rama");
        var equipo_entrenador            = document.getElementById("equipo_entrenador");
        var equipo_entrenador_tel        = document.getElementById("equipo_entrenador_tel");
        var equipo_delegado              = document.getElementById("equipo_delegado");
        var equipo_delegado_tel          = document.getElementById("equipo_delegado_tel");

        var equipo_municipio       = document.getElementById("equipo_municipio");
        var equipo_sector          = document.getElementById("equipo_sector");
        var url_img                = document.getElementById("pic");
        var usuario_logo            = document.getElementById("usuario_logo");

        id_seleccionado        = json[0];
        equipo_name.value      = json[1];
        equipo_municipio.value = json[2];
        equipo_sector.value    = json[3];
        var equipo_estado      = json[5];

        equipo_categoria.value             = json[6];
        equipo_circunscripcion.value       = json[7];
        equipo_anio.value                  = json[8];
        equipo_rama.value                  = json[9];
        equipo_entrenador.value            = json[10];
        equipo_entrenador_tel.value        = json[11];
        equipo_delegado.value              = json[12];
        equipo_delegado_tel.value          = json[13];


        fichero_seleccionado = json[4];

        name_ant=json[1];

        if(json[4]!=null && json[4].length>0){
            usuario_logo.src = "../imagenes_subidas/"+json[4];
        }else{
            usuario_logo.src = "../imagenes/usuario1.png";
        }

        set_relacion_equipo();
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