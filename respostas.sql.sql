-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 06-Set-2019 às 00:47
-- Versão do servidor: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE veiculos;

-- --------------------------------------------------------

--
-- Estrutura da tabela `carros`
--

CREATE TABLE `carros` (
  `id` int(11) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `preco` double(18,2) NOT NULL,
  `ano` year NOT NULL,
  `fabricante` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `carros`
--

INSERT INTO `carros` (`id`, `modelo`, `preco`, `ano`, `fabricante`) VALUES
(1, 'SIENA', 30000, 2015, 'FIAT'),
(2, 'PALIO', 22900, 2012, 'FIAT'),
(3, 'UNO', 7800, 2000, 'FIAT'),
(4, 'LOGAN', 12990, 2019, 'RENAULT'),
(5, 'CELTA', 13990, 2009, 'CHEVROLET'),
(6, 'FIESTA', 36500, 2015, 'FORD'),
(7, 'MERIVA', 25900, 2012, 'CHEVROLET'),
(8, 'DOBLO', 48890, 2016, 'FIAT'),
(9, 'ONIX', 39800, 2017, 'CHEVROLET'),
(10, 'CELTA', 19490, 2012, 'CHEVROLET'),
(11, 'KA', 15920, 2012, 'FORD'),
(12, 'FUSION', 79990, 2016, 'FORD'),
(13, 'ECOSPORT', 54800, 2015, 'FORD'),
(15, 'SANDERO', 31900, 2013, 'RENAULT'),
(16, 'COROLLA', 55900, 2014, 'TOYOTA'),
(17, 'ETIOS', 35990, 2016, 'TOYOTA'),
(18, 'HILUX', 162000, 2017, 'TOYOTA'),
(19, 'AGILE', 26900, 2016, 'CHEVROLET'),
(20, 'COBALT', 40700, 2017, 'CHEVROLET'),
(21, 'SIENA', 31120, 2014, 'FIAT'),
(22, 'PALIO', 16890, 2008, 'FIAT'),
(23, 'UNO', 20900, 2011, 'FIAT'),
(24, 'LOGAN', 18899, 2010, 'RENAULT'),
(25, 'FIESTA', 22990, 2011, 'FORD'),
(26, 'DOBLO', 35850, 2010, 'FIAT'),
(27, 'ONIX', 36900, 2016, 'CHEVROLET'),
(28, 'KA', 15920, 2012, 'FORD'),
(29, 'ECOSPORT', 20500, 2014, 'FORD'),
(30, 'FIORINO', 22990, 2012, 'FIAT'),
(31, 'SANDERO', 26900, 2013, 'RENAULT'),
(32, 'STRADA', 44900, 2017, 'FIAT'),
(33, 'ARGO', 58900, 2018, 'FIAT');

ALTER TABLE `carros`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `carros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;
 
 select * from carros where preco between 30000 and 50000;
 
 select * from carros order by preco DESC limit 5;
 
 select * from carros where fabricante = 'fiat' and preco < 30000 order by preco;
 
 select modelo from carros where ano >= 2015;
 
 Select preco from carros where preco > 30000 and fabricante = 'chevrolet' order by preco;
 
 select preco,ano from carros where fabricante = 'renault' order by preco DESC;
 
 update carros set preco = 14000 where modelo = 'LOGAN' and ano = '2019';
 
use veiculos;
delete from carros where modelo = 'FLUENCE' and ano = '2018';