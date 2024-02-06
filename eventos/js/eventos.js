let elento_seleccionado =0 ;
let elento_id_seleccionado =0 ;

function set_insertar(){
    var evento_name              = document.getElementById("evento_name").value;
    var evento_num_equipos       = document.getElementById("evento_num_equipos").value;
    var evento_num_jug_equipos   = document.getElementById("evento_num_jug_equipos").value ;
    var evento_descripcion       = document.getElementById("evento_descripcion").value;
    var evento_fecha_inicio      = document.getElementById("evento_fecha_inicio").value;
    var accion = 1;

    if(elento_seleccionado>0){
        accion = 3;
    }
    
    $.post("ctrl/eventos.php"
    ,{"evento_name":evento_name 
    ,"evento_num_equipos":evento_num_equipos 
    ,"evento_num_jug_equipos":evento_num_jug_equipos 
    ,"evento_descripcion":evento_descripcion 
    ,"evento_fecha_inicio":evento_fecha_inicio 
    ,"accion":accion 
    ,"id":elento_seleccionado 
    }
    ,function(respuesta){
        var resp = respuesta.trim();
            if(resp == 'AGREGADO CORRECTO'){
                alert('AGREGADO CORRECTO');
              //  set_agregar_fila(evento_name,evento_fecha_inicio);
                location.reload();
            }else if(resp == 'MODIFICACION REALIZADA'){
                alert('MODIFICACION REALIZADA');
                location.reload();
            }else{
                alert('ERROR => '+respuesta);
            }

    }); 
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
        elento_id_seleccionado= json[0];

        evento_name.value = json[1];
        evento_num_equipos.value = json[2];
        evento_num_jug_equipos.value = json[3];
        evento_descripcion.value = json[4];
        evento_fecha_inicio.value = json[5];
    }); 
}

function set_agregar_fila(evento_name,municipio,sector,id){
    var tableRow = document.getElementById("listado_equipos");
    var fila = document.createElement("tr");
    var celda1 = document.createElement("td");
    var celda2 = document.createElement("td");
    var celda3 = document.createElement("td");
    var celda4 = document.createElement("button");
    celda1.innerHTML = evento_name;
    celda2.innerHTML = municipio;
    celda3.innerHTML = sector;
    celda4.innerHTML = 'AGREGAR';


    celda4.onclick = function() { set_linkar(id);  location.reload(); };
    fila.appendChild(celda1);
    fila.appendChild(celda2);
    fila.appendChild(celda3);
    fila.appendChild(celda4);
    tableRow.appendChild(fila);
}

function set_relacion_equipo(){
    var accion = 4;//opcion para seleccionar los datos del equipo
    
    if(elento_id_seleccionado>0){//primera validacion de que se ha seleccionado un elemento
        var x = document.getElementById("equipos_div");
        x.classList.toggle("display_none");
        $.post("ctrl/eventos.php"
        ,{"evento":elento_id_seleccionado 
        ,"accion":accion 
        }
        ,function(respuesta){
            var json = $.parseJSON(respuesta);
            console.log(json);
            for(i=0;i<json.length;i++){
                console.log(json[i]);                
                set_agregar_fila(json[i][1],json[i][2],json[i][3],json[i][0]);
            }
        }); 
    }else{
        alert('DEBE SELECCIONAR UN EVENTO PRIMERO');
    }
}


function set_linkar(id_equipo){
    var accion = 5;

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