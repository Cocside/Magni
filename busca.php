<?php
include_once ("../conexao.php");

if (!isset($_GET['nome'])) {
	header("Location: index.php");
	exit;
}
$nome = "%".trim($_GET['nome'])."%";

// conectar-se ao banco de dados
$conn = mysqli_connect('localhost', 'root', '', 'id20517217_bd_tcc');

// escrever a consulta
$sql = "SELECT * FROM TB_EMPRESA WHERE 'Nome_empresa'";

// executar a consulta
$resultado = mysqli_query($conn, $sql);

// exibir os resultados
while ($row = mysqli_fetch_assoc($resultado)) {
  echo "Nome: " . $row['nome'] . "<br>";
  echo "Email: " . $row['email'] . "<br>";
}

?>