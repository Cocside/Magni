
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="contratar.css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>

    <title>LOGIN</title>
</head>
<body>
    <section id="confirm">

<?php
$PlanoS = $_POST["planos"];
$Pagamento = $_POST["pagamento"];
$NumCartao = $_POST["numero_cartao"];
$DtaCartao = $_POST["data_cartao"];
$CVVcartao = $_POST["CVV_cartao"];
$NomeTitulr = $_POST["nome_titular"];



echo 
    ("Plano esolhido: ") . $PlanoS.'<br><br>'.
    ("Forma de Pagamento: ") . $Pagamento. '<br><br>'.
    ( "Numero do Cartão: ") . $NumCartao. '<br><br>' . 
    ("Cata do cartão: ") . $DtaCartao. '<br><br>'. 
    ("VV do cartão: ") . $CVVcartao. '<br><br>' . 
    ("Nome do TiTular: ") .  $NomeTitulr. '<br><br>' ;

?>
<a href="../perfil/perfil.html" id="contratar"><input type="submit" value="Confimar" id="contratar" name="contratar">
</a>


</section>
    
</body>
</html>

