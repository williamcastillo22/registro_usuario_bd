<?php
// Datos de conexión a la base de datos
$host = 'localhost'; // O tu host si es diferente
$usuario = 'root'; // Tu usuario de MySQL
$contraseña = ''; // Tu contraseña de MySQL
$base_de_datos = 'registro_bd'; // El nombre de tu base de datos

// Crear la conexión
$conexion = new mysqli($host, $usuario, $contraseña, $base_de_datos);

// Verificar la conexión
if ($conexion->connect_error) {
    die("Conexión fallida: " . $conexion->connect_error);
} else {
    // echo "Conexión exitosa a la base de datos."; // Puedes quitar el echo después de probar
}
?>
