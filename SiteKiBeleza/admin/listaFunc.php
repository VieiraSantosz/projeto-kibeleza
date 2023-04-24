<?php
    require_once("conexao.php");
    try {

    $conexao = Conexao::LigarConexao();
    $conexao -> exec('SET NAMES UTF8');

    if(!$conexao){
        echo 'Não foi possivel fazer a conexao com o banco de dados';
    }

    $query = $conexao->prepare("SELECT * FROM funcionario ORDER BY idFuncionario");
    $query->execute();
    $json="[";

    while($resultado = $query->fetch()) {
        if($json!= "[") {
            $json .= ",";
        }
        $json .= '{"idFuncionario" : "'.$resultado["idFuncionario"].'",';
        $json .= '"NomeFuncionario" : "'.$resultado["nomeFuncionario"].'"}';
    }

    $json .= ']';
    echo $json;

    } catch (Excepition $e) {
        echo "Erro" . $e->getMensage();
    }
?>