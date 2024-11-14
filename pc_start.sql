-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 14/11/2024 às 01:17
-- Versão do servidor: 8.3.0
-- Versão do PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pc_start`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_cadastro`
--

DROP TABLE IF EXISTS `tb_cadastro`;
CREATE TABLE IF NOT EXISTS `tb_cadastro` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nome_completo` varchar(40) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `cpf` int NOT NULL,
  `data_de_nasciemnto` date DEFAULT NULL,
  `Numero_de_celular` int DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(30) NOT NULL,
  `auth_provider` enum('local','facebook','google') DEFAULT 'local',
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_produto`
--

DROP TABLE IF EXISTS `tb_produto`;
CREATE TABLE IF NOT EXISTS `tb_produto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `link` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `tipo` enum('armazenamento','gabinete','fonte','ram','monitor','mouse','video','mae','processador','teclado','ventoinha') COLLATE utf8mb4_general_ci NOT NULL,
  `categoria` enum('hardware','periferico') COLLATE utf8mb4_general_ci NOT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `imagem_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `link` (`link`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_produto`
--

INSERT INTO `tb_produto` (`id`, `link`, `nome`, `tipo`, `categoria`, `preco`, `imagem_url`) VALUES
(53, 'https://www.kabum.com.br/produto/649716/notebook-gamer-acer-nitro-v15-anv15-51-7837-intel-core-i7-8gb-ram-ddr5-nvidia-rtx-3050-512gb-ssd-15-6-linux-preto-nh-qqdal-008', 'Notebook Gamer Acer Nitro V15 ANV15-51-7837 Intel Core I7, 8GB RAM, DDR5, Nvidia RTX 3050, 512GB SSD', 'armazenamento', 'hardware', 5332.22, 'https://images.kabum.com.br/produtos/fotos/649716/notebook-acer-gamer-nitro-v15-anv15-51-7837-intel-core-i7-8gb-ram-ddr5-15-6-nvidia-rtx-3050-512gb-ssd-linux-preto-nh-qqdal-008_1730306499_m.jpg'),
(54, 'https://www.kabum.com.br/produto/579765/disco-rigido-wd-red-plus-nas-8tb-3-5-5400rpm-256mb-sata-6gb-s', 'Disco Rígido WD Red Plus NAS 8TB, 3.5\", 5400RPM, 256MB, SATA 6GB/s', 'armazenamento', 'hardware', 1729.46, 'https://images.kabum.com.br/produtos/fotos/sync_mirakl/579765/Disco-R-gido-WD-Red-Plus-NAS-8TB-3-5-5400RPM-256MB-SATA-6GB-s_1729390864_m.jpg'),
(55, 'https://www.kabum.com.br/produto/573186/disco-rigido-interno-toshiba-500gb-dt01aca050-6gbps', 'Disco Rígido Interno Toshiba 500gb Dt01aca050 6gbps', 'armazenamento', 'hardware', 89.00, 'https://images.kabum.com.br/produtos/fotos/sync_mirakl/573186/Disco-R-gido-Interno-Toshiba-500gb-Dt01aca050-6gbps_1719961718_m.jpg'),
(56, 'https://www.kabum.com.br/produto/517686/disco-rigido-hpe-1-2tb-sas-10k-sff-bc-mv-hdd-p28586-b21', 'Disco Rígido Hpe 1.2tb Sas 10k Sff Bc Mv Hdd - P28586-b21', 'armazenamento', 'hardware', 2432.70, 'https://images.kabum.com.br/produtos/fotos/sync_mirakl/517686/Disco-R-gido-Hpe-1-2tb-Sas-10k-Sff-Bc-Mv-Hdd-P28586-b21_1703613490_m.jpg'),
(57, 'https://www.kabum.com.br/produto/573187/disco-rigido-interno-sata-wd3200aakx-320gb-7-2k-3-5', 'Disco Rígido Interno Sata Wd3200aakx 320gb 7.2k 3.5', 'armazenamento', 'hardware', 65.90, 'https://images.kabum.com.br/produtos/fotos/sync_mirakl/573187/Disco-R-gido-Interno-Sata-Wd3200aakx-320gb-7-2k-3-5_1713884739_m.jpg'),
(58, 'https://www.kabum.com.br/produto/461667/disco-rigido-externo-portatil-seagate-2tb-hdd-usb-3-0-para-pc-mac-ps4-e-xbox-stgx2000400', 'Disco Rígido Externo Portátil Seagate, 2TB HDD, USB 3.0, Para Pc, Mac, Ps4 E Xbox - STGX2000400', 'armazenamento', 'hardware', 546.50, 'https://images.kabum.com.br/produtos/fotos/sync_mirakl/461667/Disco-R-gido-Externo-Port-til-Seagate-2TB-HDD-USB-3-0-Para-Pc-Mac-Ps4-E-Xbox-STGX2000400_1729528583_m.jpg'),
(59, 'https://www.kabum.com.br/produto/517688/disco-rigido-hpe-2-4tb-sas-10k-sff-bc-512e-mv-hdd-p28352-b21', 'Disco Rígido Hpe 2.4tb Sas 10k Sff Bc 512e Mv Hdd - P28352-b21', 'armazenamento', 'hardware', 3392.19, 'https://images.kabum.com.br/produtos/fotos/sync_mirakl/517688/Disco-R-gido-Hpe-2-4tb-Sas-10k-Sff-Bc-512e-Mv-Hdd-P28352-b21_1703614090_m.jpg'),
(60, 'https://www.kabum.com.br/produto/502788/disco-rigido-interno-wd-black-2tb-performance-classe-7200rpm-sata-6gb-s-64mb-cache-3-5-polegadas-wd2003fzex', 'Disco Rígido Interno WD Black 2TB Performance, Classe 7200RPM, SATA 6GB/s, 64MB Cache, 3.5 Polegadas', 'armazenamento', 'hardware', 1546.90, 'https://images.kabum.com.br/produtos/fotos/sync_mirakl/502788/Disco-R-gido-Interno-WD-Black-2TB-Performance-Classe-7200RPM-SATA-6GB-s-64MB-Cache-3-5-Polegadas-Wd2003fzex_1697740099_m.jpg'),
(61, 'https://www.kabum.com.br/produto/452196/disco-rigido-synology-nas-ds723-2-baias', 'Disco Rígido Synology Nas Ds723+ 2 Baias', 'armazenamento', 'hardware', 5999.00, 'https://images.kabum.com.br/produtos/fotos/sync_mirakl/452196/Disco-R-gido-Synology-Nas-Ds723-2-Baias_1692213533_m.jpg'),
(62, 'https://www.kabum.com.br/produto/589117/disco-rigido-de-vigilancia-western-digital-wd-purple-wd40purx-4-tb-sata-6-0-gb-s-3-5-', 'Disco Rígido De Vigilância Western Digital Wd Purple Wd40purx 4 Tb Sata 6,0 Gb/s 3,5\"', 'armazenamento', 'hardware', 989.99, 'https://images.kabum.com.br/produtos/fotos/sync_mirakl/589117/Disco-R-gido-De-Vigil-ncia-Western-Digital-Wd-Purple-Wd40purx-4-Tb-Sata-6-0-Gb-s-3-5-_1719197567_m.jpg'),
(63, 'https://www.kabum.com.br/produto/573179/disco-rigido-interno-2-5pol-146-gb-sas-15k-rpm-6gb-s-42d0678', 'Disco Rígido Interno 2.5pol 146 Gb Sas 15k Rpm 6gb/s 42d0678', 'armazenamento', 'hardware', 490.00, 'https://images.kabum.com.br/produtos/fotos/sync_mirakl/573179/Disco-R-gido-Interno-2-5pol-146-Gb-Sas-15k-Rpm-6gb-s-42d0678_1713888055_m.jpg'),
(64, 'https://www.kabum.com.br/produto/589128/disco-rigido-para-notebook-western-digital-blue-500gb-2-5-sata-iii-5400rpm-wd5000lpzx', 'Disco Rígido Para Notebook Western Digital Blue 500GB, 2.5\", SATA III, 5400RPM - Wd5000lpzx', 'armazenamento', 'hardware', 390.00, 'https://images.kabum.com.br/produtos/fotos/sync_mirakl/589128/Disco-R-gido-Para-Notebook-Western-Digital-Blue-500GB-2-5-SATA-III-5400RPM-Wd5000lpzx_1718193092_m.jpg'),
(65, 'https://www.kabum.com.br/produto/630053/disco-rigido-interno-hd-500gb-video-3-5-st3500414cs-seagate', 'Disco Rígido Interno Hd 500gb Video 3.5 St3500414cs Seagate', 'armazenamento', 'hardware', 124.00, 'https://images.kabum.com.br/produtos/fotos/sync_mirakl/630053/Disco-R-gido-Interno-Hd-500gb-Video-3-5-St3500414cs-Seagate_1727818593_m.jpg'),
(66, 'https://www.kabum.com.br/produto/651783/disco-rigido-interno-de-alto-desempenho-wd_black-de-6tb-da-western-digital-7200-rpm-sata-6-gb-s-256-mb-de-cache-3-5-wd6004fzbx-', 'Disco Rígido Interno De Alto Desempenho Wd_black De 6tb Da Western Digital - 7200 Rpm, Sata 6 Gb/s, ', 'armazenamento', 'hardware', 2843.90, 'https://images.kabum.com.br/produtos/fotos/sync_mirakl/651783/Disco-R-gido-Interno-De-Alto-Desempenho-Wd-black-De-6tb-Da-Western-Digital-7200-Rpm-Sata-6-Gb-s-256-Mb-De-Cache-3-5-Wd6004fzbx-_1729694572_m.jpg'),
(67, 'https://www.kabum.com.br/produto/651908/disco-rigido-interno-de-video-seagate-skyhawk-ai-8tb-hdd-de-3-5-sata-6gb-s-256mb-cache-para-sistema-de-cameras-de-seguranca-dvr-nvr-com-servicos-de-resgate-internos-st8000ve', 'Disco Rígido Interno De Vídeo Seagate Skyhawk Ai 8tb - Hdd De 3,5 \" Sata 6gb/s 256mb Cache Para Sist', 'armazenamento', 'hardware', 2323.90, 'https://images.kabum.com.br/produtos/fotos/sync_mirakl/651908/Disco-R-gido-Interno-De-V-deo-Seagate-Skyhawk-Ai-8tb-Hdd-De-3-5-Sata-6gb-s-256mb-Cache-Para-Sistema-De-C-meras-De-Seguran-a-Dvr-Nvr-Com-Servi-os-De-Resgate-Internos-st8000ve_1729706286_m.jpg'),
(68, 'https://www.kabum.com.br/produto/648258/disco-rigido-hpe-iss-sata-4tb-6g-7-2k-3-5-nhp-801888-b21-estoque-es', 'Disco Rígido Hpe Iss Sata 4TB 6g 7.2k 3.5\" Nhp 801888-b21 Estoque:es', 'armazenamento', 'hardware', 2131.20, 'https://images.kabum.com.br/produtos/fotos/sync_mirakl/648258/Disco-R-gido-Hpe-Iss-Sata-4TB-6g-7-2k-3-5-Nhp-801888-b21-Estoque-es_1728997810_m.jpg'),
(69, 'https://www.kabum.com.br/produto/573184/disco-rigido-interno-western-digital-wd-wd2002fyps-2tb-rec', ' Disco Rígido Interno Western Digital Wd Wd2002fyps 2TB Rec', 'armazenamento', 'hardware', 499.90, 'https://images.kabum.com.br/produtos/fotos/sync_mirakl/573184/Disco-R-gido-Interno-Western-Digital-Wd-Wd2002fyps-2TB-Rec_1713891239_m.jpg'),
(70, 'https://www.kabum.com.br/produto/602264/disco-rigido-10tb-western-digital-nlsas-12g-7-2k', 'Disco Rígido 10tb Western Digital Nlsas 12g 7.2k', 'armazenamento', 'hardware', 7825.61, 'https://images.kabum.com.br/produtos/fotos/sync_mirakl/602264/Disco-R-gido-10tb-Western-Digital-Nlsas-12g-7-2k_1719583709_m.jpg'),
(71, 'https://www.kabum.com.br/produto/650266/disco-rigido-interno-toshiba-x300-hdwr21cxzsta-12tb-cinza', 'Disco Rígido Interno Toshiba X300 Hdwr21cxzsta 12TB Cinza', 'armazenamento', 'hardware', 2554.90, 'https://images.kabum.com.br/produtos/fotos/sync_mirakl/650266/Disco-R-gido-Interno-Toshiba-X300-Hdwr21cxzsta-12TB-Cinza_1729512365_m.jpg'),
(72, 'https://www.kabum.com.br/produto/579018/disco-rigido-hewlett-1tb-nhp-6g-7-2k-lff-sata-801882-b21', 'Disco Rígido Hewlett 1TB, NHP, 6G, 7.2K LFF, SATA - 801882-B21', 'armazenamento', 'hardware', 1384.72, 'https://images.kabum.com.br/produtos/fotos/sync_mirakl/579018/Disco-R-gido-Hewlett-1TB-NHP-6G-7-2K-LFF-SATA-801882-B21_1714506577_m.jpg'),
(73, 'https://www.kabum.com.br/produto/324516', 'Gabinete Gamer Rise Mode Glass 06X, Mid Tower, Lateral em Vidro Fumê e Frontal em Vidro Temperado, P', 'gabinete', 'hardware', NULL, NULL),
(74, 'https://www.kabum.com.br/produto/204669', 'Gabinete Gamer Rise Mode Z3 Glass, Lateral em Vidro Fumê, Preto - RM-Z03-03-FB', 'gabinete', 'hardware', NULL, NULL),
(75, 'https://www.kabum.com.br/produto/473606', 'Gabinete Gamer Rise Mode Galaxy Glass Standard, Mid Tower, ARGB, ATX, Lateral e Frente em Vidro, 10x', 'gabinete', 'hardware', NULL, NULL),
(76, 'https://www.kabum.com.br/produto/474524', 'Gabinete Gamer Rise Mode Wave White, Mid Tower, ARGB, ATX, 3 Cooler Fan ARGB, Branco - RM-WA-BW-ARGB', 'gabinete', 'hardware', NULL, NULL),
(77, 'https://www.kabum.com.br/produto/420418', 'Gabinete Gamer Rise Mode Galaxy Glass Standard, Mid Tower, ARGB, ATX, Lateral e Frontal em Vidro, 10', 'gabinete', 'hardware', NULL, NULL),
(78, 'https://www.kabum.com.br/produto/518727', 'Gabinete Gamer KBM! GAMING GN110 Mid Tower, ATX, Lateral em Vidro, Preto - KGGN110PT', 'gabinete', 'hardware', NULL, NULL),
(79, 'https://www.kabum.com.br/produto/152765', 'Gabinete Gamer T-Dagger RGB, Mid Tower, Lateral em Acrílico, Preto - TGC-G28B', 'armazenamento', 'hardware', NULL, NULL),
(80, 'https://www.kabum.com.br/produto/516119', 'Gabinete Office Rise Mode X1 Black, Mini Tower, M-ATX, Preto - RM-GA-OFX1-FB', 'gabinete', 'hardware', NULL, NULL),
(81, 'https://www.kabum.com.br/produto/517696', 'Gabinete Gamer C3Tech Gaming Aquarius MT-G710BK, Mini Tower, Micro ATX, Lateral em Vidro Temperado, ', 'gabinete', 'hardware', NULL, NULL),
(82, 'https://www.kabum.com.br/produto/518737', 'Gabinete Gamer KBM! GAMING GN210 Mini Tower, M-ATX, Lateral e Frontal em Vidro, Branco - KGGN210BR', 'gabinete', 'hardware', NULL, NULL),
(83, 'https://www.kabum.com.br/produto/485727', 'Gabinete Gamer Rise Mode Galaxy Glass M Mini, M-ATX, Lateral e Frontal em Vidro Temperado, Branco - ', 'gabinete', 'hardware', NULL, NULL),
(84, 'https://www.kabum.com.br/produto/516120', 'Gabinete Office Rise Mode X1 White, Mini Tower, M-ATX, Branco - RM-GA-OFX1-FW', 'gabinete', 'hardware', NULL, NULL),
(85, 'https://www.kabum.com.br/produto/497863', 'Gabinete Gamer Segotep Lumi II, Mini Tower, M-ATX, Lateral e Frontal em Vidro Temperado, com 3 Fans,', 'gabinete', 'hardware', NULL, NULL),
(86, 'https://www.kabum.com.br/produto/517698', 'Gabinete Gamer C3Tech Gaming Aquarius', 'gabinete', 'hardware', NULL, NULL),
(87, 'https://www.kabum.com.br/produto/427922', 'Gabinete Asus Prime AP201 Mesh', 'gabinete', 'hardware', NULL, NULL),
(88, 'https://www.kabum.com.br/produto/203184', 'Fonte XPG Pylon, 450W, 80 Plus Bronze - PYLON450B-BKCBR', 'fonte', 'hardware', NULL, NULL),
(89, 'https://www.kabum.com.br/produto/281863', 'Fonte Gigabyte GP-P450B, 450W, 80 Plus Bronze - 28200-P450B-1BRR', 'fonte', 'hardware', NULL, NULL),
(90, 'Fonte Gigabyte GP-P450B, 450W, 80 Plus Bronze - 28200-P450B-1BRR', 'Fonte Cougar Gaming Polar X2 1050, 1050W, 80 Plus Platinum, Modular, Branco - 31PX105007P01', 'fonte', 'hardware', NULL, NULL),
(91, 'https://www.kabum.com.br/produto/534547', 'Fonte Galax TecLab Edition, TL 1050W, Platinum, ATX 3.1 - TL1050PRBKS8810BR', 'fonte', 'hardware', NULL, NULL),
(92, 'https://www.kabum.com.br/produto/534546', 'Fonte Galax TecLab Edition, TL 900W, Gold, ATX 3.1 - TL900PBKPS18810BR', 'fonte', 'hardware', NULL, NULL),
(93, 'https://www.kabum.com.br/produto/462815', 'Fonte MSI MAG A750GL, 750W, 80 Plus Gold, Modular, PFC Ativo, Com Cabo, Preto', 'fonte', 'hardware', NULL, NULL),
(94, 'https://www.kabum.com.br/produto/207929', 'Fonte BRX Rainbow RGB, 650W, 80 Plus, PFC Ativo, Bivolt - RGB-650W', 'fonte', 'hardware', NULL, NULL),
(95, 'https://www.kabum.com.br/produto/618356', 'Fonte Cougar Gaming Atlas 550, 550W, 80 Plus Bronze, Preto - 31AT055003P01', 'fonte', 'hardware', NULL, NULL),
(96, 'Fonte Cougar Gaming Atlas 550, 550W, 80 Plus Bronze, Preto - 31AT055003P01', 'Fonte Gamer Alimentação Para PC 550w Silencioso 80 Plus Pfc', 'fonte', 'hardware', NULL, NULL),
(97, 'Fonte Gamer Alimentação Para PC 550w Silencioso 80 Plus Pfc', 'Fonte Cougar Gaming Atlas 550, 550W, 80 Plus Bronze, Preto - 31AT055003P01', 'fonte', 'hardware', NULL, NULL),
(98, 'https://www.kabum.com.br/produto/461975', 'Fonte ATX Brazilpc Pro, FULL 800w Modular 80 Plus, Bronze,800w, Bivolt - EZ-8858C', 'fonte', 'hardware', NULL, NULL),
(99, 'https://www.kabum.com.br/produto/474946', 'Memória RAM XPG Spectrix D35G, RGB, 16GB, 3200MHz, DDR4, CL16, Preto - AX4U320016G16A-SBKD35G', 'ram', 'hardware', NULL, NULL),
(100, 'https://www.kabum.com.br/produto/477150', 'Memória RAM XPG Spectrix D35G, RGB, 16GB, 3200MHz, DDR4, CL16, Branco - AX4U320016G16A-SWHD35G', 'ram', 'hardware', NULL, NULL),
(101, 'Memória RAM XPG Spectrix D35G, RGB, 16GB, 3200MHz, DDR4, CL16, Branco - AX4U320016G16A-SWHD35G', 'Memória RAM Rise Mode Z, 8GB, 3200MHz, DDR4, CL19, Preto - RM-D4-8G-3200Z', 'ram', 'hardware', NULL, NULL),
(102, 'https://www.kabum.com.br/produto/383893', 'Memória RAM Rise Mode Z, 8GB, 3200MHz, DDR4, CL19, Branco - RM-D4-8G-3200ZW', 'armazenamento', 'hardware', NULL, NULL),
(103, 'https://www.kabum.com.br/produto/383895', 'Memória RAM Rise Mode Z, 16GB, 3200MHz, DDR4, CL19, Branco - RM-D4-16G-3200ZW', 'ram', 'hardware', NULL, NULL),
(104, 'https://www.kabum.com.br/produto/108317', 'Memória RAM Rise Mode Diamond 8GB, 3200MHz, DDR4, CL16, Branco - RM-D4-8G-3200D', 'ram', 'hardware', NULL, NULL),
(105, 'https://www.kabum.com.br/produto/513719', 'Memória RAM Gamer Rise Mode Aura, ARGB, 8GB, 3200MHz, DDR4, CL19, Branco - RM-D4AW-8G-3200ARGB', 'armazenamento', 'hardware', NULL, NULL),
(106, 'https://www.kabum.com.br/produto/526516', 'Memória RAM XPG Lancer, RGB, 32GB (2x16GB), 6000MHz, DDR5, CL30, Preto - AX5U6000C3016G-DCLARBK', 'ram', 'hardware', NULL, NULL),
(107, 'https://www.kabum.com.br/produto/286773', 'Memória RAM Corsair Vengeance, 32GB (2x16GB), 5200MHz, DDR5, CL40, para Intel XMP, Preto - CMK32GX5M', 'ram', 'hardware', NULL, NULL),
(108, 'https://www.kabum.com.br/produto/382771', 'Memória RAM Corsair Vengeance RGB, 32GB (2x16GB), 6200MHz, DDR5, CL36, Preto - CMH32GX5M2B6200C36', 'ram', 'hardware', NULL, NULL),
(109, 'https://www.kabum.com.br/produto/388093', 'Memória RAM Kingston Fury Beast RGB, 16GB (2x8GB), 6000MHz, DDR5, CL40, para Intel XMP, Preto - KF56', 'ram', 'hardware', NULL, NULL),
(110, 'https://www.kabum.com.br/produto/388095', 'Memória RAM Kingston Fury Beast, RGB, 32GB (2x16GB), 6000MHz, DDR5, CL40, Preto - KF560C40BBAK2-32', 'ram', 'hardware', NULL, NULL),
(111, 'Memória RAM Kingston Fury Beast, RGB, 32GB (2x16GB), 6000MHz, DDR5, CL40, Preto - KF560C40BBAK2-32', 'Memória RAM Kingston Fury Beast, RGB, 64GB (2x32GB), 6000MHz, DDR5, CL36, Branco - KF560C36BWEAK2-64', 'armazenamento', 'hardware', NULL, NULL),
(112, 'Memória RAM Kingston Fury Beast, RGB, 64GB (2x32GB), 6000MHz, DDR5, CL36, Branco - KF560C36BWEAK2-64', 'Monitor Gamer LG UltraGear 32\", 165Hz, QHD, 1ms, DisplayPort e HDMI, 95% sRGB, FreeSync Premium, HDR', 'monitor', 'hardware', NULL, NULL),
(113, 'https://www.kabum.com.br/produto/636041', 'Monitor Gamer LG 24\" Full HD, IPS, 100Hz, 5ms, HDMI, Preto - 24MS500-B', 'monitor', 'hardware', NULL, NULL),
(114, 'https://www.kabum.com.br/produto/631011', 'Monitor Gamer Acer Nitro KG273 G0bi 27\" LED IPS, Full HD, 120Hz, 1ms, HDMI e VGA, Adaptive-Sync - UM', 'armazenamento', 'hardware', NULL, NULL),
(115, 'https://www.kabum.com.br/produto/504128', 'Monitor Gamer Curvo Concórdia, 23.8\" Led Full HD, 100Hz, 5ms, HDMI, VGA, USB - Cz238f', 'monitor', 'hardware', NULL, NULL),
(116, 'https://www.kabum.com.br/produto/471914', 'Monitor Gamer Curvo KBM! GAMING MG320 27\", 180Hz, Full Hd, 1ms, DisplayPort e HDMI, Adaptive Sync, A', 'monitor', 'hardware', NULL, NULL),
(117, 'https://www.kabum.com.br/produto/515551', 'Monitor 3green 19.5\" LED, Widescreen, 2ms, 75hz, Hd+, HDMI, Vesa, Ajuste De Altura, Rotação, Inclina', 'monitor', 'hardware', NULL, NULL),
(118, 'https://www.kabum.com.br/produto/131238', 'Monitor Profissional Asus ProArt 27 4K UHD, Wide, IPS, HDMI e DisplayPort, 100% sRGB, ProArt Preset/', 'monitor', 'hardware', NULL, NULL),
(119, 'Monitor Profissional Asus ProArt 27 4K UHD, Wide, IPS, HDMI e DisplayPort, 100% sRGB, ProArt Preset/ProArt Palette - PA279CV', 'Monitor LG Ultrawide Curvo 34\" Wqhd, 100Hz, 5Ms, HDMI, AMD Freesync - 34wr50qc-b', 'monitor', 'hardware', NULL, NULL),
(120, 'https://www.kabum.com.br/produto/128228', 'Monitor Profissional Samsung 28\" 4K UHD, IPS, DisplayPort e HDMI, HDR 10, 98% DCI-P3, VESA, Preto - ', 'monitor', 'hardware', NULL, NULL),
(121, 'https://www.kabum.com.br/produto/584664', 'Monitor Gamer Curvo Ultra, 24\" LED HD, HDMI, VGA, 144Hz, Preto', 'monitor', 'hardware', NULL, NULL),
(122, 'https://www.kabum.com.br/produto/221456', 'Monitor Samsung Smart M5, 24\", Full HD, IPS, HDMI, USB, Bluetooth, Plataforma Tizen, AirPlay, Preto', 'monitor', 'hardware', NULL, NULL),
(123, 'https://www.kabum.com.br/produto/577866', 'Monitor LG Myview Smart 32\" Full HD, 60Hz, 8ms, IPS, Bluetooth, Branco - 32sr50f-W', 'monitor', 'hardware', NULL, NULL),
(124, 'https://www.kabum.com.br/produto/475878', 'Monitor Portátil Acer 15.6 Full HD, 60Hz, IPS, HDMI e USB, Som integrado, Preto - PM161Q', 'monitor', 'hardware', NULL, NULL),
(125, 'Monitor Portátil Acer 15.6 Full HD, 60Hz, IPS, HDMI e USB, Som integrado, Preto - PM161Q', 'Monitor Acer Portátil 15.6\" Ultrafino, LED Full HD, 60Hz, 4Ms, IPS - Pm161q Bbm', 'monitor', 'hardware', NULL, NULL),
(126, 'https://www.kabum.com.br/produto/623775', 'Monitor Portátil Acer PD163Q Smiuux 15.6\" LED IPS, mini HDMI e USB-C, com Tela Dupla, VESA - UM.ZP3A', 'monitor', 'hardware', NULL, NULL),
(127, 'https://www.kabum.com.br/produto/112948', 'Mouse Gamer Logitech G203 LIGHTSYNC RGB, Efeito de Ondas de Cores, 6 Botões Programáveis e Até 8.000', 'mouse', 'periferico', NULL, NULL),
(128, 'https://www.kabum.com.br/produto/112947', 'Mouse Gamer Logitech G203 LIGHTSYNC RGB, Efeito de Ondas de Cores, 6 Botões Programáveis e Até 8.000', 'mouse', 'periferico', NULL, NULL),
(129, 'Mouse Gamer Logitech G203 LIGHTSYNC RGB, Efeito de Ondas de Cores, 6 Botões Programáveis e Até 8.000 DPI, Branco - 910-005794', 'Mouse Gamer Razer Deathadder Essential, Com Fio, 6400 DPI, 5 Botões, Preto', 'mouse', 'periferico', NULL, NULL),
(130, 'https://www.kabum.com.br/produto/285914', 'Mouse Gamer Redragon King Cobra 2 Lunar White, RGB Chroma Mk2, 24000 DPI, Branco - M711W-FPS', 'mouse', 'periferico', NULL, NULL),
(131, 'Mouse Gamer Redragon King Cobra 2 Lunar White, RGB Chroma Mk2, 24000 DPI, Branco - M711W-FPS', 'Mouse Gamer Corsair Scimitar Elite, RGB, 17 Botões, 18000DPI, Preto - CH-9304211-NA', 'mouse', 'periferico', NULL, NULL),
(132, 'https://www.kabum.com.br/produto/498590', 'Mouse Gamer Rise Mode G2 Black RGB, 6400 DPI, 7 Botões, Preto - RM-MG-02-FB', 'mouse', 'periferico', NULL, NULL),
(133, 'Mouse Gamer Rise Mode G2 Black RGB, 6400 DPI, 7 Botões, Preto - RM-MG-02-FB', 'Mouse Gamer Machenike M7 Pro, Com fio, 12800 DPI, 6 botões, Branco - MAC-M7PW-WW', 'mouse', 'periferico', NULL, NULL),
(134, 'https://www.kabum.com.br/produto/515535', 'Mouse Gamer HyperX Pulsefire Haste 2, RGB, 26000 DPI, 6 Botões, Preto - 6N0A7AA', 'mouse', 'periferico', NULL, NULL),
(135, 'https://www.kabum.com.br/produto/519395', 'Mouse Gamer HyperX Pulsefire Haste 2, RGB, 26000DPI, 6 Botões, Wireless, Preto - 6N0B0AA', 'mouse', 'periferico', NULL, NULL),
(136, 'https://www.kabum.com.br/produto/519396', 'Mouse Gamer HyperX Pulsefire Haste 2, RGB, 26000DPI, 6 Botões, Wireless, Branco - 6N0A9AA', 'mouse', 'periferico', NULL, NULL),
(137, 'Mouse Gamer HyperX Pulsefire Haste 2, RGB, 26000DPI, 6 Botões, Wireless, Branco - 6N0A9AA', 'Mouse Gamer Sem Fio HyperX Haste, 16000 DPI, 6 Botões, Branco - 4P5D8AA', 'mouse', 'periferico', NULL, NULL),
(138, 'Mouse Gamer Sem Fio HyperX Haste, 16000 DPI, 6 Botões, Branco - 4P5D8AA', 'Mouse Gamer Sem Fio Redragon King Pro, 26000 DPI, 7 Botões, Wireless, Bluetooth, Branco - M916W-PRO-', 'mouse', 'periferico', NULL, NULL),
(139, 'https://www.kabum.com.br/produto/312917', 'Mouse Gamer Sem Fio Logitech G PRO X Superlight Lightspeed, 25.600 DPI, 5 Botões Programáveis, Senso', 'mouse', 'periferico', NULL, NULL),
(140, 'Mouse Gamer Sem Fio Logitech G PRO X Superlight Lightspeed, 25.600 DPI, 5 Botões Programáveis, Sensor HERO 25K, Magenta - 910-005955', 'Mouse Gamer Sem Fio Logitech G Pro X Superlight, 25600 DPI, 5 Botões, USB, Vermelho - 910-006783', 'mouse', 'periferico', NULL, NULL),
(141, 'https://www.kabum.com.br/produto/597058', 'Mouse Gamer Sem Fio Redragon Bullseye Pro, 26000 DPI, 7 Botões, Bluetooth, Preto - M806RGB-PRO', 'armazenamento', 'hardware', NULL, NULL),
(142, 'https://www.kabum.com.br/produto/269638', 'Mouse Gamer Sem Fio Logitech G305 Lightspeed, 12.000 DPI, 6 Botões Programáveis, Branco - 910-005290', 'mouse', 'periferico', NULL, NULL),
(143, 'https://www.kabum.com.br/produto/120486', 'Mouse Gamer Sem Fio Logitech G305 LIGHTSPEED com 6 Botões Programáveis e Até 12.000 DPI, Azul - 910-', 'mouse', 'periferico', NULL, NULL),
(144, 'https://www.kabum.com.br/produto/523248', 'Mouse Gamer Sem Fio Redragon Storm Pro, RGB, 16000 DPI, 8 Botões, Wireless, Preto - M808-KS', 'armazenamento', 'hardware', NULL, NULL),
(145, 'https://www.kabum.com.br/produto/149989', 'Mouse Sem Fio Gamer Logitech G PRO X Superlight, Lightspeed, 25000 DPI, 5 Botões, Preto - 910-005879', 'mouse', 'periferico', NULL, NULL),
(146, 'https://www.kabum.com.br/produto/475647', 'Placa de Vídeo RX 7600 GAMING OC 8G AMD Radeon Gigabyte, 8GB GDDR6, 128bits, RGB - GV-R76GAMING OC-8', 'video', 'hardware', NULL, NULL),
(147, 'https://www.kabum.com.br/produto/476798', 'Placa de Vídeo RX 570 Phantom Gaming Elite ASRock AMD Radeon, 8GB GDDR5, HDR, FreeSync - 90-GA2PZZ-0', 'video', 'hardware', NULL, NULL),
(148, 'https://www.kabum.com.br/produto/583156', 'Placa de Vídeo RX 6600 8G-V3 Dual ASUS AMD Radeon, 8GB GDDR6 - 90YV0GP3-M0NA00', 'video', 'hardware', NULL, NULL),
(149, 'https://www.kabum.com.br/produto/528811', 'Placa de Vídeo RX 6750XT Gaming XFX Graphics Card AMD Radeon, 12GB GDDR6, Ray tracing, Fidelity FX -', 'video', 'hardware', NULL, NULL),
(150, 'https://www.kabum.com.br/produto/576421', 'Placa de Vídeo RX 6650XT XFX Speedster SWFT210 AMD Radeon, 8GB GDDR6, HDMI 3xDP 2 FAN - RX-665X8DFDY', 'video', 'hardware', NULL, NULL),
(151, 'https://www.kabum.com.br/produto/619696', 'Placa de Vídeo RX 6500 XT ITX Pure Gaming OC Sapphire Pulse AMD Radeon, 8GB GDDR6, Ray Tracing, Free', 'video', 'hardware', NULL, NULL),
(152, 'https://www.kabum.com.br/produto/502904', 'Placa De Video Pcyes AMD Radeon R7 240, 4GB, GDDR5, 128 Bits, Single-fan, Gaming Edition - Pvr2404gb', 'video', 'hardware', NULL, NULL),
(153, 'https://www.kabum.com.br/produto/191118', 'Placa de Vídeo Afox RX 550 AMD Radeon 4GB, GDDR5, 128 Bits - AFRX550-4096D5H4-V5', 'video', 'hardware', NULL, NULL),
(154, 'https://www.kabum.com.br/produto/417239', 'Placa de Vídeo RX 7900 XTX Sapphire AMD, 24 GB GDDR6 - 11322-02-20G', 'video', 'hardware', NULL, NULL),
(155, 'https://www.kabum.com.br/produto/619406', 'Placa de Vídeo PCWINMAX RX 580 Gamer AMD Radeon 16GB, GDDR5, 256bits, LED, RGB, Branca', 'video', 'hardware', NULL, NULL),
(156, 'https://www.kabum.com.br/produto/550417', 'Placa de Vídeo RTX 4060 8G V2 Gaming ATS OC ASUS NVIDIA GeForce, 8GB GDDR6, DLSS, Ray Tracing, G-Syn', 'video', 'hardware', NULL, NULL),
(157, 'https://www.kabum.com.br/produto/461388', 'Placa de Vídeo RTX 4060 Ti OC Edition Asus TUF Gaming NVIDIA GeForce, 8 GB GDDR6, ARGB, DLSS - TUF-R', 'video', 'hardware', NULL, NULL),
(158, 'https://www.kabum.com.br/produto/587378', 'Placa de Vídeo RTX 3050 Windforce OC Gigabyte NVIDIA GeForce, 6GB GDDR6, DLSS, Ray Tracing - GV-N305', 'video', 'hardware', NULL, NULL),
(159, 'https://www.kabum.com.br/produto/564938', 'Placa de Vídeo RTX 4070 Super 1-Click OC 2X TecLab Lite Galax NVIDIA GeForce - 47SOM7MDABCD', 'video', 'hardware', NULL, NULL),
(160, 'https://www.kabum.com.br/produto/115753', 'Placa de Vídeo Galax NVIDIA GeForce GTX 1650 EX Plus (1-Click OC), 4GB, GDDR6 - 65SQL8DS93E1', 'video', 'hardware', NULL, NULL),
(161, 'https://www.kabum.com.br/produto/520528', 'Placa de Vídeo RTX 4080 Super MSI 16G Ventus 3X OC NVIDIA GeForce, 16GB GDDR6X, DLSS, Ray Tracing', 'armazenamento', 'hardware', NULL, NULL),
(162, 'https://www.kabum.com.br/produto/537366', 'Placa de Vídeo G210 PCYes Projeto Edge Low Profile NVIDIA GeForce, 1GB DDR3 - PPE210DR3SFBR', 'video', 'hardware', NULL, NULL),
(163, 'https://www.kabum.com.br/produto/117261', 'Placa de Vídeo GT 710 Passive Galax NVIDIA GeForce, 2GB, DDR3 - 71GPF4HI00GX', 'video', 'hardware', NULL, NULL),
(164, 'https://www.kabum.com.br/produto/576798', 'Placa de Vídeo RTX 4070 TI Super EX Gamer TecLab Lite Click OC Galax NVIDIA GeForce, 16GB GDDR6X, DL', 'video', 'hardware', NULL, NULL),
(165, 'https://www.kabum.com.br/produto/534706', 'Placa de Video RTX 3050 Stormix Palit NVIDIA GeForce, 6GB GDDR6, DLSS, Ray Tracing, Adaptive Sync - ', 'video', 'hardware', NULL, NULL),
(166, 'https://www.kabum.com.br/produto/114335', 'Placa-Mãe MSI MPG B550 Gaming Plus, AMD AM4, ATX', 'mae', 'hardware', NULL, NULL),
(167, 'https://www.kabum.com.br/produto/114781', 'Placa Mãe Gigabyte B550M Aorus Elite (rev. 1.3), AMD AM4, Micro ATX, DDR4 - B550M AORUS ELITE', 'mae', 'hardware', NULL, NULL),
(168, 'https://www.kabum.com.br/produto/100672', 'Placa Mãe ASRock B450M Steel Legend, AMD AM4, mATX, DDR4', 'mae', 'hardware', NULL, NULL),
(169, 'https://www.kabum.com.br/produto/165133', 'Placa Mãe Asus TUF GAMING A520M-PLUS II, AMD AM4, mATX, DDR4', 'mae', 'hardware', NULL, NULL),
(170, 'https://www.kabum.com.br/produto/115216', 'Placa Mãe Asus TUF Gaming B550M-Plus, AMD AM4, mATX, DDR4', 'mae', 'hardware', NULL, NULL),
(171, 'https://www.kabum.com.br/produto/129653', 'Placa Mãe Asus Prime A520M-E, AMD AM4, mATX, DDR4', 'mae', 'hardware', NULL, NULL),
(172, 'https://www.kabum.com.br/produto/264899', 'Placa Mãe Asus ROG Strix B550-F Gaming II, AMD AM4, ATX, DDR4, Wi-Fi, Aura Sync RGB', 'mae', 'hardware', NULL, NULL),
(173, 'https://www.kabum.com.br/produto/129760', 'Placa Mãe Aorus B550 Elite V2, AMD B550, ATX, DDR4, (rev. 1.0)', 'mae', 'hardware', NULL, NULL),
(174, 'https://www.kabum.com.br/produto/114850', 'Placa Mãe ASRock B550M Steel Legend, AMD AM4, Micro ATX, DDR4', 'mae', 'hardware', NULL, NULL),
(175, 'https://www.kabum.com.br/produto/199618', 'Placa-Mãe Gigabyte A520m S2h, AMD AM4, M-ATX, DDR4', 'armazenamento', 'hardware', NULL, NULL),
(176, 'https://www.kabum.com.br/produto/315273', 'Placa Mãe Gigabyte H610M (rev. 1.0), Intel LGA1700, H610, DDR4, mATX - H610M H DDR4', 'mae', 'hardware', NULL, NULL),
(177, 'https://www.kabum.com.br/produto/321070', 'Placa Mãe Asus Prime H610M-E D4, Intel LGA 1700, mATX, DDR4', 'mae', 'hardware', NULL, NULL),
(178, 'https://www.kabum.com.br/produto/542241', 'Placa Mãe MSI PRO B760M-A, Intel, M-ATX, DDR5, Wi-Fi - PRO B760M-A WIFI', 'mae', 'hardware', NULL, NULL),
(179, 'https://www.kabum.com.br/produto/525601', 'Placa Mãe Gigabyte B760M Gaming WIFI (rev.1.4), Intel LGA 1700 MATX, DDR5, WiFi - B760M GAMING WIFI', 'mae', 'hardware', NULL, NULL),
(180, 'https://www.kabum.com.br/produto/524349', 'Placa Mãe MSI Pro B760M-E, Intel LGA 1700, M-ATX, DD4 - PRO B760M-E DDR4', 'mae', 'hardware', NULL, NULL),
(181, 'https://www.kabum.com.br/produto/404821', 'Placa Mãe Asus ROG STRIX B760-F Gaming Wi-Fi, Intel LGA 1700, ATX, DDR5, Wi-Fi - 90MB1CT0-M0EAY0', 'armazenamento', 'hardware', NULL, NULL),
(182, 'https://www.kabum.com.br/produto/392598', 'Placa Mãe Z790-P MSI PRO Wi-Fi, Intel LGA 1700, ATX, DDR5 - PRO Z790-P WIFI', 'armazenamento', 'hardware', NULL, NULL),
(183, 'https://www.kabum.com.br/produto/609661', 'Placa Mãe Gigabyte B760M D2H (rev.1.0), Intel LGA1700, Micro ATX, DDR4 - B760M D2H', 'mae', 'hardware', NULL, NULL),
(184, 'https://www.kabum.com.br/produto/548936', 'Placa Mãe ASUS TUF Gaming B760M-E D4, Intel, M-ATX, DDR4 - 90MB1E90-M0EAY0', 'armazenamento', 'hardware', NULL, NULL),
(185, 'https://www.kabum.com.br/produto/524345', 'Placa Mãe MSI B650M Gaming Plus, AMD AM5, M-ATX, DDR5, Wi-Fi - B650M GAMING PLUS WIFI', 'mae', 'hardware', NULL, NULL),
(186, 'https://www.kabum.com.br/produto/376221', 'Placa Mãe Asus TUF Gaming X670E-Plus Wi-Fi, AMD X670, AM5, DDR5 - 90MB1BK0-M0EAY0', 'mae', 'hardware', NULL, NULL),
(187, 'https://www.kabum.com.br/produto/181065', 'Processador Intel Core i3-10105, 3.7GHz (4.4GHz Max Turbo), Cache 6MB, Quad Core, 8 Threads, LGA 120', 'processador', 'hardware', NULL, NULL),
(188, 'https://www.kabum.com.br/produto/283719', 'Processador Intel Core i3-12100F, 3.3GHz (4.3GHz Max Turbo), Cache 12MB, LGA 1700 - BX8071512100F', 'processador', 'hardware', NULL, NULL),
(189, 'https://www.kabum.com.br/produto/129960', 'Processador Intel Core i3-10100F, 3.6GHz (4.3GHz Max Boost), Cache 6MB, Quad Core, 8 Threads, LGA 12', 'processador', 'hardware', NULL, NULL),
(190, 'https://www.kabum.com.br/produto/405768', 'Processador Intel Core i3-13100F, 4.5GHz Max Turbo, Cache 12MB, 4 Núcleos, 8 Threads, LGA 1700 - BX8', 'processador', 'hardware', NULL, NULL),
(191, 'https://www.kabum.com.br/produto/148917', 'Processador Intel Core i5-11400F, 2.6 GHz (4.4GHz Turbo), Cache 12MB, 6 Núcleos, 12 Threads, LGA1200', 'armazenamento', 'hardware', NULL, NULL),
(192, 'https://www.kabum.com.br/produto/241047', 'Processador Intel Core i5-12600KF, 3.7GHz (4.9Ghz Max Turbo), Cache 20MB, Quad Core, 16 Threads, LGA', 'processador', 'hardware', NULL, NULL),
(193, 'https://www.kabum.com.br/produto/531209', 'Processador Intel Core I5 14400f 14ª Geração, 3.5 Ghz (4.7 Ghz Turbo), Cache 20mb, 10 Núcleos, 16 Th', 'processador', 'hardware', NULL, NULL),
(194, 'https://www.kabum.com.br/produto/497575', 'Processador Intel Core i7-14700K, 14ª Geração, 5.6 GHz Max Turbo, Cache 33MB, 20 Núcleos, 28 Threads', 'processador', 'hardware', NULL, NULL),
(195, 'https://www.kabum.com.br/produto/148913', 'Processador Intel Core i7-11700KF 11ª Geração, 3.6 GHz (4.9GHz Turbo), Cache 16MB, Octa Core, 16 Thr', 'armazenamento', 'hardware', NULL, NULL),
(196, 'https://www.kabum.com.br/produto/241048', 'Processador Intel Core i7-12700K, 3.6GHz (5.0GHz Max Turbo), 12 Núcleos, 20 Threads, LGA 1700, Vídeo', 'processador', 'hardware', NULL, NULL),
(197, 'https://www.kabum.com.br/produto/497574', 'Processador Intel Core i9-14900KF, 14ª Geração, 6GHz Max Turbo, Cache 36MB, 24 Núcleos, 32 Threads, ', 'processador', 'hardware', NULL, NULL),
(198, 'https://www.kabum.com.br/produto/497573', 'Processador Intel Core i9-14900K, 14ª Geração, 6GHz Max Turbo, Cache 36MB, 24 Núcleos, 32 Threads, L', 'processador', 'hardware', NULL, NULL),
(199, 'https://www.kabum.com.br/produto/241051', 'Processador Intel Core i9-12900KF, 3.2GHz (5.2GHz Max Turbo), Cache 30MB, 16 Núcleos, 24 Threads, LG', 'processador', 'hardware', NULL, NULL),
(200, 'https://www.kabum.com.br/produto/148901', 'Processador Intel Core i9-11900K 11ª Geração, 3.5 GHz (5.1GHz Turbo), Cache 16MB, Octa Core, LGA1200', 'processador', 'hardware', NULL, NULL),
(201, 'https://www.kabum.com.br/produto/102248', 'Processador AMD Ryzen 3 3200G, 3.6GHz (4GHz Max Turbo), Cache 4MB, Quad Core, 4 Threads, AM4 - YD320', 'processador', 'hardware', NULL, NULL),
(202, 'https://www.kabum.com.br/produto/629987', 'Processador AMD Ryzen 3 5300G, 4GHz (4.2GHz Max Turbo), Cachê 8MB, AM4, 4 Núcleos, 8 Threads, Vídeo ', 'processador', 'hardware', NULL, NULL),
(203, 'https://www.kabum.com.br/produto/357485', 'Processador AMD Ryzen 3 4100, 4.0GHz, Cache 6MB, AM4, Wraith Stealth, Sem Ví­deo Integrado - 100-100', 'processador', 'hardware', NULL, NULL),
(204, 'https://www.kabum.com.br/produto/356695', 'Processador AMD Ryzen 5 5500, 3.6GHz, Cache 16MB, Hexa Core, 12 Threads, AM4 - 100-100000457BOX', 'processador', 'hardware', NULL, NULL),
(205, 'https://www.kabum.com.br/produto/333145', 'Processador AMD Ryzen 5 4600G, 3.7GHz (4.2GHz Max Turbo), Cache 11MB, AM4, Vídeo Integrado - 100-100', 'processador', 'hardware', NULL, NULL),
(206, 'https://www.kabum.com.br/produto/129451', 'Processador AMD Ryzen 5 5600X, 3.7GHz (4.6GHz Max Turbo), Cache 35MB, 6 Núcleos, 12 Threads, AM4 - 1', 'processador', 'hardware', NULL, NULL),
(207, 'https://www.kabum.com.br/produto/523518', 'Processador AMD Ryzen 5 5600GT, 4.6GHz, Cache 19MB, AM4, 6 núcleos, 12 threads, Placa de Vídeo, Com ', 'processador', 'hardware', NULL, NULL),
(208, 'https://www.kabum.com.br/produto/390987', 'Processador AMD Ryzen 5 7600X, 5.3GHz, Cache 38MB, AM5, Radeon Graphics - 100-100000593WOF', 'processador', 'hardware', NULL, NULL),
(209, 'https://www.kabum.com.br/produto/348101', 'Processador AMD Ryzen 5 4500, 3.6GHz, Cache 8MB, Hexa Core, 12 Threads', 'processador', 'hardware', NULL, NULL),
(210, 'https://www.kabum.com.br/produto/520369', 'Processador AMD Ryzen 7 5700X3D, 3.6 GHz, (4.1GHz Max Turbo), Cachê 4MB, 8 Núcleos, 16 Threads, AM4 ', 'processador', 'hardware', NULL, NULL),
(211, 'https://www.kabum.com.br/produto/181089', 'Processador AMD Ryzen 7 5700G, 3.8GHz (4.6GHz Max Turbo), Cache 20MB, 8 Núcleos, 16 Threads, Vídeo I', 'processador', 'hardware', NULL, NULL),
(212, 'https://www.kabum.com.br/produto/426262', 'Processador AMD Ryzen 7 7800X3D, 5.0GHz Max Turbo, Cache 104MB, AM5, 8 Núcleos, Vídeo Integrado - 10', 'processador', 'hardware', NULL, NULL),
(213, 'https://www.kabum.com.br/produto/520364', 'Processador AMD Ryzen 7 8700G, 4.2GHz (5.1GHz Max Turbo), Cachê 8MB, Octa-Core, 16 Threads, AM5, Víd', 'processador', 'hardware', NULL, NULL),
(214, 'https://www.kabum.com.br/produto/531158', 'Teclado Mecânico Gamer Machenike K500B-B87, Switch Brown, ABNT, Azul - K500B-B87BBR', 'teclado', 'periferico', NULL, NULL),
(215, 'https://www.kabum.com.br/produto/506051', 'Teclado Mecânico Gamer Rise Mode GM1 White, RGB, Switch Outemu Brown - RM-TCM-GM1-WBRO', 'teclado', 'periferico', NULL, NULL),
(216, 'https://www.kabum.com.br/produto/372530', 'Teclado Mecânico Gamer Redragon Lakshmi, Rainbow RED, Switch, ABNT2, Preto - K606R (PT-RED)', 'teclado', 'periferico', NULL, NULL),
(217, 'https://www.kabum.com.br/produto/93159', 'Teclado Mecânico Gamer Redragon Kumara, Anti-Ghosting, RGB, Switch Outemu Red, ABNT2, Preto, PT - K5', 'teclado', 'periferico', NULL, NULL),
(218, 'https://www.kabum.com.br/produto/416203', 'Teclado Gamer Semi Mecânico Rise Mode G1 Full, USB, Branco - RM-TG-01-FW', 'teclado', 'periferico', NULL, NULL),
(219, 'https://www.kabum.com.br/produto/285912', 'Teclado Mecânico Gamer Redragon Lakshmi Lunar White, Rainbow, Switch Blue, Layout 60%, ABNT2, Branco', 'teclado', 'periferico', NULL, NULL),
(220, 'https://www.kabum.com.br/produto/416202', 'Teclado Gamer Semi Mecânico Rise Mode G1 Full, USB, Preto - RM-TG-01-FB', 'teclado', 'periferico', NULL, NULL),
(221, 'https://www.kabum.com.br/produto/372529', 'Teclado Mecânico Gamer Redragon Lakshmi, Rainbow Brown, Switch, ABNT2, Preto - K606R (PT-BROWN)', 'teclado', 'periferico', NULL, NULL),
(222, 'https://www.kabum.com.br/produto/105009', 'Teclado Mecânico Gamer HyperX Alloy Origins Core, RGB, Switch HyperX Red, ABNT2 - 4P5P3A2#AC4', 'teclado', 'periferico', NULL, NULL),
(223, 'https://www.kabum.com.br/produto/585203', 'Teclado Sem Fio Mecânico Gamer Logitech G PRO X 60 Lightspeed, RGB, Bluetooth, Compatível com Window', 'armazenamento', 'hardware', NULL, NULL),
(224, 'https://www.kabum.com.br/produto/582795', 'Teclado Mecanico Redragon K622, Gamer Horus Tkl, RGB Switch Brown, Preto', 'teclado', 'periferico', NULL, NULL),
(225, 'https://www.kabum.com.br/produto/585201', 'Teclado Sem Fio Mecânico Gamer Logitech G PRO X 60 Lightspeed, RGB, Bluetooth, Compatível com Window', 'teclado', 'periferico', NULL, NULL),
(226, 'https://www.kabum.com.br/produto/388064', 'Teclado Mecânico Gamer Sem Fio Logitech G715, Coleção Aurora, LIGHTSPEED Switch GX Red Linear, RGB, ', 'teclado', 'periferico', NULL, NULL),
(227, 'https://www.kabum.com.br/produto/204056', 'Teclado Mecânico Gamer Sem Fio, Logitech G915 Tkl, RGB Lightsync, USB Ou Bluetooth, Switch Gl Tactil', 'teclado', 'periferico', NULL, NULL),
(228, 'https://www.kabum.com.br/produto/505129', 'Teclado Sem Fio Mecânico Gamer Akko, RGB, Bluetooth, Switch Demon, N-keys, ANSI - 6925758617185', 'teclado', 'periferico', NULL, NULL),
(229, 'https://www.kabum.com.br/produto/204055', 'Teclado Sem Fio Mecânico Gamer Logitech G915 TKL, RGB, Switch GL Tactile, Layout Us, Branco - 920-00', 'teclado', 'periferico', NULL, NULL),
(230, 'https://www.kabum.com.br/produto/477920', 'Teclado Mecânico Sem Fio Gamer Corsair K70 PRO MINI, RGB, Wireless, CHERRY MX SPEED, 100% anti-ghost', 'teclado', 'periferico', NULL, NULL),
(231, 'https://www.kabum.com.br/produto/505179', 'Teclado Mecânico Gamer Akko, RGB, Switch Princess Linear, Keycaps JDA, 5108S, Hello Kitty - 69257586', 'teclado', 'periferico', NULL, NULL),
(232, 'https://www.kabum.com.br/produto/477921', 'Teclado Mecânico Sem Fio Gamer Corsair K70 PRO, Mini Wireless, CHERRY MX Speed Switch, 100% anti-gho', 'teclado', 'periferico', NULL, NULL),
(233, 'https://www.kabum.com.br/produto/153649', 'Air Cooler Rise Mode Winter Black, ARGB, AMD/Intel, 120mm, Preto - RM-ACW-01-ARGB', 'ventoinha', 'hardware', NULL, NULL),
(234, 'https://www.kabum.com.br/produto/512071', 'Air Cooler Rise Mode G800, ARGB, AMD/Intel, 90mm, Branco - RM-ACG8-ARGB-W', 'ventoinha', 'hardware', NULL, NULL),
(235, 'https://www.kabum.com.br/produto/506059', 'Air Cooler Gamer Rise Mode Storm 8 White, AMD/Intel, 120mm, Branco - RM-ACST-W', 'ventoinha', 'hardware', NULL, NULL),
(236, 'https://www.kabum.com.br/produto/250685', 'Air Cooler Gamer Rise Mode X3, RGB, Intel, 120mm, Preto - RM-ACX-03-RGB', 'ventoinha', 'hardware', NULL, NULL),
(237, 'https://www.kabum.com.br/produto/114639', 'Air Cooler Rise Mode Z3, AMD/Intel, 90mm, Preto - RM-ACZ-03-FB', 'ventoinha', 'hardware', NULL, NULL),
(238, 'https://www.kabum.com.br/produto/111115', 'Air Cooler Cooler Master Hyper H410R, RGB, 90mm, Preto - RR-H410-20PC-R1', 'ventoinha', 'hardware', NULL, NULL),
(239, 'https://www.kabum.com.br/produto/250691', 'Air Cooler Gamer Rise Mode X5, LED Azul, AMD/Intel, 120mm, Preto - RM-ACX-05-BB', 'ventoinha', 'hardware', NULL, NULL),
(240, 'https://www.kabum.com.br/produto/104831', 'Air Cooler Cooler Master MasterAir MA620P, RGB, AMD/Intel, 120mm, Preto - MAP-D6PN-218PC-R1', 'ventoinha', 'hardware', NULL, NULL),
(241, 'https://www.kabum.com.br/produto/250683', 'Air Cooler Gamer Rise Mode X1, Led Azul, Intel, 90mm, Preto - RM-ACX-01-BB', 'ventoinha', 'hardware', NULL, NULL),
(242, 'https://www.kabum.com.br/produto/483232', 'Water Cooler Galax Hydro Vortex, ARGB, 120mm, AMD/Intel, Branco - AGV12AN4AW0', 'ventoinha', 'hardware', NULL, NULL),
(243, 'https://www.kabum.com.br/produto/114640', 'Water Cooler Rise Mode Frost, RGB, 120mm, AMD/Intel, Branco - RM WCZ 01 RGB', 'ventoinha', 'hardware', NULL, NULL),
(244, 'https://www.kabum.com.br/produto/164419', 'Water Cooler Gigabyte Aorus Liquid Cooler 360, RGB, 360mm (3x 120mm), AMD/Intel, Preto - GP-AORUS WA', 'ventoinha', 'hardware', NULL, NULL),
(245, 'https://www.kabum.com.br/produto/129927', 'Water Cooler Cooler Master Masterliquid ML120L V2, 120mm, AMD/Intel, Preto - MLW-D12M-A18PK-R2', 'ventoinha', 'hardware', NULL, NULL),
(246, 'https://www.kabum.com.br/produto/495956', 'Water Cooler Rise Mode ARGB, 120mm, AMD/Intel, Preto - RM-WCB-05-ARGB', 'ventoinha', 'hardware', NULL, NULL),
(247, 'https://www.kabum.com.br/produto/547080', 'Water Cooler Ryvel Hidra, ARGB, 360mm, AMD/Intel, Branco - RY-WC-HDR-WT', 'ventoinha', 'hardware', NULL, NULL),
(248, 'https://www.kabum.com.br/produto/495958', 'Water Cooler Rise Mode Aura Ice Black, ARGB, 120mm, AMD/Intel, Preto - RM-WAIB-04-ARGB', 'ventoinha', 'hardware', NULL, NULL),
(249, 'https://www.kabum.com.br/produto/501348', 'Water Cooler Segotep Frozen, ARGB, 240mm, AMD/Intel, Branco - SEG-WC-FR240B-WW', 'ventoinha', 'hardware', NULL, NULL),
(250, 'https://www.kabum.com.br/produto/391527', 'Water Cooler DeepCool LE500, RGB, 240mm, Intel e AMD - R-LE500-BKLNMC-G-1', 'ventoinha', 'hardware', NULL, NULL),
(251, 'https://www.kabum.com.br/produto/415796', 'Water Cooler NZXT Kraken 360, 360mm, AMD/Intel, Preto - RL-KN360-B1', 'ventoinha', 'hardware', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
