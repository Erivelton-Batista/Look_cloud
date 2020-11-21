-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Nov-2020 às 15:43
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `look_cloud`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `senhas_cadastradas`
--

CREATE TABLE `senhas_cadastradas` (
  `site` varchar(50) NOT NULL,
  `login` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `usuario_cadastrado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios_cadastro`
--

CREATE TABLE `usuarios_cadastro` (
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(30) NOT NULL,
  `telefone` int(15) NOT NULL,
  `e_mail_secu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios_cadastro`
--

INSERT INTO `usuarios_cadastro` (`nome`, `email`, `senha`, `telefone`, `e_mail_secu`) VALUES
('joceniulson', 'jadhaohdoahs@gmail.com', '123456', 0, '');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `senhas_cadastradas`
--
ALTER TABLE `senhas_cadastradas`
  ADD PRIMARY KEY (`login`),
  ADD UNIQUE KEY `fk_usuario_cadastrado` (`usuario_cadastrado`);

--
-- Índices para tabela `usuarios_cadastro`
--
ALTER TABLE `usuarios_cadastro`
  ADD PRIMARY KEY (`email`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `senhas_cadastradas`
--
ALTER TABLE `senhas_cadastradas`
  ADD CONSTRAINT `fk_usuario_cadastrado` FOREIGN KEY (`usuario_cadastrado`) REFERENCES `usuarios_cadastro` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
