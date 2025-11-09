<?php
// Conectar ao banco de dados
$servername = "localhost";
$username = "id20691181_magni2023";
$password = "SenhaNova10*";
$dbname = "id20691181_magnibd";
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexão
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}
?>