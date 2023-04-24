<?php
    require_once("conexao.php");

    header('Access-Control-Allow-Methods: POST, GET');
    header('content-type: application/json; charset-UTF-8');

    $data = file_get_contents("php://input");
    $objData = json_decode($data);

    $codFunc        = $objData->codFunc;
    $dataReserva    = $objData->dataReserva;
    $codCliente     = $objData->codCliente;
    $codServico     = $objData->codServico;

    $obsReserva     = 'REALIZAOD PELO APP';
    $statusReserva  = 'AGUARDANDO';

    date_default_timezone_set('America/Sao_Paulo');
    $horaReserva    = date('H:i:s');
    $dataReserva    = date('Y/m/d');

    //Remove barras invertidas de uma string
    $codFunc        = stripslashes($codFunc);
    $dataReserva    = stripslashes($dataReserva);
    $codCliente     = stripslashes($codCliente);
    $codServico     = stripslashes($codServico);

    //Remove espaços em branco
    $codFunc        = trim($codFunc);
    $dataReserva    = trim($dataReserva);
    $codCliente     = trim($codCliente);
    $codServico     = trim($codServico);

    $dados;

    $conexao = Conexao::LigarConexao();
    $conexao->exec("SET NAMES UTF8");

    if ($conexao) {
        $query = $conexao->prepare("INSERT INTO cliente(nomeCliente, emailCliente, senhaCliente, statusCliente, dataCadCliente, fotoCliente) 
                                    VALUES ('".$nome."', '".$email."', '".$senha."', '".$status."', '".$dataCad."', '".$foto."')");
        $query->execute();
        $dados = array('mensagem' => 'Dados inseridos com sucesso');
        echo json_encode($dados);
    } else {
        $dados = array('mensagem' => 'Não foi possível realizar o cadastro.');
        echo json_encode($dados);
    }    
?>