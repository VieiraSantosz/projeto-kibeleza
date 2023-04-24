<?php
    require_once("conexao.php");
    try {

    $conexao = Conexao::LigarConexao();
    $conexao -> exec('SET NAMES UTF8');

    if(!$conexao){
        echo 'Não foi possivel fazer a conexao com o banco de dados';
    }

    if (isset($_GET['idServico'])) {
        $idServico = $_GET['idServico'];
        $query = $conexao->prepare("SELECT * FROM servico WHERE idServico = $idServico");
        $query->execute();
    }

    $json="[";
    
    while($resultado = $query->fetch()) {
        if($json!= "[") {
            $json .= ",";
        }
        $json .= '{"idServico" : "'.$resultado["idServico"].'",';
        $json .= '"NomeServico":"'.$resultado["nomeServico"].'",';
        
        $json .= '"ValorServico":"'.$resultado["valorServico"].'",';
        $json .= '"StatusServico":"'.$resultado["statusServico"].'",';
        $json .= '"DataCadastroServico":"'.$resultado["dataCadServico"].'",';

        $json .= '"FotoServico1":"'.$resultado["fotoServico1"].'",';
        $json .= '"FotoServico2":"'.$resultado["fotoServico2"].'",';
        $json .= '"FotoServico3":"'.$resultado["fotoServico3"].'",';
        $json .= '"FotoServico4":"'.$resultado["fotoServico4"].'",';

        $json .= '"DescricaoServico":"'.$resultado["descricaoServico"].'",';
        $json .= '"TextoServico":"'.$resultado["textoServico"].'",';
        $json .= '"TempoServico":"'.$resultado["tempoExecServico"].'",';

        $json .= '"idEmpresa" : "'.$resultado["idEmpresa"].'"}';
    }

    $json .= ']';
    echo $json;

    } catch (Excepition $e) {
        echo "Erro" . $e->getMensage();
    }
?>