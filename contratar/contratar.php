
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


    <nav>
        <a href="../login/login.html"><input type="button" value="<-Voltar" id="voltar"></a> 
    </nav>

    <main>

    <section id="um">

            <form method="post" action="confirmContrato.php" id="login">

                <h1><strong>Contratar</strong></h1>
                <br>

                

                <section id="plano">

                <div>
                    <input type="radio" id="control_01" name="planos" value="Plano Silver">
                        <label id="plano" for="control_01">
                            <h2>Plano Silver</h2>
                            <p>Descrição do plano silver</p>
                        </label>                    
                </div>
                  
                <div>
                <input type="radio" id="control_02" name="planos" value="Plano Golg" checked>
                    <label id="plano" for="control_02">
                        <h2>Plano gold</h2>
                        <p>Descrição do plano gold</p>
                    </label>
                </div>
            
                   

                <div>
                <input type="radio" id="control_03" name="planos" value="Plano Diamont" >
                    <label id="plano" for="control_03">
                        <h2>Plano Diamont</h2>
                        <p>Descrição do plano Diamont</p>
                    </label>
                </div>


                </section>


                <h1>Opção de pagamento</h1>
                <input type="radio" id="debito" name="pagamento" value="debito">
                <label id="debito">Débito</label>

                <input type="radio" id="credito" name="pagamento" value="credito">
                <label id="credito">Crédito</label>

                <input type="radio" id="boleto" name="pagamento" value="boleto">
                <label id="boleto">Boleto</label><br><br><hr>


                <label id="A">Numero do Cartão</label><br><br>
                <input type="text" class="form-control" placeholder="Numero do cartão" id="numero_cartao" name="numero_cartao" ><br><br>
                <script type="text/javascript">
                $("#numero_cartao").mask("0000-0000-0000-0000");
                </script>
                
                <label id="A">Data do Cartão</label><br>
                <input type="text" class="form-control" placeholder="Data do cartão" id="data_cartao" name="data_cartao" ><br><br>
                <script type="text/javascript">
                $("#data_cartao").mask("00/00");
                </script>

                <label id="A">CVV do Cartão</label><br>
                <input type="text" class="form-control" placeholder="CVV do cartão" id="CVV_cartao" name="CVV_cartao" ><br><br>
                <script type="text/javascript">
                $("#CVV_cartao").mask("000");
                </script>

                <label id="A">Nome (igual ao cartão)</label><br>
                <input type="text" class="form-control" placeholder="Nome" id="nome_titular" name="nome_titular" ><br><br>



                <input type="submit" value="Contratar" id="contratar" name="contratar">

                     
            
            </form>
        </section>

    </main>
</body>
</html>
