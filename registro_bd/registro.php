<?php
// Incluir el archivo de conexión
include 'bd.php';

// Comprobar si el formulario fue enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obtener los datos del formulario
    $nombre_completo = $_POST['nombre_completo'];
    $fecha_nacimiento = $_POST['fecha_nacimiento'];
    $correo_electronico = $_POST['correo_electronico'];
    $contraseña = $_POST['contraseña'];

    // Mostrar los datos recibidos para verificar
    echo "Nombre Completo: " . $nombre_completo . "<br>";
    echo "Fecha de Nacimiento: " . $fecha_nacimiento . "<br>";
    echo "Correo Electrónico: " . $correo_electronico . "<br>";
    echo "Contraseña: " . $contraseña . "<br>";

    // Validar que los campos no estén vacíos
    if (!empty($nombre_completo) && !empty($fecha_nacimiento) && !empty($correo_electronico) && !empty($contraseña)) {
        // Preparar la consulta para insertar los datos
        $sql = "INSERT INTO registro_usuarios (nombre_completo, fecha_nacimiento, correo_electronico, contraseña)
                VALUES (?, ?, ?, ?)";

        // Preparar la declaración
        if ($stmt = $conexion->prepare($sql)) {
            // Vincular los parámetros
            $stmt->bind_param("ssss", $nombre_completo, $fecha_nacimiento, $correo_electronico, $contraseña);

            // Ejecutar la consulta
            if ($stmt->execute()) {
                echo "Registro exitoso";
            } else {
                echo "Error al registrar: " . $stmt->error;
            }

            // Cerrar la declaración
            $stmt->close();
        } else {
            echo "Error en la preparación de la consulta: " . $conexion->error;
        }
    } else {
        echo "Todos los campos son obligatorios.";
    }
}

// Cerrar la conexión
$conexion->close();
?>
