let elento_seleccionado =0 ;
let fichero_seleccionado ="" ;
let fichero_seleccionado2 ="" ;
let user_type = 0;

function set_insertar_accion(usuario,accion_modulo,modulo,regant,regnew){
    var accion = 1;
    $.post("ctrl/histlog.php"
    ,{"usuario":usuario 
    ,"accion_modulo":accion_modulo 
    ,"modulo":modulo 
    ,"regant":regant 
    ,"regnew":regnew 
    ,"accion":accion 
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


function set_agregar_fila_historico(usuario,fecha,accion,modulo){
    var tableRow = document.getElementById("lista_acciones");
    var fila = document.createElement("tr");
    var celda1 = document.createElement("td");
    var celda2 = document.createElement("td");
    var celda3 = document.createElement("td");
    var celda4 = document.createElement("td");

    celda1.innerHTML = usuario;
    celda2.innerHTML = fecha;

    switch (accion) {
        case 'A':
            celda3.innerHTML = "ALTA";
            break;
        case 'M':
            celda3.innerHTML = "MODIFICACION";
            break;   
        case 'B':
            celda3.innerHTML = "BAJA";
            break;            
        default:
            break;
    }

    celda4.innerHTML = modulo;

    fila.appendChild(celda1);
    fila.appendChild(celda2);
    fila.appendChild(celda3);
    fila.appendChild(celda4);
    tableRow.appendChild(fila);
}

function set_buscar(){
    var usuario_historico            = document.getElementById("usuario_historico").value;
    var fecha_accion_1               = document.getElementById("fecha_accion_1").value;
    var fecha_accion_2               = document.getElementById("fecha_accion_2").value;

    var accion = 2;
    $.post("ctrl/histlog.php"
    ,{"usuario":usuario_historico 
    ,"fecha1":fecha_accion_1 
    ,"fecha2":fecha_accion_2 
    ,"accion":accion 
    }
    ,function(respuesta){
        var lista_acciones          = document.getElementById("lista_acciones");
        lista_acciones.innerHTML = '';
        try{
            var json = $.parseJSON(respuesta);
        }catch{
            alert("NO HAY COINCIDENCIAS");
        }

        var json = $.parseJSON(respuesta);
        try{
            console.log(json); 
            for(i=0;i<json.length;i++){
                console.log(json[i]);    
                set_agregar_fila_historico(json[i][0],json[i][1],json[i][2],json[i][3]);
            }               
        }catch{
            alert("NO HAY COINCIDENCIAS");
        }
     });

    
}



