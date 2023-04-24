<?php 
    require_once('admin/site.php');
    $site = new Site();
    $listaFunc = $site->ListaFunc();
    $listaServico = $site->ListaServico();
?>

<!DOCTYPE html>

<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <title> SITE KIBELEZA </title>
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

<!-- BANEER -->
<?php echo require_once("conteudo/banner.php") ?> 
<!-- FIM DO BANNER -->

<!-- SOBRE -->
<?php echo require_once("conteudo/sobreConteudo.php") ?> 
<!-- FIM DO SOBRE -->

<!-- GALERIA -->
<?php echo require_once("conteudo/galeria.php") ?> 
<!-- FIM DA GALERIA -->

<!-- SERVIÇO -->
<section class="Serviços wow animate__animated animate__bounceInUp">
    <div class="site">
        <h2>Serviços</h2>
        <div>
            <?php foreach(array_slice($listaServico,0,5) as $linha):?>
                <article>
                    <h3> <?php echo $linha['nomeServico']; ?> </h3>
                    <img src="admin/<?php echo $linha ['fotoServico1']; ?>" alt="<?php echo $linha['nomeServico']; ?>">
                    <p> <?php echo substr ($linha ['descricaoServico'], 0, 180); ?> </p>
                    <a href="servico.php">leia mais >>></a>
                </article>
            <?php endforeach; ?>
        </div>
    </div>
</section>
<!-- FIM DO SERVIÇO -->

<!-- DESTAQUE -->
<?php echo require_once("conteudo/destaque.php") ?> 
<!-- FIM DO DESTAQUE -->

<!-- EQUIPE -->
<section class="Equipe wow animate__animated animate__bounceInUp">
   <?php echo require_once("conteudo/equipeConteudo.php") ?>
</section>
<!-- FIM DA EQUIPE -->
   
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