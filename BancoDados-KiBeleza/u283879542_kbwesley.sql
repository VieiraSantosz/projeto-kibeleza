-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Jul-2022 às 16:30
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u283879542_kbwesley`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `nomeCliente` varchar(100) NOT NULL,
  `emailCliente` varchar(100) NOT NULL,
  `senhaCliente` varchar(45) NOT NULL,
  `statusCliente` varchar(20) NOT NULL,
  `dataCadCliente` date NOT NULL,
  `fotoCliente` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nomeCliente`, `emailCliente`, `senhaCliente`, `statusCliente`, `dataCadCliente`, `fotoCliente`) VALUES
(1, 'FLORISBERTO PEIXOTO', 'flori_peixe@gmail.com', '1234', 'ATIVO', '2022-02-10', 'cliente/florisberto.png'),
(2, 'JOSEFINA DA SILVA', 'jose_fina@hotmail.com', '4321', 'ATIVO', '2022-02-10', 'cliente/josefina.png'),
(3, 'ALEGRIM MIRANDA', 'algre_mira@gmail.com', '6789', 'INATIVO', '2022-02-10', 'cliente/alegre.png'),
(4, 'RICARDO MORAIS', 'ricardo_morais@gmail.com', '2345', 'INATIVO', '2022-02-10', 'cliente/ricardo.png'),
(5, 'TUBAINA DA COSTA', 'tuba_costa@gmail.com', '5432', 'INATIVO', '2022-02-10', 'cliente/tubaina.png'),
(6, 'ZÉ ALESSANDRO', 'ze_ale@gmail.com', '6789', 'ATIVO', '2022-02-10', 'cliente/zeale.png'),
(7, 'CLEBER RIVALDO', 'cleber_rivaldo@gmail.com', '9876', 'ATIVO', '2022-02-10', 'cliente/cleber.png'),
(8, 'MILENNA MASSACHUTS', 'milenna_massa@gmail.com', '3456', 'ATIVO', '2022-02-10', 'cliente/milenna.png'),
(9, 'LOPES', 'lopes@gmail.com', '123', 'ATIVO', '2002-02-12', 'cliente/IMG_5803.png'),
(11, 'teste nome', 'teste email', 'teste senha', 'INATIVO', '2022-03-28', 'cliente/user.png'),
(12, 'teste nome', 'teste email', 'teste senha', 'INATIVO', '2022-03-28', 'cliente/user.png'),
(13, 'teste nome', 'teste email', 'teste senha', 'INATIVO', '2022-03-28', 'cliente/user.png'),
(14, 'teste nome', 'teste email', 'teste senha', 'INATIVO', '2022-03-28', 'cliente/user.png'),
(15, 'RICARDO', 'ricardo@gmail.com', '123', 'ATIVO', '2022-05-31', 'cliente/foto3.png'),
(16, 'A', 'a', 'A', 'ATIVO', '2022-05-31', 'cliente/1.png'),
(17, 'ALISSON', 'alisson@gmail.com', '123', 'ATIVO', '2022-05-31', 'cliente/5.png'),
(18, 'ALISSON', 'alisson@gmail.com', '123', 'ATIVO', '2022-05-31', 'cliente/3.png'),
(19, 'ALISSON', 'alisson@gmail.com', '123', 'ATIVO', '2022-05-31', 'cliente/3.png'),
(20, 'TESTE', 'teste', '123', 'ATIVO', '2022-06-02', 'cliente/FCF0EB52-2C36-4CC5-8D55-CAEE56D2CAC5.PNG'),
(21, 'ALI', 'ali', '123', 'ATIVO', '2022-06-02', 'cliente/camera.png'),
(22, 'SASI', 'sas', '123', 'ATIVO', '2022-06-02', 'cliente/rs.png'),
(35, 'Leo', 'leo@gmail.com', 'leo123', 'ATIVO', '2022-06-10', 'cliente/user.png'),
(61, 'ALICER', 'alicer@gmail.com', '123', 'ATIVO', '2022-06-15', 'cliente/foto4.png');

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `clienteagrupado`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `clienteagrupado` (
`Nome` varchar(100)
,`Email` varchar(100)
,`Telefone` mediumtext
,`Status` varchar(20)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `clienteativo`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `clienteativo` (
`Nome` varchar(100)
,`Email` varchar(100)
,`Senha` varchar(45)
,`Status` varchar(20)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `clientetelefone`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `clientetelefone` (
`Nome` varchar(100)
,`Email` varchar(100)
,`Telefone` varchar(20)
,`Status` varchar(20)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `idContato` int(11) NOT NULL,
  `nomeContato` varchar(50) NOT NULL,
  `emailContato` varchar(80) NOT NULL,
  `foneContato` varchar(14) DEFAULT NULL,
  `mensagemContato` text NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`idContato`, `nomeContato`, `emailContato`, `foneContato`, `mensagemContato`, `data`, `hora`) VALUES
(2, 'Wes', 'wesleyv760@gmail.com', '11111111111111', 'www', '2022-04-14', '09:16:51'),
(3, 'TETE', 'wewew@gmail.com', '2222222222', 'ter', '2022-04-14', '09:29:42'),
(4, 'TETE', 'wewew@gmail.com', '2222222222', 'ter', '2022-04-14', '09:37:49'),
(5, 'ty', 'ty@gmail.com', '32323232', 'ter', '2022-04-14', '09:38:09'),
(6, 'Wes', 'wewew@gmail.com', '123456', 'Salve', '2022-05-25', '09:18:55'),
(10, 'Rhayane', 'rhayane@gmail.com', '968221472', 'teste', '2022-05-25', '09:58:10'),
(11, 'Wes', 'wewew@gmail.com', '123456', 'Salve', '2022-05-25', '11:01:34'),
(12, 'Leonardo', 'leo@gmail.com', '1198765241', 'Testando', '2022-06-10', '09:49:02'),
(13, 'Wesley', 'wesley@gmail.com', '1199999999', 'Teste de cadastro!', '2022-06-10', '09:57:18'),
(14, 'Wesley', 'wesley@gmail.com', '1199999999', 'Teste de cadastro!', '2022-06-10', '09:57:22');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE `empresa` (
  `idEmpresa` int(11) NOT NULL,
  `nomeEmpresa` varchar(100) NOT NULL,
  `cnpjEmpresa` varchar(45) NOT NULL,
  `razaoSocialEmpresa` varchar(100) NOT NULL,
  `emailEmpresa` varchar(100) NOT NULL,
  `statusEmpresa` varchar(45) NOT NULL,
  `dataCadEmpresa` date NOT NULL,
  `horarioAtendEmpresa` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `empresa`
--

INSERT INTO `empresa` (`idEmpresa`, `nomeEmpresa`, `cnpjEmpresa`, `razaoSocialEmpresa`, `emailEmpresa`, `statusEmpresa`, `dataCadEmpresa`, `horarioAtendEmpresa`) VALUES
(1, 'VOLKWAGEM', '111.111.111', 'ESPORTIVOS', 'volks@gmail.com', 'ATIVO', '2022-02-10', '16:00:00'),
(2, 'PORCHE', '222.222.222', 'EXÓTICOS', 'porche@gmail.com', 'ATIVO', '2022-02-10', '12:00:00'),
(5, 'BMW', '333.333.333', 'EXCLUSIVOS', 'bmw@gmail.com', 'ATIVO', '2022-02-10', '13:00:00');

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `empresaagrupado`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `empresaagrupado` (
`Nome` varchar(100)
,`Telefone` mediumtext
,`Email` varchar(100)
,`Status` varchar(45)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `empresaativa`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `empresaativa` (
`Nome` varchar(100)
,`Email` varchar(100)
,`Status` varchar(45)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `empresatelefone`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `empresatelefone` (
`Nome` varchar(100)
,`Telefone` varchar(20)
,`Email` varchar(100)
,`Status` varchar(45)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fonecliente`
--

CREATE TABLE `fonecliente` (
  `idFoneCliente` int(11) NOT NULL,
  `numeroCliente` varchar(20) NOT NULL,
  `operFoneCliente` varchar(45) NOT NULL,
  `descFoneCliente` varchar(45) NOT NULL,
  `idCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fonecliente`
--

INSERT INTO `fonecliente` (`idFoneCliente`, `numeroCliente`, `operFoneCliente`, `descFoneCliente`, `idCliente`) VALUES
(1, '(11)96547-8527', 'TIM', 'RECADO', 1),
(2, '(11)98787-98562', 'CLARO', 'LIGAR APÓS AS 19H', 2),
(3, '(11)9867-3456', 'CLARO', 'DISPONÍVEL', 4),
(4, '(11)95387-2322', 'CLARO', 'DISPONÍVEL', 4),
(5, '(11)92354-0987', 'OI', 'NOVIDADES SOBRE OS PRODUTOS', 5),
(6, '(11)95596-6582', 'OI', 'NOVIDADES SOBRE OS PRODUTOS', 5),
(7, '(11)92358-9687', 'VIVO', 'DESCONTO DA LOJA', 6),
(8, '(11)93235-2247', 'VIVO', 'DESCONTO DA LOJA', 6),
(9, '(11)95687-9291', 'NEXTEL', 'A PARTIR DAS 17H', 7),
(10, '(11)96476-8195', 'NEXTEL', 'A PARTIR DAS 17H', 7),
(11, '(11)98789-6264', 'OI', 'A PARTIR DAS 12H', 8),
(12, '(11)96255-8985', 'TIM', 'A PARTIR DAS 12H', 8),
(13, '(11)95589-6253', 'TIM', 'DISPONIVEL', 3),
(14, '(11)97057-5880', 'CLARO', 'LGBTQ+', 19),
(15, '(11)95959-5959', 'TIM', 'ret', 20),
(16, '(11)92929-2992', 'TIM', 'wes', 21),
(17, '(11)34343-4343', 'VIVO', 'yes', 22),
(18, '(11)95721-4356', 'VIVO', 'Recados', 61);

-- --------------------------------------------------------

--
-- Estrutura da tabela `foneempresa`
--

CREATE TABLE `foneempresa` (
  `idFoneEmpresa` int(11) NOT NULL,
  `numeroEmpresa` varchar(20) NOT NULL,
  `operFoneEmpresa` varchar(45) NOT NULL,
  `descFoneEmpresa` varchar(45) NOT NULL,
  `idEmpresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `foneempresa`
--

INSERT INTO `foneempresa` (`idFoneEmpresa`, `numeroEmpresa`, `operFoneEmpresa`, `descFoneEmpresa`, `idEmpresa`) VALUES
(1, '(11)4008-2325', 'TEL FIXO', 'DISPONÍVEL', 1),
(2, '(11)95853-6561', 'VIVO', 'DISPONÍVEL', 1),
(3, '(11)4584-0302', 'TEL FIXO', 'DISPONÍVEL', 2),
(4, '(11)97496-5263', 'CLARO', 'DISPONÍVEL', 2),
(5, '(11)4241-8564', 'TEL FIXO', 'DISPONÍVEL', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fonefuncionario`
--

CREATE TABLE `fonefuncionario` (
  `idFoneFuncionario` int(11) NOT NULL,
  `numeroFuncionario` varchar(20) NOT NULL,
  `operFoneFuncionario` varchar(45) NOT NULL,
  `descFoneFuncionario` varchar(45) NOT NULL,
  `idFuncionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fonefuncionario`
--

INSERT INTO `fonefuncionario` (`idFoneFuncionario`, `numeroFuncionario`, `operFoneFuncionario`, `descFoneFuncionario`, `idFuncionario`) VALUES
(1, '(11)9584-9632', 'CLARO', 'DISPONÍVEL', 1),
(2, '(11)94125-8952', 'CLARO', 'DISPONÍVEL', 1),
(3, '(11)97412-5896', 'CLARO', 'DISPONÍVEL', 1),
(4, '(11)98556-8956', 'TIM', 'DISPONÍVEL', 2),
(5, '(11)93698-4562', 'TIM', 'DISPONÍVEL', 2),
(6, '(11)95214-5658', 'TIM', 'DISPONÍVEL', 2),
(7, '(11)97896-5216', 'OI', 'DISPONÍVEL', 3),
(8, '(11)99656-0206', 'OI', 'DISPONÍVEL', 3),
(9, '(11)90905-9695', 'OI', 'DISPONÍVEL', 3),
(10, '(11)95632-7859', 'VIVO', 'DISPONÍVEL', 4),
(11, '(11)94112-3659', 'VIVO', 'DISPONÍVEL', 4),
(12, '(11)95681-2723', 'VIVO', 'DISPONÍVEL', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `idFuncionario` int(11) NOT NULL,
  `nomeFuncionario` varchar(100) NOT NULL,
  `emailFuncionario` varchar(100) NOT NULL,
  `senhaFuncionario` varchar(45) NOT NULL,
  `nivelFuncionario` varchar(45) NOT NULL,
  `statusFuncionario` varchar(45) NOT NULL,
  `dataCadFuncionario` date NOT NULL,
  `horarioTrabFuncionario` time NOT NULL,
  `idEmpresa` int(11) NOT NULL,
  `fotoFuncionario` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`idFuncionario`, `nomeFuncionario`, `emailFuncionario`, `senhaFuncionario`, `nivelFuncionario`, `statusFuncionario`, `dataCadFuncionario`, `horarioTrabFuncionario`, `idEmpresa`, `fotoFuncionario`) VALUES
(1, 'lUAN JACKSON', 'luan_jack@gmail.com', '1234', 'Administrador', 'ATIVO', '2022-02-10', '08:00:00', 1, 'equipe/foto1.png'),
(2, 'RHAYANE DE JESUS', 'rhayane_jesus@gmail.com', '4321', 'Administrador', 'ATIVO', '2022-02-10', '10:00:00', 1, 'equipe/foto2.png'),
(3, 'NICKOLAS SANFONA', 'nickolas_sanfona@gmail.com', '9876', 'Administrador', 'ATIVO', '2022-02-10', '09:00:00', 2, 'equipe/foto3.png'),
(4, 'VIEIRA SANTOS', 'vieira_santos@gmail.com', '6789', 'Administrador', 'ATIVO', '2022-02-10', '07:00:00', 5, 'equipe/foto4.png');

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `funcionarioagrupado`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `funcionarioagrupado` (
`Nome'` varchar(100)
,`Email` varchar(100)
,`Telefone` mediumtext
,`Senha` varchar(45)
,`Status` varchar(45)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `funcionarioativo`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `funcionarioativo` (
`Nome'` varchar(100)
,`Email` varchar(100)
,`Senha` varchar(45)
,`Status` varchar(45)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `funcionariotelefone`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `funcionariotelefone` (
`Nome'` varchar(100)
,`Email` varchar(100)
,`Telefone` varchar(20)
,`Senha` varchar(45)
,`Status` varchar(45)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `reserva`
--

CREATE TABLE `reserva` (
  `idReserva` int(11) NOT NULL,
  `obsReserva` text NOT NULL,
  `dataReserva` date NOT NULL,
  `horaReserva` time NOT NULL,
  `statusReserva` varchar(45) NOT NULL,
  `idFuncionario` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `idServico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `reserva`
--

INSERT INTO `reserva` (`idReserva`, `obsReserva`, `dataReserva`, `horaReserva`, `statusReserva`, `idFuncionario`, `idCliente`, `idServico`) VALUES
(1, 'REALIZADA PELO APP', '2022-02-18', '11:00:00', 'AGUARDANDO', 1, 4, 1),
(2, 'REALIZADA PELO APP', '2022-02-18', '13:00:00', 'AGUARDANDO', 3, 2, 2),
(3, 'REALIZADA PELO APP', '2022-02-18', '15:00:00', 'AGUARDANDO', 4, 8, 5),
(4, 'REALIZADA PELO APP', '2022-02-18', '17:00:00', 'AGUARDANDO', 3, 7, 4),
(5, 'REALIZADA PELO APP', '2022-02-18', '19:00:00', 'AGUARDANDO', 2, 6, 3),
(6, 'REALIZADA PELO APP', '2022-02-18', '20:00:00', 'AGUARDANDO', 1, 5, 2),
(7, 'REALIZADA PELO APP', '2022-02-19', '10:00:00', 'AGUARDANDO', 4, 4, 1),
(8, 'REALIZADA PELO APP', '2022-02-19', '13:00:00', 'AGUARDANDO', 3, 3, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

CREATE TABLE `servico` (
  `idServico` int(11) NOT NULL,
  `nomeServico` varchar(100) NOT NULL,
  `valorServico` decimal(10,2) NOT NULL,
  `statusServico` varchar(45) NOT NULL,
  `dataCadServico` date NOT NULL,
  `fotoServico1` varchar(100) NOT NULL,
  `fotoServico2` varchar(100) NOT NULL,
  `fotoServico3` varchar(100) NOT NULL,
  `fotoServico4` varchar(100) NOT NULL,
  `descricaoServico` text NOT NULL,
  `textoServico` text DEFAULT NULL,
  `tempoExecServico` time NOT NULL,
  `idEmpresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `servico`
--

INSERT INTO `servico` (`idServico`, `nomeServico`, `valorServico`, `statusServico`, `dataCadServico`, `fotoServico1`, `fotoServico2`, `fotoServico3`, `fotoServico4`, `descricaoServico`, `textoServico`, `tempoExecServico`, `idEmpresa`) VALUES
(1, 'LIMPEZA DE PELE', '200.00', 'DISPONÍVEL', '2022-02-15', 'servico/foto1.1.png', 'servico/foto1.2.png', 'servico/foto1.3.png', 'servico/foto1.4.png', 'Trata-se de um procedimento estético realizado por um profissional que tem como objetivo remover as impurezas do rosto.', '-', '00:45:00', 1),
(2, 'MASSAGEM RELAXANTE', '150.00', 'DISPONÍVEL', '2022-02-15', 'servico/foto2.1.png', 'servico/foto2.2.png', 'servico/foto2.3.png', 'servico/foto2.4.png', 'Uma experiência de Bem-Estar exclusiva da Porche! Iniciamos com uma massagem corporal profundamente relaxante e única.                     ', '-', '00:50:00', 2),
(3, 'IMERSÃO DE CASAL', '170.00', 'DISPONÍVEL', '2022-02-15', 'servico/foto3.1.png', 'servico/foto3.2.png', 'servico/foto3.3.png', 'servico/foto3.4.png', 'Água aquecida de 30 a 40 graus, com Sais de Banho Porche, além de pétalas de rosa. Nossos banhos reestabelecem a energia.', '-', '00:20:00', 2),
(4, 'RELAXANTE CORPORAL', '250.00', 'DISPONÍVEL', '2022-02-15', 'servico/foto4.1.png', 'servico/foto4.2.png', 'servico/foto4.3.png', 'servico/foto4.4.png', 'Massagem antiestresse feita com óleo relaxante. Movimentos de deslizamentos contínuos e um prolongado bem-estar.', '-', '01:20:00', 5),
(5, 'ALONGAMENTO', '110.00', 'DISPONÍVEL', '2022-02-15', 'servico/foto5.1.png', 'servico/foto5.2.png', 'servico/foto5.3.png', 'servico/foto5.4.png', 'É realizado com movimentos  para aumentar a flexibilidade muscular.Esta atividade proporciona maior agilidade ao corpo.', '-', '01:30:00', 5);

-- --------------------------------------------------------

--
-- Estrutura para vista `clienteagrupado`
--
DROP TABLE IF EXISTS `clienteagrupado`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u283879542_wesley`@`127.0.0.1` SQL SECURITY DEFINER VIEW `clienteagrupado`  AS SELECT `cliente`.`nomeCliente` AS `Nome`, `cliente`.`emailCliente` AS `Email`, group_concat(`fonecliente`.`numeroCliente` separator ',') AS `Telefone`, `cliente`.`statusCliente` AS `Status` FROM (`cliente` join `fonecliente` on(`fonecliente`.`idCliente` = `cliente`.`idCliente`)) GROUP BY `cliente`.`nomeCliente` ORDER BY `cliente`.`nomeCliente` ASC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `clienteativo`
--
DROP TABLE IF EXISTS `clienteativo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u283879542_wesley`@`127.0.0.1` SQL SECURITY DEFINER VIEW `clienteativo`  AS SELECT `cliente`.`nomeCliente` AS `Nome`, `cliente`.`emailCliente` AS `Email`, `cliente`.`senhaCliente` AS `Senha`, `cliente`.`statusCliente` AS `Status` FROM `cliente` WHERE `cliente`.`statusCliente` = 'ATIVO' ORDER BY `cliente`.`nomeCliente` ASC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `clientetelefone`
--
DROP TABLE IF EXISTS `clientetelefone`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u283879542_wesley`@`127.0.0.1` SQL SECURITY DEFINER VIEW `clientetelefone`  AS SELECT `cliente`.`nomeCliente` AS `Nome`, `cliente`.`emailCliente` AS `Email`, `fonecliente`.`numeroCliente` AS `Telefone`, `cliente`.`statusCliente` AS `Status` FROM (`cliente` join `fonecliente` on(`fonecliente`.`idCliente` = `cliente`.`idCliente`)) ORDER BY `cliente`.`nomeCliente` ASC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `empresaagrupado`
--
DROP TABLE IF EXISTS `empresaagrupado`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u283879542_wesley`@`127.0.0.1` SQL SECURITY DEFINER VIEW `empresaagrupado`  AS SELECT `empresa`.`nomeEmpresa` AS `Nome`, group_concat(`foneempresa`.`numeroEmpresa` separator ',') AS `Telefone`, `empresa`.`emailEmpresa` AS `Email`, `empresa`.`statusEmpresa` AS `Status` FROM (`empresa` join `foneempresa` on(`foneempresa`.`idEmpresa` = `empresa`.`idEmpresa`)) GROUP BY `empresa`.`nomeEmpresa` ORDER BY `empresa`.`nomeEmpresa` ASC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `empresaativa`
--
DROP TABLE IF EXISTS `empresaativa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u283879542_wesley`@`127.0.0.1` SQL SECURITY DEFINER VIEW `empresaativa`  AS SELECT `empresa`.`nomeEmpresa` AS `Nome`, `empresa`.`emailEmpresa` AS `Email`, `empresa`.`statusEmpresa` AS `Status` FROM `empresa` WHERE `empresa`.`statusEmpresa` = 'ATIVO' ORDER BY `empresa`.`nomeEmpresa` ASC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `empresatelefone`
--
DROP TABLE IF EXISTS `empresatelefone`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u283879542_wesley`@`127.0.0.1` SQL SECURITY DEFINER VIEW `empresatelefone`  AS SELECT `empresa`.`nomeEmpresa` AS `Nome`, `foneempresa`.`numeroEmpresa` AS `Telefone`, `empresa`.`emailEmpresa` AS `Email`, `empresa`.`statusEmpresa` AS `Status` FROM (`empresa` join `foneempresa` on(`foneempresa`.`idEmpresa` = `empresa`.`idEmpresa`)) ORDER BY `empresa`.`nomeEmpresa` ASC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `funcionarioagrupado`
--
DROP TABLE IF EXISTS `funcionarioagrupado`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u283879542_wesley`@`127.0.0.1` SQL SECURITY DEFINER VIEW `funcionarioagrupado`  AS SELECT `funcionario`.`nomeFuncionario` AS `Nome'`, `funcionario`.`emailFuncionario` AS `Email`, group_concat(`fonefuncionario`.`numeroFuncionario` separator ',') AS `Telefone`, `funcionario`.`senhaFuncionario` AS `Senha`, `funcionario`.`statusFuncionario` AS `Status` FROM (`funcionario` join `fonefuncionario` on(`fonefuncionario`.`idFuncionario` = `funcionario`.`idFuncionario`)) GROUP BY `funcionario`.`nomeFuncionario` ORDER BY `funcionario`.`nomeFuncionario` ASC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `funcionarioativo`
--
DROP TABLE IF EXISTS `funcionarioativo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u283879542_wesley`@`127.0.0.1` SQL SECURITY DEFINER VIEW `funcionarioativo`  AS SELECT `funcionario`.`nomeFuncionario` AS `Nome'`, `funcionario`.`emailFuncionario` AS `Email`, `funcionario`.`senhaFuncionario` AS `Senha`, `funcionario`.`statusFuncionario` AS `Status` FROM `funcionario` WHERE `funcionario`.`statusFuncionario` = 'ATIVO' ORDER BY `funcionario`.`nomeFuncionario` ASC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `funcionariotelefone`
--
DROP TABLE IF EXISTS `funcionariotelefone`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u283879542_wesley`@`127.0.0.1` SQL SECURITY DEFINER VIEW `funcionariotelefone`  AS SELECT `funcionario`.`nomeFuncionario` AS `Nome'`, `funcionario`.`emailFuncionario` AS `Email`, `fonefuncionario`.`numeroFuncionario` AS `Telefone`, `funcionario`.`senhaFuncionario` AS `Senha`, `funcionario`.`statusFuncionario` AS `Status` FROM (`funcionario` join `fonefuncionario` on(`fonefuncionario`.`idFuncionario` = `funcionario`.`idFuncionario`)) ORDER BY `funcionario`.`nomeFuncionario` ASC ;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices para tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`idContato`);

--
-- Índices para tabela `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`idEmpresa`);

--
-- Índices para tabela `fonecliente`
--
ALTER TABLE `fonecliente`
  ADD PRIMARY KEY (`idFoneCliente`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Índices para tabela `foneempresa`
--
ALTER TABLE `foneempresa`
  ADD PRIMARY KEY (`idFoneEmpresa`),
  ADD KEY `idEmpresa` (`idEmpresa`);

--
-- Índices para tabela `fonefuncionario`
--
ALTER TABLE `fonefuncionario`
  ADD PRIMARY KEY (`idFoneFuncionario`),
  ADD KEY `idFuncionario` (`idFuncionario`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idFuncionario`),
  ADD KEY `idEmpresa` (`idEmpresa`);

--
-- Índices para tabela `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`idReserva`),
  ADD KEY `idCliente` (`idCliente`),
  ADD KEY `idFuncionario` (`idFuncionario`),
  ADD KEY `idServico` (`idServico`);

--
-- Índices para tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`idServico`),
  ADD KEY `idEmpresa` (`idEmpresa`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `idContato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `empresa`
--
ALTER TABLE `empresa`
  MODIFY `idEmpresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `fonecliente`
--
ALTER TABLE `fonecliente`
  MODIFY `idFoneCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `foneempresa`
--
ALTER TABLE `foneempresa`
  MODIFY `idFoneEmpresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `fonefuncionario`
--
ALTER TABLE `fonefuncionario`
  MODIFY `idFoneFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `idFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `reserva`
--
ALTER TABLE `reserva`
  MODIFY `idReserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `idServico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `fonecliente`
--
ALTER TABLE `fonecliente`
  ADD CONSTRAINT `fonecliente_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `foneempresa`
--
ALTER TABLE `foneempresa`
  ADD CONSTRAINT `foneempresa_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`idEmpresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `fonefuncionario`
--
ALTER TABLE `fonefuncionario`
  ADD CONSTRAINT `fonefuncionario_ibfk_1` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`idEmpresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `reserva_ibfk_3` FOREIGN KEY (`idServico`) REFERENCES `servico` (`idServico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `reserva_ibfk_4` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `servico`
--
ALTER TABLE `servico`
  ADD CONSTRAINT `servico_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`idEmpresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
