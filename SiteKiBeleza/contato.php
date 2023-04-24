<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require_once("admin/site.php");
$contato = new Site();
$listaFunc = $contato->ListaFunc();

$ok = 0;

    if (isset($_POST["email"])) {

        $assunto    = "Site KiBeleza";
        $nome       = $_POST["nome"];
        $email      = $_POST["email"];
        $fone       = $_POST["fone"];
        $mens       = $_POST["mens"];

        // Alimentar os atributos e chamar o metodo inserirContato
        date_default_timezone_set('America/Sao_Paulo');
        $horaContato        = date('H:i:s');
        $dataContato        = date('Y/m/d');
        
        $contato->nome = $nome;
        $contato->email = $email;
        $contato->fone = $fone;
        $contato->msg = $mens;
        $contato->data = $dataContato;
        $contato->hora = $horaContato;
        
        $contato->InserirContato();

        require 'email/Exception.php';
        require 'email/PHPMailer.php';
        require 'email/SMTP.php';

        //Envio para adm do site
        $mail = new PHPMailer();

        try {
            $mail->isSMTP();
            $mail->CharSet    = 'UTF-8';
            $mail->Host       = 'smtp-mail.outlook.com';
            $mail->SMTPAuth   = true;
            $mail->Username   = 'wesvieiratest@outlook.com';
            $mail->Password   = 'Vieirateste';
            $mail->Port       = 587;

            
            $mail->setFrom('wesvieiratest@outlook.com', 'SITE KIBELEZA');
            $mail->addAddress("wesvieiratest@outlook.com");
           
            $mail->isHTML(true);                                  
            $mail->Subject  = 'Site KiBeleza';
            $mail->Body     = 
            "
                <strong> Site KiBeleza - Novo Contato </strong>
                <br><br>
                <p> Nome: $nome </p>
                <p> E-mail: $email</p>
                <p> Telefone: $fone</p>
                <p> Mensagem: $mens</p>
            ";
            $mail->AltBody  = 
            "
                <strong> Site KiBeleza - Novo Contato </strong>
                <br><br>
                <p> Nome: $nome </p>
                <p> E-mail: $email</p>
                <p> Telefone: $fone</p>
                <p> Mensagem: $mens</p>
            ";
            //$mail->send();
            if($mail->send()){ 
			
                $ok = 1;
                //echo "A Mensagem foi enviada com sucesso.";
                
            }else{
                $ok = 2;
                //echo "Não foi possível enviar a mensagem. Erro: " .$phpmail->ErrorInfo;
            }

        } catch (Exception $e) {
            echo "Error ao enviar o email: " . $e->getMessage();
        }     
        
        //Envio resposta para o usuário que preencheu o form no site
        $mailR = new PHPMailer();

        try {
            $mailR->isSMTP();
            $mailR->CharSet    = 'UTF-8';
            $mailR->Host       = 'smtp-mail.outlook.com';
            $mailR->SMTPAuth   = true;
            $mailR->Username   = 'wesvieiratest@outlook.com';
            $mailR->Password   = 'Vieirateste';
            $mailR->Port       = 587;

            
            $mailR->setFrom('wesvieiratest@outlook.com', 'SITE KIBELEZA');
            $mailR->addAddress("$email");
           
            $mailR->isHTML(true);                                  
            $mailR->Subject  = 'Site KiBeleza';
            $mailR->Body     = 
            "
                Olá, <strong> $nome </strong> já recebemos seu e-mail e em breve daremos um retorno.
                <br><br>
                Obrigado.

                <strong>Equipe Kibeleza</strong>
            ";
            $mailR->AltBody  = 
            "
                Olá, <strong> $nome </strong> já recebemos seu e-mail e em breve daremos um retorno.
                <br><br>
                Obrigado.

                <strong>Equipe Kibeleza</strong>
            ";
            $mailR->send();
        } catch (Exception $e) {
            echo "Error ao enviar o email: " . $e->getMessage();
        }   
        
     } // FIM IF
?>

<!DOCTYPE html>

<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <title> SITE KIBELEZA - CONTATO </title>
    <meta name="viewport" content="width=device-with, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="css/reset.css">
    <link rel="stylesheet" type="text/css" href="css/slick.css">
    <link rel="stylesheet" type="text/css" href="css/slick-theme.css">
    <link rel="stylesheet" type="text/css" href="css/lity.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/estilo.css">
</head>

<body>
<!--CABEÇALHO-->
<?php echo require_once("conteudo/topo.php") ?> 
<!--FIM DO CABEÇALHO-->

<!--MAPA-->
<section class="map">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3659.025464727017!2d-46.43405078389446!3d-23.49559226505454!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce63dda7be6fb9%3A0xa74e7d5a53104311!2sSenac%20S%C3%A3o%20Miguel%20Paulista!5e0!3m2!1spt-BR!2sbr!4v1642541174404!5m2!1spt-BR!2sbr" width="100%" height="600" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</section>
<!--FIM MAPA-->

<!--FORMULARIO-->
<section class="formulario site">
    <h2>Contato</h2>
    <h4>
        <?php 
             if ($ok == 1) {
                 echo $nome. ", mensagem enviada com sucesso.";
             } 
             else if ($ok == 2) {
                 echo $nome. ", não foi possível enviar sua mensagem.";
             }
        ?>
    </h4>

    <div class="caixaform">
        <form method="post">
            <div class="divForm">
                <div> <input name="nome" type="text" placeholder="Nome: " require> </div>
                <div> <input name="email" type="email" placeholder="E-mail: " require> </div>
                <div> <input name="fone" type="tel" placeholder="Telefone: "> </div>
            </div>
            <div class="divForm">
                <div> <textarea name="mens" cols="10" rows="20" placeholder="Mensagem: "></textarea> </div>
                <div> <input type="submit" valeu="ENVIAR"> </div>
            </div>
        </form>
        </div>
</section>
<!--FIM FORMULARIO-->

<!-- GALERIA -->
<?php echo require_once("conteudo/galeria.php") ?> 
<!-- FIM DA GALERIA -->

<!-- EQUIPE -->
<section class="Equipe wow animate__animated animate__bounceInUp">
   <?php echo require_once("conteudo/equipeConteudo.php") ?>
</section>
<!-- FIM DA EQUIPE -->

<!-- DESTAQUE -->
<?php echo require_once("conteudo/destaque.php") ?> 
<!-- FIM DO DESTAQUE -->

<!-- RODAPÉ -->
<?php echo require_once("conteudo/rodape.php") ?> 
<!-- FIM DO RODAPÉ -->  
    
    <script type="text/javascript" src="js/jquery-3.6.0.min.js"> </script>
    <script type="text/javascript" src="js/slick.js"> </script>
    <script type="text/javascript" src="js/lity.js"> </script>
    <script type="text/javascript" src="js/wow.js"></script>
    <script type="text/javascript" src="js/animacoes.js"> </script>
</body>

</html>