let elento_seleccionado =0 ;
let elento_id_seleccionado =0 ;
let user_type = 0;
let regant_global='';
let regnew_global='';

function set_insertar(){
    var evento_name              = document.getElementById("evento_name").value;
    var evento_num_equipos       = Number(document.getElementById("evento_num_equipos").value);
    var evento_num_jug_equipos   = Number(document.getElementById("evento_num_jug_equipos").value) ;
    var evento_descripcion       = document.getElementById("evento_descripcion").value;
    var evento_descripcion       = document.getElementById("evento_descripcion").value;
    var check_estado_evento      = document.getElementById("check_estado_evento").value;
    var evento_fecha_inicio      = document.getElementById("evento_fecha_inicio").value;
    var accion = 1;

    regnew_global=
    evento_name
   +evento_num_equipos
   +evento_num_jug_equipos
   +evento_descripcion
   +evento_fecha_inicio
   +check_estado_evento;

    if(user_type==0){
        if(elento_seleccionado>0){
            accion = 3;
        }
        
        $.post("ctrl/eventos.php"
        ,{"evento_name":evento_name 
        ,"evento_num_equipos":evento_num_equipos 
        ,"evento_num_jug_equipos":evento_num_jug_equipos 
        ,"evento_descripcion":evento_descripcion 
        ,"evento_fecha_inicio":evento_fecha_inicio
        ,"check_estado_evento":check_estado_evento 
        ,"accion":accion 
        ,"id":elento_seleccionado 
        },function(respuesta){
            console.log(respuesta);
            var resp = respuesta.trim();
                if(resp == 'AGREGADO CORRECTO'){
                    set_insertar_accion('usuario','A','EVENTOS','regant','regnew');
                    alert('AGREGADO CORRECTO');
                }else if(resp == 'MODIFICACION REALIZADA'){
                    set_insertar_accion('usuario','M','EVENTOS','regant','regnew');
                    alert('MODIFICACION REALIZADA');
                }else{
                    alert('ERROR => '+respuesta);
                }
    
        }); 


    }else{
        alert("este tipo de usuario no tiene permitido cambiar o agregar datos a este modulo");
    }

}

function set_seleccionar(evento){
    var accion = 2;//opcion para seleccionar los datos del usuario
    var evento = event.srcElement.id;
    elento_seleccionado =evento ;

    $.post("ctrl/eventos.php"
    ,{"evento":evento 
    ,"accion":accion 
    }
    ,function(respuesta){
        var json = $.parseJSON(respuesta);
        console.log(json);

        var evento_name              = document.getElementById("evento_name");
        var evento_num_equipos       = document.getElementById("evento_num_equipos");
        var evento_num_jug_equipos   = document.getElementById("evento_num_jug_equipos") ;
        var evento_descripcion       = document.getElementById("evento_descripcion");
        var evento_fecha_inicio      = document.getElementById("evento_fecha_inicio");
        var evento_estado            = document.getElementById("check_estado_evento");
        elento_id_seleccionado= json[0];

        evento_name.value = json[1];
        evento_num_equipos.value = json[2];
        evento_num_jug_equipos.value = json[3];
        evento_descripcion.value = json[4];
        evento_fecha_inicio.value = json[5];
        evento_estado.value = json[6];


        regant_global=
        evento_name.value
       +evento_num_equipos.value 
       +evento_num_jug_equipos.value
       +evento_descripcion.value 
       +evento_fecha_inicio.value;


        var tableRow = document.getElementById("lista_equipos_evento").innerHTML="";
        set_relacion_equipo();
    }); 
}

function set_agregar_fila(evento_name,municipio,sector,id,validacion,cantidad_jugadores){
    var tableRow = document.getElementById("lista_equipos_evento");
    var fila = document.createElement("tr");
    var celda1 = document.createElement("td");
    var celda2 = document.createElement("td");
    var celda3 = document.createElement("td");
    var celda4 = document.createElement("button");
    var celda5 = document.createElement("button");
    var celda6 = document.createElement("td");
    var celda7 = document.createElement("button");
    

    celda1.innerHTML = evento_name;
    celda2.innerHTML = municipio;
    celda3.innerHTML = sector;
    celda4.innerHTML = 'AGREGAR';
    celda5.innerHTML = 'SACAR';
    celda7.innerHTML = 'VER';
    celda6.innerHTML = cantidad_jugadores+" / "+document.getElementById("evento_num_jug_equipos").value;


    celda4.onclick = function() { set_linkar(id,cantidad_jugadores);};
    celda5.onclick = function() { set_deslinkar(id);};
    celda7.onclick = function() { location.href="../equipos/visor_equipo.php?evento="+elento_id_seleccionado+"&equipo="+id;};

    fila.appendChild(celda1);
    fila.appendChild(celda2);
    fila.appendChild(celda3);
    fila.appendChild(celda6);

    if( user_type == 0){//opcion solo para administradores (0-ADMIN-1-EQUIPO)
        if(validacion==0){
            fila.appendChild(celda4);
        }else{
            fila.appendChild(celda5);
        }
    }

    fila.appendChild(celda7);

    tableRow.appendChild(fila);
}

function set_relacion_equipo(){
    var accion = 4;//opcion para seleccionar los datos del equipo
    
    if(elento_id_seleccionado>0){//primera validacion de que se ha seleccionado un elemento
        $.post("ctrl/eventos.php"
        ,{"evento":elento_id_seleccionado 
        ,"accion":accion 
        }
        ,function(respuesta){
            var json_equipos = $.parseJSON(respuesta);
            console.log(json_equipos);

            for(i=0;i<json_equipos.length;i++){            
                set_agregar_fila(json_equipos[i][1],json_equipos[i][2],json_equipos[i][3],json_equipos[i][0],json_equipos[i][6],json_equipos[i][7]);
            }
        }); 
    }else{
        alert('DEBE SELECCIONAR UN EVENTO PRIMERO');
    }
}


function set_linkar(id_equipo,cantidad_jugadores){
    var accion = 5;

    if(cantidad_jugadores>document.getElementById("evento_num_jug_equipos").value){
        alert("Este equipo excede el limite de jugadores no se permite agregar al evento");
    }else{
        $.post("ctrl/eventos.php"
        ,{"evento_id":elento_id_seleccionado 
        ,"equipo_id":id_equipo 
        ,"accion":accion 
        }
        ,function(respuesta){
            var resp = respuesta.trim();
                if(resp == 'AGREGADO CORRECTO'){
                    alert(resp);
                    location.reload();
                }else{
                    alert(resp);
                }
        }); 
    }
}

function set_deslinkar(id_equipo){
    var accion = 6;

    $.post("ctrl/eventos.php"
    ,{"evento_id":elento_id_seleccionado 
    ,"equipo_id":id_equipo 
    ,"accion":accion 
    }
    ,function(respuesta){
        var resp = respuesta.trim();
            if(resp == 'BORRADO CORRECTO'){
                alert(resp);
                location.reload();
            }else{
                alert(resp);
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

function set_llamar_historico() {
    var accion = 7;//opcion para seleccionar los datos del usuario
    var fecha_ini               = document.getElementById("fecha_accion_1").value;
    var lista_acciones          = document.getElementById("lista_acciones");
   
    $.post("ctrl/eventos.php"
    ,{"id":user_id 
    ,"fecha_ini":fecha_ini 
    ,"accion":accion 
    }
    ,function(respuesta){
        try{
         var json = $.parseJSON(respuesta);
         lista_acciones.innerHTML = '';
         for(i=0;i<json.length;i++){  
             set_agregar_fila_historico(json[i][0],json[i][1],json[i][2],json[i][3]);
         }    
        }catch(e){
        // console.log(respuesta); 
         alert(respuesta);
        }
        
    }); 
}

function set_agregar_fila_historico(id,nombre,fecha,estado){
    var tableRow = document.getElementById("lista_acciones");
    var fila = document.createElement("tr");
    var celda1 = document.createElement("td");
    var celda2 = document.createElement("td");
    var celda3 = document.createElement("td");

    celda1.innerHTML = nombre;
    celda2.innerHTML = fecha;
    celda3.innerHTML = estado;
    
    fila.appendChild(celda1);
    fila.appendChild(celda2);
    fila.appendChild(celda3);
    tableRow.appendChild(fila);
}