let elento_seleccionado =0 ;
let fichero_seleccionado ="" ;
let fichero_seleccionado2 ="" ;
let user_type = 0;
let regant_global='';
let regnew_global='';
let estado_jugador=false;
let id_equipo=0;
let desde=0;
let paginacion=15;
var evento_seleccionado;
var jugador_seleccionado;

function set_insertar(){
    var jugador_equipo             = document.getElementById("jugador_equipo").value 
    var url_adjunto                = document.getElementById("adjunto1").value;

    var accion = 1;
    set_subir_adjunto1();
}

function set_seleccionar_2(numdoc_lista){
    var accion = 5;//opcion para seleccionar los datos del usuario
    var jugador_equipo     = document.getElementById("jugador_equipo").value ;
    console.log('numdoc.:',numdoc_lista)
    
    $.post("ctrl/prestamos.php"
    ,{"jugador":elento_seleccionado 
    ,"accion":accion 
    ,"jugador_cedula":numdoc_lista
    }
    ,function(respuesta){
        try{
            var json = $.parseJSON(respuesta)[0];
            var jugador_id =0;
            var jugadore_name              = document.getElementById("jugador_name");
            var jugador_lastname           = document.getElementById("jugador_lastname");
            var jugador_fecha_nacimiento   = document.getElementById("jugador_fecha_nacimiento") ;
            var jugador_cedula             = document.getElementById("jugador_cedula") ;
            var jugador_direccion          = document.getElementById("jugador_direccion") ;
            var jugador_equipo             = document.getElementById("jugador_equipo") ;
            var url_img                    = document.getElementById("pic");
            var url_adjunto                = document.getElementById("label_adjunto");
            var jugador_telefono           = document.getElementById("jugador_telefono");
            var jugador_centro             = document.getElementById("jugador_centro");
            var jugador_evento             = document.getElementById("jugador_evento") ;
            var jugador_sistem_estatus     = document.getElementById("jugador_estatus") ;
            var jugador_id_centro          = document.getElementById("jugador_id_centro") ;
            var prestamo_fecha_fin         = document.getElementById("prestamo_fecha_fin") ;
            
            elento_seleccionado               = json[0];
            jugador_id                        = json[0];
            jugadore_name.value               = json[1];
            jugador_lastname.value            = json[2];
            jugador_cedula.value              = json[3];
            jugador_sistem_estatus.value      = json[9];
            jugador_fecha_nacimiento.value    = json[4];
            jugador_direccion.value           = json[5];
            jugador_equipo.value              = json[6];

            fichero_seleccionado = json[7];
            fichero_seleccionado2 = json[8];

            jugador_telefono.value              = json[10];
            jugador_centro.value                = json[11];
            jugador_id_centro.value             = json[12];



            if(json[7]!=null && json[7].length>0){
                usuario_logo.src = "../imagenes_subidas/"+json[7];
            }else{
                usuario_logo.src = "../imagenes/usuario1.png";
            }
 
            if(json[14]!=null && json[14].length>0){
                adjunto_visor.src =  "../archivos_subidos/"+json[14];
                adjunto_href.setAttribute("href",  "../archivos_subidos/"+json[14]);
                adjunto_href.innerHTML= "../archivos_subidos/"+json[14];
            }else{
                url_adjunto.innerHTML ="Adjunto 1";
                adjunto_visor.src = "../archivos_subidos/usuario1.png";
            }
            
            prestamo_fecha_fin.value = json[15];

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

            var bt_agregar = document.getElementById('bt_agregar');
            if(json[13]=='2' && user_type!= 0){
               bt_agregar.style.visibility = 'hidden';
            }else{
                bt_agregar.style.visibility = 'visible';
            }
        }catch(error){
            console.log(''+respuesta);
        }
    }); 
}

function set_seleccionar(id_seleccionado){
    var accion = 1;//opcion para seleccionar los datos del usuario
    var jugador_cedula     = document.getElementById("jugador_cedula").value ;
    var jugador_equipo     = document.getElementById("jugador_equipo").value ;

    $.post("ctrl/prestamos.php"
    ,{"jugador":elento_seleccionado 
    ,"accion":accion 
    ,"jugador_cedula":jugador_cedula
    }
    ,function(respuesta){
        try{
            var json = $.parseJSON(respuesta);
            jugador_seleccionado = json;
            //console.log(jugador_seleccionado);

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
            var jugador_sistem_estatus     = document.getElementById("jugador_sistem_estatus") ;
            var jugador_id_centro          = document.getElementById("jugador_id_centro") ;


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

            jugador_estatus.value               = json[9];
            jugador_telefono.value              = json[10];
            jugador_centro.value                = json[11];
            jugador_id_centro.value             = json[12];
            jugador_sistem_estatus.value        = json[13];
            //console.log('jugador estatus = '+json[13]);

            if(user_type==0){
               if(json[13]=='1'){
               //    jugador_sistem_estatus.innerHTML = "VALIDADO"; 
                   estado_jugador=true;
                  // console.log('estatus validado');
               }else{
                   estado_jugador=false;
                //   jugador_sistem_estatus.innerHTML = "SIN VALIDAR"; 
               }
            }else{
               if(json[13]=='1'){
                   jugador_sistem_estatus.innerHTML = "VALIDADO"; 
                   estado_jugador=true;
               }else{
                   estado_jugador=false;
                   switch (json[13]) {
                    case '2':
                        jugador_sistem_estatus.innerHTML = "PENDIENTE"; 
                        break;
                    case '3':
                        jugador_sistem_estatus.innerHTML = "POR CONFIRMAR"; 
                        break;                    
                    default:
                        jugador_sistem_estatus.innerHTML = "SIN VALIDAR"; 
                        break;
                   }

               }
            }


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

            var bt_agregar = document.getElementById('bt_agregar');
            if(json[13]=='2' && user_type!= 0){
               bt_agregar.style.visibility = 'hidden';
            }else{
                bt_agregar.style.visibility = 'visible';
            }
        }catch(error){
            console.log(''+respuesta);
        }
    }); 
}

function set_seleccionar_datos_evento_equipo_temp(){
        var jugador_evento    = document.getElementById("jugador_evento").value ;
        var jugador_equipo_temp     = document.getElementById("jugador_equipo_temporal").value ;
        var listado_jugadores          = document.getElementById("lista_jugadores");
        listado_jugadores.innerHTML = '';
        if(jugador_equipo_temp!=0 && jugador_evento!=0){
        var accion = 2;//opcion para seleccionar los datos del equipo solicitante      
        set_seleccionar_datos_evento(); // hago la solicitud de los datos del evento 
            $.post("ctrl/prestamos.php"
                  ,{"jugador_evento":jugador_evento 
                  ,"accion":accion 
                  ,"jugador_equipo_temp":jugador_equipo_temp
                  }
                  ,function(respuesta){
                    try{
                       var json = $.parseJSON(respuesta);
                       for(i=0;i<json.length;i++){
                             //console.log(json[i]);                
                             set_agregar_fila(json[i][1],json[i][2],json[i][3],json[i][0],json[i][12],json[i][4],json[i][13]);
                       } 
                    }catch(e){
                        console.log(respuesta);
                    }
                  }
            ); 
        }
}

function set_seleccionar_datos_evento(){
        var jugador_evento    = document.getElementById("jugador_evento").value ;
        var accion = 3;//opcion para seleccionar los datos del equipo solicitante

            $.post("ctrl/prestamos.php"
                  ,{"jugador_evento":jugador_evento 
                  ,"accion":accion 
                  }
                  ,function(respuesta){
                    try{
                       evento_seleccionado = $.parseJSON(respuesta);
                       alert('Seleccion correcta');
                       var prestamo_fecha_ini   = document.getElementById("prestamo_fecha_ini") ;
                       prestamo_fecha_ini.value = evento_seleccionado[5];
                    }catch(e){
                        console.log(respuesta);
                    }
                  }
            ); 
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

function set_subir_adjunto1(){
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

            if((fichero_seleccionado2!=null && fichero_seleccionado2.length>0)){
                ruta2 = fichero_seleccionado2;
            }
            console.log('archivos subidos ahora intento agregar');
            if(elento_seleccionado!=0){
                alert('modificacion');
            }else{
                inserta_traslado(ruta2);
            }
        }
    });
}

function inserta_traslado(ruta_archivo) {
    var jugador_equipo_temporal        = document.getElementById("jugador_equipo_temporal").value 
    var prestamo_fecha_ini             = document.getElementById("prestamo_fecha_ini").value 
    var prestamo_fecha_fin             = document.getElementById("prestamo_fecha_fin").value 
    var jugador_equipo_base            = jugador_seleccionado[6]; 
    var id_evento                      = evento_seleccionado[0];
    var id_jugador                     = jugador_seleccionado[0];
    var carta                          = ruta_archivo;
    var accion = 4;//opcion para insertar el traslado

    $.post("ctrl/prestamos.php"
    ,{"jugador_equipo_temporal":jugador_equipo_temporal 
    ,"prestamo_fecha_ini":prestamo_fecha_ini 
    ,"prestamo_fecha_fin":prestamo_fecha_fin 
    ,"jugador_equipo_base":jugador_equipo_base 
    ,"id_evento":id_evento 
    ,"id_jugador":id_jugador 
    ,"carta":carta 
    ,"accion":accion 
    }
    ,function(respuesta){
       console.log(respuesta);
       set_seleccionar_datos_evento_equipo_temp();//envio la peticion para actualizar el listado de traslados
    }); 
}

function set_agregar_fila(jugadore_name,jugador_lastname,identificacion,id,id_escolar,fecha_nacimiento,equipo){
    var tableRow = document.getElementById("lista_jugadores");
    var fila = document.createElement("tr");
    var celda1 = document.createElement("td");
    var celda2 = document.createElement("td");
    var celda3 = document.createElement("td");
    var celda4 = document.createElement("td");
    var celda5 = document.createElement("td");
    var celda6 = document.createElement("td");
    celda1.innerHTML = jugadore_name;
    celda2.innerHTML = jugador_lastname;
    celda3.innerHTML = identificacion;
    celda4.innerHTML = id_escolar;
    celda5.innerHTML = fecha_nacimiento;
    celda6.innerHTML = equipo;

    celda1.onclick = function() {  set_seleccionar_2(identificacion); };

    fila.appendChild(celda1);
    fila.appendChild(celda2);
    fila.appendChild(celda3);
    fila.appendChild(celda4);
    fila.appendChild(celda5);
    fila.appendChild(celda6);
    tableRow.appendChild(fila);
}

function set_listado_filtrado(jugador_cedula,jugador_equipo,jugador_name,jugador_apellido){
    var accion = 4;//opcion para seleccionar los datos del equipo
   // alert(jugador_cedula + " "+ jugador_cedula.length);
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
                console.log(json[i]);                
                set_agregar_fila(json[i][1],json[i][2],json[i][3],json[i][0],json[i][12],json[i][4],json[i][13]);
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
        var jugador_sistem_estatus     = document.getElementById("jugador_sistem_estatus") ;
        var jugador_id_centro          = document.getElementById("jugador_id_centro") ;


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
        jugador_telefono.value             = json[10];
        jugador_centro.value               = json[11];
        jugador_id_centro.value            = json[12];

        if(json[7]!=null && json[7].length>0){
            usuario_logo.src = "../imagenes_subidas/"+json[7];
        }else{
            usuario_logo.src = "../imagenes/usuario1.png";
        }

        if(json[13]==1 && user_type==1){
              jugador_sistem_estatus.innerHTML = "VALIDADO"; 
        }else{
            jugador_sistem_estatus.value = json[13];
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


function set_validar_anio(){
    if (event.keyCode === 13 || event.which === 13) {
        set_lista_jugadores_paginable_filtrada();
    }
}

function set_lista_jugadores_paginable(){
    var accion = 8;//opcion para seleccionar los datos del usuario
    //console.log("id_equipo "+id_equipo,"desde "+desde,"paginacion "+paginacion);
    $.post("ctrl/jugadores.php"
    ,{"id_equipo":id_equipo 
    ,"desde":desde 
    ,"paginacion":paginacion 
    ,"accion":accion 
    }
    ,function(respuesta){
            var listado_jugadores          = document.getElementById("lista_jugadores");
            //console.log(respuesta);
            if(desde>=0){
                listado_jugadores.innerHTML = respuesta;
            }
    }); 
}

function set_lista_jugadores_paginable_filtrada(){
    var accion = 9;//opcion para seleccionar los datos del usuario
    //console.log("id_equipo "+id_equipo,"desde "+desde,"paginacion "+paginacion);
    var equipo_filtro = document.getElementById('filtro_equipo').value;
    var estatus_filtro = document.getElementById('filtro_estatus').value;
    var anio_filtro = document.getElementById('txt_anio').value;
    console.log("id_equipo "+id_equipo,"desde "+desde,"paginacion "+paginacion," equipo "+equipo_filtro," estatus "+estatus_filtro," anio_filtro ",anio_filtro);
    
    $.post("ctrl/jugadores.php"
    ,{"id_equipo":equipo_filtro 
    ,"desde":desde 
    ,"paginacion":paginacion 
    ,"estatus":estatus_filtro 
    ,"anio_filtro":anio_filtro 
    ,"accion":accion 
    }
    ,function(respuesta){
            var listado_jugadores          = document.getElementById("lista_jugadores");
            //console.log(respuesta);
            if(desde>=0){
                listado_jugadores.innerHTML = respuesta;
            }
    }); 
}

function set_paginar_adelante(){
    desde+=paginacion;
   // desde+=1;
    if(user_type == 0 || user_type == 2){
    var equipo_filtro = document.getElementById('filtro_equipo').value;
    var estatus_filtro = document.getElementById('filtro_estatus').value;
    var anio_filtro = document.getElementById('txt_anio').value;
    console.log('equipo_filtro ',equipo_filtro);

    if(equipo_filtro!='0' || estatus_filtro!='x' || anio_filtro.length > 0){
        set_lista_jugadores_paginable_filtrada();
    }else{     
        set_lista_jugadores_paginable();
    }
    }else{
        set_lista_jugadores_paginable();
    }
}

function set_paginar_atras(){
    desde-=paginacion;
   if(desde<0){
    desde=0;
   }
    if(user_type == 0 || user_type == 2){ 
    var equipo_filtro = document.getElementById('filtro_equipo').value;
    var estatus_filtro = document.getElementById('filtro_estatus').value;
    var anio_filtro = document.getElementById('txt_anio').value;
    console.log('equipo_filtro ',equipo_filtro);
    if(equipo_filtro!='0' || estatus_filtro!='x' || anio_filtro!='' || anio_filtro.length > 0){
        set_lista_jugadores_paginable_filtrada();
    }else{     
        set_lista_jugadores_paginable();
    }
    }else{
        set_lista_jugadores_paginable();
    }
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
      //  location.reload();
 });
}

function set_eliminar_jugador(id_jugador){
    //alert('eliminado jugado..: '+id_jugador);
    var accion = 5;//opcion para seleccionar los datos del usuario

    $.post("ctrl/jugadores.php"
    ,{"jugador":id_jugador 
    ,"accion":accion 
    }
    ,function(respuesta){
        console.log(respuesta);
        if (respuesta=='CORRECTO') {
           set_insertar_accion('','B','JUGADORES','','');
        }

    }); 
}

function set_modficacion_restringida(){
    var accion = 0;//opcion para seleccionar los datos del usuario
    var jugador_equipo             = document.getElementById("jugador_equipo").value ;
    var jugador_evento             = document.getElementById("jugador_evento").value ;
    console.log('set_modficacion_restringida ' , jugador_evento);

    switch (jugador_evento) {
        case 'y':
               accion = 6;
            break;
        case 'x':
             accion = 7;
            break;    
        default:
            if(Number(jugador_evento)<=0){
              alert('NO SE PUEDE REALIZAR MDIFICACION');
            }else{
                accion = 6;
            }
            break;
    }

    
    if(accion==6 || accion==7){
        $.post("ctrl/jugadores.php"
        ,{"id":elento_seleccionado 
        ,"jugador_equipo":jugador_equipo 
        ,"jugador_evento":jugador_evento 
        ,"accion":accion 
        }
        ,function(respuesta){
            console.log(respuesta);
            if (respuesta=='CORRECTO') {
               set_insertar_accion('','M','JUGADORES','','');
               alert('Modificacion realziada');
            }else{
                alert(respuesta);
            }
    
        }); 
    }
}

function get_valdiaciones_identifiacion(e){
    var key = window.event ? e.which : e.keyCode;
    let txt_identificacion = document.getElementById('jugador_cedula').value;
    let txt_identificacion_ct = document.getElementById('jugador_cedula');
    if (key < 48 || key > 57) { // Códigos ASCII para 0-9
        e.preventDefault();
    }
    if(txt_identificacion.length==3 || txt_identificacion.length==11 ){
        txt_identificacion=txt_identificacion+'-';
        txt_identificacion_ct.value = txt_identificacion;
    }
}

function get_valdiaciones_identifiacion_pegar(e){

    let txt_identificacion = document.getElementById('jugador_cedula').value;
    let txt_identificacion_ct = document.getElementById('jugador_cedula');
    
    for (const caracter of txt_identificacion) {
       if(
          caracter != '-' && 
          caracter != '0' && 
          caracter != '1' &&
          caracter != '2' &&
          caracter != '3' &&
          caracter != '4' &&
          caracter != '5' &&
          caracter != '6' &&
          caracter != '7' &&
          caracter != '8' &&
          caracter != '9' 
       ){
           alert('IDENTIFICACION NO VALIDA');
       }
    }
}