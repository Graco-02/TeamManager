let elento_seleccionado =0 ;

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
                set_agregar_fila(evento_name,evento_fecha_inicio)
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
        var evento_id=0;

        evento_id.value = json[0];
        evento_name.value = json[1];
        evento_num_equipos.value = json[2];
        evento_num_jug_equipos.value = json[3];
        evento_descripcion.value = json[4];
        evento_fecha_inicio.value = json[5];
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