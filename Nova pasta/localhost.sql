-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 14/06/2023 às 19:06
-- Versão do servidor: 10.5.20-MariaDB
-- Versão do PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `id20691181_magnibd`
--
CREATE DATABASE IF NOT EXISTS `id20691181_magnibd` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id20691181_magnibd`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_ALIMENTO`
--

CREATE TABLE `TB_ALIMENTO` (
  `ID_alimento` int(11) NOT NULL,
  `nome_alimento` varchar(40) NOT NULL,
  `tipo_alimento` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_CARGO`
--

CREATE TABLE `TB_CARGO` (
  `ID_cargo` int(11) NOT NULL,
  `cargo` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `TB_CARGO`
--

INSERT INTO `TB_CARGO` (`ID_cargo`, `cargo`) VALUES
(1, 'administrador'),
(2, 'usuario');

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_CARTAO_CLIENTE`
--

CREATE TABLE `TB_CARTAO_CLIENTE` (
  `ID_cartao` int(11) NOT NULL,
  `ID_empresa` int(11) NOT NULL,
  `numero_cartao` varchar(19) NOT NULL,
  `nome_cartao` varchar(60) NOT NULL,
  `validade_cartao` char(7) NOT NULL,
  `csv_cartao` int(11) DEFAULT NULL,
  `bandeira_cartao` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_DIETA`
--

CREATE TABLE `TB_DIETA` (
  `ID_dieta` int(11) NOT NULL,
  `ID_aluno` int(11) NOT NULL,
  `DTA_inicio` datetime NOT NULL,
  `DTA_fim` datetime NOT NULL,
  `ID_item_dieta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_EMPRESA`
--

CREATE TABLE `TB_EMPRESA` (
  `ID_empresa` int(11) NOT NULL,
  `ID_cargo` int(11) DEFAULT NULL,
  `razao_empresa` varchar(60) DEFAULT NULL,
  `nome_fantasia_empresa` varchar(60) DEFAULT NULL,
  `nome_empresa` varchar(60) NOT NULL,
  `contato_empresa` varchar(40) DEFAULT NULL,
  `endereco_empresa` varchar(120) DEFAULT NULL,
  `fone_empresa` char(16) NOT NULL,
  `email_empresa` varchar(40) NOT NULL,
  `status_empresa` varchar(40) DEFAULT NULL,
  `foto_empresa` blob DEFAULT NULL,
  `senha_empresa` char(8) NOT NULL,
  `cnpj_empresa` char(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `TB_EMPRESA`
--

INSERT INTO `TB_EMPRESA` (`ID_empresa`, `ID_cargo`, `razao_empresa`, `nome_fantasia_empresa`, `nome_empresa`, `contato_empresa`, `endereco_empresa`, `fone_empresa`, `email_empresa`, `status_empresa`, `foto_empresa`, `senha_empresa`, `cnpj_empresa`) VALUES
(1, 1, 'Tecnologia', 'Magni', 'Magni', 'email@email', 'Rua dos Bobos, n°0', '11940028922', 'tccmagni@gmail.com', 'ativo', 0x89504e470d0a1a0a0000000d49484452000000e1000000e10803000000096d224800000072504c5445000000ffffffc8c8c87171714c4c4cbfbfbfd7d7d7f7f7f7aaaaaae3e3e35959593c3c3cdfdfdfb2b2b2cfcfcfededed9e9e9e1c1c1c232323161616b7b7b7e8e8e88585851111116060602727277e7e7eafafafa0a0a06b6b6b4848485454549191912e2e2e3737378d8d8d41414178787821aed75c0000068949444154789ced9deb729b400c8521d45df025899d348ed3bab19dfafd5fb1c16058e08815337190189d5f9d029afdb232b0ba2c51ec699926a7a748b79e4e49baf4a1a2ea5f2e5d8c3dba2fd329755dc2d566ec617da936ab16a19b8f3da42fd7dcf984d97aecf1dc40ebac26ccb6638fe626da66574237c519ccb57625e1f47e8357cd0bc2d5d8e3b8a15639a19bd663a2a98dfb244cc71ec54d957e124ee74d06691147cbb1c770632da3693be9a79b46c9d843b8b192e834f6106eac45a47d3d18d2d4f94c2693c96432994c2693c96432994c2693c96432994c2693c96432994ca66fd0e24750836d864d7e6715e57d1cd4eb409349d8e4fd4d58b0eec2c3195af3380b9bbcbb090b1683f0d7308bdb077584f1fb208baf0c8bd20887b9e9b342c26c904586938a238c87d4e6fee0181447f838c0e06f958443dc94e3a4f208e31ddbde5f963d798407b6bd3f4a09f9cd2abf9412b2efa63c279548f8c23477504bf893696e19362594303eb2ac9d98d62412beb1ac7d2826e48d89b19e164b18b3ac718d8924e4f4febda8269c318c719d542621c74dd9b6641286ddf44d3961d84df9b664123e844cad5dd88868c2606478cf372594f039608a1109164e1870d32ddf49a512c6fd399af9004b52097ff75ae24482a513f6bbe9002715410883827d693f1809a6428b120861ccec4f8fa1145d00ff5308e11e395d5f9e0d4dd703b5d890403887eb84bfa49d7774faec2c983081afd107d20ef4eabde4397c834b213a329c81b31d195c9440f88297b3ff083330123c8b1e05137ee0d5de813003515ef10d5608e1235eb15391e19fe864fa3d4702614a1cc21b33eed0a9cfb47509842ba2f2072730e01d654e4cad10c219b166c7d54c88247f8b4577582984f7d43164648b4e7c164e983ff9a09ba204064c57e4410f2a5f2a81302f4e80ab763438f4e8bc2cb5a413c2c88beb6e9bb6417f897cb94c96b84920bc2c2360f4ac1b1986ef06730a5d0a61b19ee78d0ed970f981a368c2cba39de5a6f0a972a9f65b10c64510ba4b91108c9fb523c3d0972fafe8648d9b08c2a2be044d4f3b818126ba88069001460984e5721ebd3abb9609747551924a16d38a202c0a83e12c346b862146113c2633192208cbcdcfd133bbb96d389ae6b29891acda174158de4f50b968d34dd14fb52c482553a62208f7c571e8a6fee6f63d4e4a97d788203c9727a0172fbfb41d052aae71552a4c2383f0bad4ed23c885fe028f3dd7ca213c9427fc4307ebbb298c045f4b8ac99ca908c22a478126a94e60a0487016342e82b07a242057ab23c3a8dcb22aed272b884410568380afcfa7be8355a5a61242186cb94e13ba5bd631552ad42683b00eaa218aab9b22fa43752559312c82b09e0998932816896b74a8ce1453a13669843d138522c1de8564ff8c0842af1388feb1a11fda47751d5d612382d07b6f216f984774a0ee20823e2c87d0795fff42778cfcad0ea5783d27ddc8268cbd8013fab9e5f75af4bcf3523747e184dec7a390bbb95db443bf33cf36dd7d2183d0efc843779473842a2dfcdc14dd042583d06fe6424bd93b78ad9fb8a16bf96410fa45094774020cb2f9334f97d4ca206c44d4909ba2454723814a57b6cb206c84b6b9bd228dec22dd052583b0916322732c4d35bfde4777ccca206cd624f0da619a23a71bd765101e1ae7f1dcb499025f91e7c9206ced86c1226c5e42d745cb206c7df293e3a6ad81d3ed0932085bed1554a9a8af846b5b06613b4dc8206c5d418669841286abfadb5768230c6f70b56f5da18d30d89af6d02e61d04618ecdcea5ca08e30e4a66d27d54718e8fb6917306824ec77d36e7ba23ec2fe9dd8badf75d747d8fbd0ef3aa946c2be1643d043ab90b0af4d146c3da890b067ab32d47da991905ed3aec0d91a09e9bb296ad6d74848ba296c115649480597e006a02a09a9bb29dcc4552521f16e8afbd87512e25235bc4bad4e4258e64634eaeb248445c34417bb5242948c207622504a8812bb44ffb35242503f446dc22b83900ed653a3e8d60f511b29d31b617ee7befaf38412b513fbeedc3af14ced32fc4adaeec6034c2693c96432994c2693c96432994c2693c96432994c2693c96432994c26d3407537da9e969e22ee97a5b56a1171be85aa5949844b91a7a334e27fe25da7b2a8f7b368fab58823a2627e2a4a3f099bbbc34c4c1b976fdb841ac8a6a255b131d5746b6ff376a49cd0e1cf31e9d76543874b1f72b60d9fad50db4b8340d1699d4d7116d7450744d94beea6f75b9c970d7355b7fc6a5a0f8d4dd57c5cef07e052ea3385fab448eb8ec7c68e07cb3439695f2f3e2d92b4d182f41f491f4a2e1b112cd90000000049454e44ae426082, 'Tccmagni', '24.481.134/0001.85'),
(11, 2, NULL, NULL, 'helder', NULL, NULL, '(11)9-4548-8544', 'helder@gmail', NULL, NULL, '40028922', '45.554.554/4541-54'),
(12, 2, NULL, NULL, 'helder', NULL, NULL, '(12)9-3454-5000', 'ju@email', NULL, NULL, '40028922', '45.454.544/5551-45'),
(13, 2, NULL, NULL, 'Helder', NULL, NULL, '(11)9-7708-8130', 'helder@gmail.com', NULL, NULL, '123', '24.481.134/0001-85'),
(14, 2, NULL, NULL, 'Guilherme', NULL, NULL, '11980351241', 'gui@email', NULL, NULL, '40028922', '27.247.263/4761-73');

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_EXERCICIO`
--

CREATE TABLE `TB_EXERCICIO` (
  `ID_exercicio` int(11) NOT NULL,
  `nome_exercicio` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_ITEM_DIETA`
--

CREATE TABLE `TB_ITEM_DIETA` (
  `ID_item_dieta` int(11) NOT NULL,
  `ID_alimento` int(11) NOT NULL,
  `tipo_alimento` int(11) NOT NULL,
  `calorias_alimento` int(11) NOT NULL,
  `QTD_alimento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_ITEM_TREINO`
--

CREATE TABLE `TB_ITEM_TREINO` (
  `ID_item_treino` int(11) NOT NULL,
  `ID_exercicio` int(11) NOT NULL,
  `serie_ex` int(11) NOT NULL,
  `repeticao_ex` int(11) NOT NULL,
  `peso_ex` int(11) NOT NULL,
  `tempo_ex` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_PEDIDO_VENDA`
--

CREATE TABLE `TB_PEDIDO_VENDA` (
  `ID_venda` int(11) NOT NULL,
  `ID_empresa` int(11) NOT NULL,
  `data_venda` datetime NOT NULL,
  `condicao_venda` varchar(40) NOT NULL,
  `pagamento_venda` varchar(40) NOT NULL,
  `status_venda` varchar(40) NOT NULL,
  `valor_venda` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_PLANO`
--

CREATE TABLE `TB_PLANO` (
  `ID_plano` int(11) NOT NULL,
  `ID_usuario_adm` int(11) NOT NULL,
  `validade_plano` date NOT NULL,
  `valor_plano` decimal(6,2) NOT NULL,
  `status_plano` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_TREINO`
--

CREATE TABLE `TB_TREINO` (
  `ID_treino` int(11) NOT NULL,
  `ID_aluno` int(11) NOT NULL,
  `DTA_inicio` datetime NOT NULL,
  `DTA_fim` datetime NOT NULL,
  `ID_item_treino` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_USUARIO_ADM`
--

CREATE TABLE `TB_USUARIO_ADM` (
  `ID_usuario_adm` int(11) NOT NULL,
  `ID_empresa` int(11) NOT NULL,
  `email_usuario_adm` varchar(40) NOT NULL,
  `senha_usuario_adm` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_USUARIO_ALUNO`
--

CREATE TABLE `TB_USUARIO_ALUNO` (
  `ID_aluno` int(11) NOT NULL,
  `nome_aluno` varchar(80) NOT NULL,
  `email_aluno` varchar(80) NOT NULL,
  `senha_aluno` varchar(20) NOT NULL,
  `cpf_aluno` char(14) NOT NULL,
  `telefone_aluno` char(17) DEFAULT NULL,
  `foto_aluno` blob DEFAULT NULL,
  `genero_aluno` char(1) DEFAULT NULL,
  `data_nasc_aluno` date DEFAULT NULL,
  `acad_aluno` varchar(30) NOT NULL,
  `peso_aluno` varchar(6) NOT NULL,
  `altura_aluno` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `TB_USUARIO_ALUNO`
--

INSERT INTO `TB_USUARIO_ALUNO` (`ID_aluno`, `nome_aluno`, `email_aluno`, `senha_aluno`, `cpf_aluno`, `telefone_aluno`, `foto_aluno`, `genero_aluno`, `data_nasc_aluno`, `acad_aluno`, `peso_aluno`, `altura_aluno`) VALUES
(1, '$nomex', '$emailx', '$senhax', '$cpfx', '$telefonex', NULL, NULL, NULL, '$academiax', '', ''),
(2, 'marina', 'Marina@gmail.com', '123', '', '11236598742', NULL, NULL, NULL, 'academia', '', ''),
(3, 'Mari', 'Mari@gmail.com', '123', '', '11987456321', NULL, NULL, NULL, 'Academiaa', '', ''),
(4, 'raissa', 'raissa@gmail.com', '123', '', '11659823659', NULL, NULL, NULL, 'Academia', '', ''),
(5, 'Joāo', 'joaogmail', '321', '', '11758964238', NULL, NULL, NULL, 'Academia', '', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `TB_ALIMENTO`
--
ALTER TABLE `TB_ALIMENTO`
  ADD PRIMARY KEY (`ID_alimento`);

--
-- Índices de tabela `TB_CARGO`
--
ALTER TABLE `TB_CARGO`
  ADD PRIMARY KEY (`ID_cargo`);

--
-- Índices de tabela `TB_CARTAO_CLIENTE`
--
ALTER TABLE `TB_CARTAO_CLIENTE`
  ADD PRIMARY KEY (`ID_cartao`),
  ADD KEY `ID_empresa` (`ID_empresa`);

--
-- Índices de tabela `TB_DIETA`
--
ALTER TABLE `TB_DIETA`
  ADD PRIMARY KEY (`ID_dieta`),
  ADD KEY `ID_aluno` (`ID_aluno`),
  ADD KEY `ID_item_dieta` (`ID_item_dieta`);

--
-- Índices de tabela `TB_EMPRESA`
--
ALTER TABLE `TB_EMPRESA`
  ADD PRIMARY KEY (`ID_empresa`),
  ADD KEY `ID_cargo` (`ID_cargo`);

--
-- Índices de tabela `TB_EXERCICIO`
--
ALTER TABLE `TB_EXERCICIO`
  ADD PRIMARY KEY (`ID_exercicio`);

--
-- Índices de tabela `TB_ITEM_DIETA`
--
ALTER TABLE `TB_ITEM_DIETA`
  ADD PRIMARY KEY (`ID_item_dieta`),
  ADD KEY `ID_alimento` (`ID_alimento`);

--
-- Índices de tabela `TB_ITEM_TREINO`
--
ALTER TABLE `TB_ITEM_TREINO`
  ADD PRIMARY KEY (`ID_item_treino`),
  ADD KEY `ID_exercicio` (`ID_exercicio`);

--
-- Índices de tabela `TB_PEDIDO_VENDA`
--
ALTER TABLE `TB_PEDIDO_VENDA`
  ADD PRIMARY KEY (`ID_venda`),
  ADD KEY `ID_empresa` (`ID_empresa`);

--
-- Índices de tabela `TB_PLANO`
--
ALTER TABLE `TB_PLANO`
  ADD PRIMARY KEY (`ID_plano`),
  ADD KEY `ID_usuario_adm` (`ID_usuario_adm`);

--
-- Índices de tabela `TB_TREINO`
--
ALTER TABLE `TB_TREINO`
  ADD PRIMARY KEY (`ID_treino`),
  ADD KEY `ID_aluno` (`ID_aluno`),
  ADD KEY `ID_item_treino` (`ID_item_treino`);

--
-- Índices de tabela `TB_USUARIO_ADM`
--
ALTER TABLE `TB_USUARIO_ADM`
  ADD PRIMARY KEY (`ID_usuario_adm`),
  ADD KEY `ID_empresa` (`ID_empresa`);

--
-- Índices de tabela `TB_USUARIO_ALUNO`
--
ALTER TABLE `TB_USUARIO_ALUNO`
  ADD PRIMARY KEY (`ID_aluno`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `TB_ALIMENTO`
--
ALTER TABLE `TB_ALIMENTO`
  MODIFY `ID_alimento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `TB_CARGO`
--
ALTER TABLE `TB_CARGO`
  MODIFY `ID_cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `TB_CARTAO_CLIENTE`
--
ALTER TABLE `TB_CARTAO_CLIENTE`
  MODIFY `ID_cartao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `TB_DIETA`
--
ALTER TABLE `TB_DIETA`
  MODIFY `ID_dieta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `TB_EMPRESA`
--
ALTER TABLE `TB_EMPRESA`
  MODIFY `ID_empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `TB_EXERCICIO`
--
ALTER TABLE `TB_EXERCICIO`
  MODIFY `ID_exercicio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `TB_ITEM_DIETA`
--
ALTER TABLE `TB_ITEM_DIETA`
  MODIFY `ID_item_dieta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `TB_ITEM_TREINO`
--
ALTER TABLE `TB_ITEM_TREINO`
  MODIFY `ID_item_treino` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `TB_PEDIDO_VENDA`
--
ALTER TABLE `TB_PEDIDO_VENDA`
  MODIFY `ID_venda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `TB_PLANO`
--
ALTER TABLE `TB_PLANO`
  MODIFY `ID_plano` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `TB_TREINO`
--
ALTER TABLE `TB_TREINO`
  MODIFY `ID_treino` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `TB_USUARIO_ADM`
--
ALTER TABLE `TB_USUARIO_ADM`
  MODIFY `ID_usuario_adm` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `TB_USUARIO_ALUNO`
--
ALTER TABLE `TB_USUARIO_ALUNO`
  MODIFY `ID_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `TB_CARTAO_CLIENTE`
--
ALTER TABLE `TB_CARTAO_CLIENTE`
  ADD CONSTRAINT `TB_CARTAO_CLIENTE_ibfk_1` FOREIGN KEY (`ID_empresa`) REFERENCES `TB_EMPRESA` (`ID_empresa`);

--
-- Restrições para tabelas `TB_DIETA`
--
ALTER TABLE `TB_DIETA`
  ADD CONSTRAINT `TB_DIETA_ibfk_1` FOREIGN KEY (`ID_aluno`) REFERENCES `TB_USUARIO_ALUNO` (`ID_aluno`),
  ADD CONSTRAINT `TB_DIETA_ibfk_2` FOREIGN KEY (`ID_item_dieta`) REFERENCES `TB_ITEM_DIETA` (`ID_item_dieta`);

--
-- Restrições para tabelas `TB_EMPRESA`
--
ALTER TABLE `TB_EMPRESA`
  ADD CONSTRAINT `TB_EMPRESA_ibfk_1` FOREIGN KEY (`ID_cargo`) REFERENCES `TB_CARGO` (`ID_cargo`);

--
-- Restrições para tabelas `TB_ITEM_DIETA`
--
ALTER TABLE `TB_ITEM_DIETA`
  ADD CONSTRAINT `TB_ITEM_DIETA_ibfk_1` FOREIGN KEY (`ID_alimento`) REFERENCES `TB_ALIMENTO` (`ID_alimento`);

--
-- Restrições para tabelas `TB_ITEM_TREINO`
--
ALTER TABLE `TB_ITEM_TREINO`
  ADD CONSTRAINT `TB_ITEM_TREINO_ibfk_1` FOREIGN KEY (`ID_exercicio`) REFERENCES `TB_EXERCICIO` (`ID_exercicio`);

--
-- Restrições para tabelas `TB_PEDIDO_VENDA`
--
ALTER TABLE `TB_PEDIDO_VENDA`
  ADD CONSTRAINT `TB_PEDIDO_VENDA_ibfk_1` FOREIGN KEY (`ID_empresa`) REFERENCES `TB_EMPRESA` (`ID_empresa`);

--
-- Restrições para tabelas `TB_PLANO`
--
ALTER TABLE `TB_PLANO`
  ADD CONSTRAINT `TB_PLANO_ibfk_1` FOREIGN KEY (`ID_usuario_adm`) REFERENCES `TB_USUARIO_ADM` (`ID_usuario_adm`);

--
-- Restrições para tabelas `TB_TREINO`
--
ALTER TABLE `TB_TREINO`
  ADD CONSTRAINT `TB_TREINO_ibfk_1` FOREIGN KEY (`ID_aluno`) REFERENCES `TB_USUARIO_ALUNO` (`ID_aluno`),
  ADD CONSTRAINT `TB_TREINO_ibfk_2` FOREIGN KEY (`ID_item_treino`) REFERENCES `TB_ITEM_TREINO` (`ID_item_treino`);

--
-- Restrições para tabelas `TB_USUARIO_ADM`
--
ALTER TABLE `TB_USUARIO_ADM`
  ADD CONSTRAINT `TB_USUARIO_ADM_ibfk_1` FOREIGN KEY (`ID_empresa`) REFERENCES `TB_EMPRESA` (`ID_empresa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
