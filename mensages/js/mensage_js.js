function set_insertar_accion(){
    var accion = 1;
    
    var usuario = document.getElementById('usuario_select').value;
    var mensage = document.getElementById('txt_mensage').value;
    var fecha_ini = document.getElementById('fecha_accion_1').value;
    var fecha_fin = document.getElementById('fecha_accion_2').value;

    
    $.post("ctrl/mensage_ctrl.php"
    ,{"usuario":usuario 
    ,"mensage":mensage 
    ,"fecha_ini":fecha_ini 
    ,"fecha_fin":fecha_fin 
    ,"accion":accion 
    }
    ,function(respuesta){
        var resp = respuesta.trim();
        if(resp == 'AGREGADO CORRECTO'){
            alert('AGREGADO CORRECTO');
            location.reload();
        }else{
            alert('ERROR => '+respuesta);
        }

 }); 

}


function get_listar_mensages(){
    var accion = 2;
        
    $.post("ctrl/mensage_ctrl.php"
    ,{"accion":accion 
    }
    ,function(respuesta){
            var json = $.parseJSON(respuesta);
            var lista_mensages   = document.getElementById("lista_mensages");
            lista_mensages.innerHTML = '';    
            for(i=0;i<json.length;i++){
                console.log(json[i][0]);         
                set_agregar_fila(json[i][0],json[i][1],json[i][3],json[i][4]);
            }               
    }); 

}


function set_agregar_fila(usuario,mensage,fecini,fecfin){
    var tableRow = document.getElementById("lista_mensages");

    var fila = document.createElement("tr");
    var celda1 = document.createElement("td");
    var celda2 = document.createElement("td");
    var celda3 = document.createElement("td");
    var celda4 = document.createElement("td");

    celda1.innerHTML = usuario;
    celda2.innerHTML = mensage;
    celda3.innerHTML = fecini;
    celda4.innerHTML = fecfin;


    fila.appendChild(celda1);
    fila.appendChild(celda2);
    fila.appendChild(celda3);
    fila.appendChild(celda4);

    tableRow.appendChild(fila);
}

  function reemplazarEspaciosPorGuiones(cadena) {
 //   return cadena.replace("a", "-");
    return cadena.split("_").join(" ");
  }



