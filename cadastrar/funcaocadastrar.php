<?php
include_once ("../conexao.php");

$conn = new mysqli($servername, $username, $password, $dbname);

$Nome_empresa = $_POST['Nome_empresa'];
$CNPJ_empresa = $_POST['CNPJ_empresa'];
$Email_empresa = $_POST['Email_empresa'];
$Fone_empresa = $_POST['Fone_empresa'];
$Senha_empresa = $_POST['Senha_empresa'];

$sql = "INSERT INTO TB_EMPRESA (Nome_empresa, CNPJ_empresa, Email_empresa, Fone_empresa, Senha_empresa) VALUES
                              ('$Nome_empresa', '$CNPJ_empresa', '$Email_empresa', '$Fone_empresa', '$Senha_empresa')";

if ($conn->query($sql) === TRUE) {
    header("Location: cadastrar.php?conn=TRUE");  
    exit();
} else {
    echo "Erro ao inserir dados: " . $conn->error;
}



$conn->close();
?>