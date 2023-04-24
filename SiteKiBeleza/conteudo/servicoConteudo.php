<div class="servicoConteudo">
        <h2>Serviços</h2>
        <div>
            <article>
                <?php foreach($listaServico as $lista):?>
                    <div class="site conteudo">
                        <img src="admin/<?php echo $lista['fotoServico1']; ?>" alt="<?php echo $lista['nomeServico']; ?>">
                        <div>
                            <h3> <?php echo $lista['nomeServico']; ?> </h3>
                            <p> <?php echo $lista['descricaoServico']; ?> </p>
                        </div>
                    </div>
                <?php endforeach ?>
            </article>
        </div>
    </div>