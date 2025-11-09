<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="login.css">
    <script src="login.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <title>LOGIN</title>
</head>
<body>


    <nav>
       <input type="button" onclick="voltar()"  value="<- Voltar" id="voltar">
    </nav>

    <script>
            function aviso(){
            alert("Email enviado, aguarde recebimento!")
            }     
    </script>


    <div class="login-box">


        <form method="post" action="EscSenha.php" id="EscSenha">


            <label><strong>Email de Usuário</strong></label>
            <input type="text" id="Email_empresa" name="Email_empresa" required>

            <input type="submit" value="Enviar email de recuperação" name="EscSenha" id="EscSenha" onclick="aviso()">
 
        </form>

    </div>
    



    <?php 

    include "../conexao.php";
    session_start();
    if ($_SESSION ['controleResp'] == 'localizado' )
    {
      echo "Dados do Contato:<br><br>";
      echo "Nome:<BR> " . $_SESSION['nomeContato'] . '<br>'.'<br>';
      echo "Fone:<BR> " . $_SESSION['foneContato'] . '<br>'.'<br>';
      echo "Email:<BR> " . $_SESSION['emailContato'] . '<br>'.'<br>';
      echo "Assunto:<BR> " . $_SESSION['assuntoContato'] .'<br>'.'<br>';
      echo "Mensagem:<BR> " . $_SESSION['msgContato'] . '<br>'.'<br>';
      echo "Resposta:<BR> " . $_SESSION['respContato'] . '<br>'.'<br>';
      echo "Cadastro localizado com sucesso:". '<br>'.'<br>';
    }
    else if ($_SESSION ['controleResp'] == 'respondido')
    {
      echo "Resposta gravada com sucesso:<br><br>";
    }
    else if ($_SESSION ['controleResp'] == 'enviado')
    {
      echo "Resposta enviada com sucesso:<br><br>";
    }
    
      //Carrega a tabela
      $Matriz=$conexao->prepare("select * FROM TB_FALECONOSCO");
      
      echo "Contatos realizados no site:<br><br>";
      $Matriz->execute();
    
      echo "<table border=1>";
    
      echo "<tr>";
      echo "<td> Id Contato</td>";
      echo "<td> Nome do Contato</td>";
      echo "<td> Fone do Contato</td>";
      echo "<td> Email do Contato</td>";
      echo "<td> Assunto do Contato</td>";
      echo "<td> Msg do Contato</td>";
      echo "<td> Resposta do Contato</td>";
      echo "</tr>";
    
      while ($Linha = $Matriz->fetch(PDO::FETCH_OBJ)) 
      {
    
        $idContato = $Linha->ID_CONTATO;
        $nomeContato = $Linha->NOME_CONTATO;
        $foneContato = $Linha->FONE_CONTATO;
        $emailContato = $Linha->EMAIL_CONTATO;
        $assuntoContato = $Linha->ASSUNTO_CONTATO;
        $msgContato = $Linha->MSG_CONTATO;
        $respContato = $Linha->RESP_CONTATO;
        
        echo "<tr>";
        echo "<td>".$idContato ." </td>";
        echo "<td>".$nomeContato ." </td>";
        echo "<td>".$foneContato ."</td>";
        echo "<td>".$emailContato ." </td>";
        echo "<td>".$assuntoContato ." </td>";
        echo "<td>".$msgContato ."</td>";
        echo "<td>".$respContato ." </td>";
        echo "</tr>";
      }
    
      echo "</table>";
     
    
    if(isset($_REQUEST['valor']) and ($_REQUEST['valor'] == 'enviado'))
    {
        if ($_POST['id_contato']!= "") $_SESSION['IdContato'] = $_POST['id_contato'];
        if ($_POST['resp_contato']!= "") $_SESSION['respContato'] = $_POST['resp_contato'];
        $Botao = $_POST ["Botao"]; 
    
        if ($Botao =="Alterar")
        {
            include "AlterarContato.php";   
        }
        if ($Botao =="Enviar")
        {
            include "ResponderContato.php"; 
        }
        if ($Botao =="Localizar")
        {
            include "LocalizarContato.php";   
        }
        
    }
    else 
    {
        ?> 
        <form name="form1" action="FaleConoscoAdm.php?valor=enviado" method="POST">
              Id: <br>
              <input class="input" type="text" id ="Codigo" placeholder="Prencher Id" name="id_contato">
               <input name="Botao" type="submit" value="Localizar"><br><p>
               Mensagem de Resposta:<br>
          <textarea name="resp_contato" placeholder="Prencher a Resposta"rows="8" cols="40"></textarea><br><p>
                
               <input name="Botao" type="submit" value="Alterar">
          <input name="Botao" type="submit" value="Enviar"><br><p>
    
              </p>
            </form>
        </body>
        
      <?php 
    }
    ?>

    
<style>
        input#EscSenha{
    width: 100%;
    background-color: #BE353C;
    color: #fff;
    border: none;
    padding: 10px;
    font-size: 18px;
    border-radius: 5px;
    cursor: pointer;
  }
    </style>
</body>
</html>

