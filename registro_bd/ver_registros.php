<?php
// Incluir el archivo de conexión
include 'bd.php';

// Realizar la consulta para obtener todos los registros
$sql = "SELECT * FROM registro_usuarios";
$resultado = $conexion->query($sql);

// Verificar si hay registros
if ($resultado->num_rows > 0) {
    // Iniciar la tabla
    echo "<table border='1'>
            <tr>
                <th>ID</th>
                <th>Nombre Completo</th>
                <th>Fecha de Nacimiento</th>
                <th>Correo Electrónico</th>
                <th>Contraseña</th>
                <th>Fecha de Registro</th>
            </tr>";
    // Mostrar cada registro en una fila
    while($fila = $resultado->fetch_assoc()) {
        echo "<tr>
                <td>" . $fila['id'] . "</td>
                <td>" . $fila['nombre_completo'] . "</td>
                <td>" . $fila['fecha_nacimiento'] . "</td>
                <td>" . $fila['correo_electronico'] . "</td>
                <td>" . $fila['contraseña'] . "</td>
                <td>" . $fila['fecha_registro'] . "</td>
              </tr>";
    }
    // Cerrar la tabla
    echo "</table>";
} else {
    echo "No hay registros para mostrar.";
}

// Cerrar la conexión
$conexion->close();
?>
