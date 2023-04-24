<?php 
    require_once('admin/site.php');
    $site = new Site();
    $listaFunc = $site->ListaFunc();
?>

<section class="Equipe wow animate__animated animate__bounceInUp">
    <div class="site">
        <h2>Equipe</h2>
        <div>
            <?php foreach ($listaFunc as $linha):?>
            <article>
                <img src="admin/<?php echo $linha ['fotoFuncionario'];?>" alt="<?php echo $linha ['nomeFuncionario']; ?>">
                <h2> <?php echo $linha ['nomeFuncionario'];?> </h2>
                <h3> <?php echo $linha ['nivelFuncionario'];?> </h3>
            </article>
            <?php endforeach ?>
        </div>
    </div>
</section>