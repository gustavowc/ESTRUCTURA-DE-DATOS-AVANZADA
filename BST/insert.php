<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "biblioteca";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

$id = $_POST['id'];
$titulo = $_POST['titulo'];
$autor = $_POST['autor'];

$sql = "INSERT INTO libros (id, titulo, autor) VALUES ('$id', '$titulo', '$autor')";

if ($conn->query($sql) === TRUE) {
    echo "Nuevo libro insertado exitosamente";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
