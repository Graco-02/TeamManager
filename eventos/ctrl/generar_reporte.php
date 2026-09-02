<?php
    include_once("../../utilidades/conexion.php");
    include_once("../../utilidades/alerta.php");
    include_once("eventos.php");
     session_start();
// Nombre del archivo



$evento_data =  get_evento_name($_SESSION['evento_seleccionado']);

//$archivo = "reporte_" .$evento_data[1]. date("Ymd_His") . ".xls";
$archivo = "reporte_" .$evento_data.date("Ymd_His") . ".xls";

// Datos de ejemplo

$datos = get_listar_equipos_reporte($_SESSION['evento_seleccionado']);

// Cabeceras para forzar la descarga
header("Content-Type: application/vnd.ms-excel; charset=UTF-8");
header("Content-Disposition: attachment; filename=\"$archivo\"");
header("Pragma: no-cache");
header("Expires: 0");

// Comenzar contenido Excel
echo "\xEF\xBB\xBF"; // BOM UTF-8 para caracteres especiales

echo "<table border='1'>";

// Recorrer los datos
foreach ($datos as $fila) {

    echo "<tr>";

    foreach ($fila as $valor) {

        echo "<td>" . htmlspecialchars($valor, ENT_QUOTES, 'UTF-8') . "</td>";

    }

    echo "</tr>";
}

echo "</table>";

exit;
?>