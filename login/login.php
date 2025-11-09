<?php
include_once "./conexao.php";

// Recebe os dados do formulário
$Email_empresa = $_POST['Email_empresa'];
$Senha_empresa = $_POST['Senha_empresa'];

try {
    // Faz a validação no banco de dados
    $sql = "SELECT * FROM TB_EMPRESA WHERE Email_empresa = :Email_empresa AND Senha_empresa = :Senha_empresa";
    $stmt = $conexao->prepare($sql);
    $stmt->bindParam(':Email_empresa', $Email_empresa);
    $stmt->bindParam(':Senha_empresa', $Senha_empresa);
    $stmt->execute();

    if ($stmt->rowCount() == 1) {
        // Usuário autenticado com sucesso
        $usuario = $stmt->fetch(PDO::FETCH_ASSOC);
        session_start();
        $_SESSION['Email_empresa'] = $usuario['Email_empresa'];
        $_SESSION['Senha_empresa'] = $usuario['Senha_empresa'];

        if ($usuario['cargo_funcionario'] == '001') {
            header('Location: ./adm/perfilADM.html');
            exit;
        } elseif ($usuario['cargo_funcionario'] == '002') {
            header('Location: ../perfil/perfil.html');
            exit;
        } else {
            echo "cadastro não encontrado";
        }
    } else {
        // Login inválido
        header('Location: index.html');
        exit;
    }
} catch (PDOException $e) {
    echo "Erro ao conectar ao banco de dados: " . $e->getMessage();
}
?>


