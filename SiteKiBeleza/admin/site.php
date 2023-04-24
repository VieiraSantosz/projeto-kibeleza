<?php
    require_once("conexao.php");

    class Site  {
        // Atributos (variáveis)
        public $nome;
        public $email;
        public $fone;
        public $msg;
        public $data;
        public $hora;

        // Método (função)
        public function InserirContato() {
            $query = "INSERT INTO contato(nomeContato,emailContato,foneContato,mensagemContato,data,hora)
                      VALUES ('".$this->nome."','".$this->email."', '".$this->fone."','".$this->msg."','".$this->data."','".$this->hora."');";

            $conexao = Conexao::LigarConexao();
            $conexao->exec($query);
        }

        //Listar Serviço
        public function ListaServico() {
            $query = "SELECT * FROM servico ORDER BY idServico ASC";

            $conexao = Conexao::LigarConexao();
            $conexao->exec("SET NAMES UTF8");
            $resultado = $conexao->query($query);

            $lista = $resultado->fetchALL();
            return $lista;
        }

        //Listar Funcionario
        public function ListaFunc() {
            $query = "SELECT * FROM funcionario WHERE statusfuncionario = 'ATIVO' ORDER BY idFuncionario ASC";

            $conexao = Conexao::LigarConexao();
            $conexao->exec("SET NAMES UTF8");
            $resultado = $conexao->query($query);

            $lista = $resultado->fetchALL();
            return $lista;
        }
    }
?>