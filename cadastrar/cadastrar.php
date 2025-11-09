<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="cadastrar.css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>

    <script src="sweetalert2/dist/sweetalert2.min.js"></script>
<link rel="stylesheet" href="sweetalert2/dist/sweetalert2.min.css">

    <title>LOGIN</title>
</head>
<body>


    <nav>
       <input type="button" onclick="voltar()"  value="<- Voltar" id="voltar">
    </nav>
    <script>
        function voltar(){
            window.history.back()
        }
    </script>
    <?php if (isset($_GET['conn']) && $_GET['conn'] == "TRUE"): ?>
      <script>
        alert("Dados inseridos com sucesso!");
      </script>
    <?php endif; ?>


    <div class="login-box">

        <form method="post" action="funcaocadastrar.php" id="login">
            <h1><strong>Cadastre-se</strong></h1>

            <label><strong>Nome da empresa</strong></label>
            <input type="text" id="Nome_empresa" name="Nome_empresa" required>
             
            <label><strong>CNPJ</strong></label>
            <input type="text" id="CNPJ_empresa" name="CNPJ_empresa" required>
            <script type="text/javascript">
                $("#CNPJ_empresa").mask("00.000.000/0001-00");
                </script>

            <label><strong>E-mail corporativo</strong></label>
            <input type="email" id="Email_empresa" name="Email_empresa" required>

            <label><strong>Telefone</strong></label>
            <input type="fone" id="Fone_empresa" name="Fone_empresa" required>
            <script type="text/javascript">
                $("#Fone_empresa").mask("(00)0-0000-0000");
                </script>


            <label><strong>Senha</strong></label>
            
            <div id="input">
                <input type="password" id="Senha_empresa" name="Senha_empresa" required>
                <img src="../img/olho.png" alt="" id="olho">

            </div> 

            <input type="submit" value="Cadastrar" name="cadastrar" id="cadastrar"><br><br>

            <hr><br>

            <a href="../login/login.html"><input type="button" name="login" id="login" value="Login"></a> 

            <div class="TxtCad">
            <h1>Já tem conta?</h1>
            </div>


    
        
        </form>

    </div>
    <script>
        var input = document.querySelector('#input input');
        var img = document.querySelector('#input img');
        img.addEventListener('click', function () {
          input.type = input.type == 'text' ? 'password' : 'text';
        });
    </script>
    <style>
        img#olho {
            height: 3rem;
            align-items: center;
          }
          
          #input img#olho {
            cursor: pointer;
          }
        
          input#Senha_empresa{
            width: 80%;
            height: 40px;
            padding: 5px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-family: 'Poppins', sans-serif;
            font-size: 12pt;
          }
    </style>

</body>
</html>
