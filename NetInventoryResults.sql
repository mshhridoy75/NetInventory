-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 17 oct. 2024 à 09:34
-- Version du serveur : 10.6.3-MariaDB-1:10.6.3+maria~buster
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `AMSConfig`
--

-- --------------------------------------------------------

--
-- Structure de la table `NetInventoryResults`
--

CREATE TABLE `NetInventoryResults` (
  `id` int(11) NOT NULL,
  `device_hostname` varchar(250) NOT NULL,
  `manufacturer` varchar(100) NOT NULL,
  `hardware` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `firmware` varchar(250) NOT NULL,
  `image` varchar(255) NOT NULL,
  `flash_memory` varchar(50) NOT NULL,
  `RAM_memory` varchar(50) NOT NULL,
  `inventory_date` date NOT NULL,
  `AMS_hostname` varchar(250) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `client` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `NetInventoryResults`
--

INSERT INTO `NetInventoryResults` (`id`, `device_hostname`, `manufacturer`, `hardware`, `serial_number`, `firmware`, `image`, `flash_memory`, `RAM_memory`, `inventory_date`, `AMS_hostname`, `ip_address`, `client`) VALUES
(3133144, 'TCT00-C6509-20-128-1', 'CISCO', 'WS-C6K-VTT-E', 'SMT1202B132', '--', '--', '--', '--', '2019-08-28', 'APHM-TCT00-20-128-1', '10.20.128.3', 'UNTEST_MARSEILLE'),
(3156676, 'SCE-PONTHE-2.test.com', 'CISCO', '10/100/1000BaseT (RJ45) with 48 10/100/1000 baseT ports', 'JAE10191XCV', '--', '--', '--', '--', '2019-09-04', 'SCE-PONTHE-2', '10.10.0.247', 'test'),
(3156675, 'SCE-PONTHE-2.test.com', 'CISCO', '1000BaseX (GBIC) with 6 1000 GBIC ports', 'JAE08522WBC', '--', '--', '--', '--', '2019-09-04', 'SCE-PONTHE-2', '10.10.0.247', 'test'),
(3133141, 'TCT00-C6509-20-128-1', 'CISCO', 'WS-C6509-E-FAN', 'DCH11490567', '--', '--', '--', '--', '2019-08-28', 'APHM-TCT00-20-128-1', '10.20.128.3', 'UNTEST_MARSEILLE'),
(3156674, 'SCE-PONTHE-2.test.com', 'CISCO', 'Supervisor V-10GE with 2 10GE X2 ports, and 4 1000BaseX SFP ports', 'JAE1046FA0Y', '--', '--', '--', '--', '2019-09-04', 'SCE-PONTHE-2', '10.10.0.247', 'test'),
(3133140, 'TCT00-C6509-20-128-1', 'CISCO', 'WS-C6509-E', 'SMG1213N1A8', '12.2(18)SXF15a', 'sup-bootdisk:s72033-ipservicesk9-mz.122-18.SXF15a.bin', '128Mb', '512Mb', '2019-08-28', 'APHM-TCT00-20-128-1', '10.20.128.3', 'UNTEST_MARSEILLE'),
(3156673, 'SCE-PONTHE-2.test.com', 'CISCO', 'Supervisor V-10GE with 2 10GE X2 ports, and 4 1000BaseX SFP ports', 'JAE11108QSF', '--', '--', '--', '--', '2019-09-04', 'SCE-PONTHE-2', '10.10.0.247', 'test'),
(3133139, 'CST00-C6509-67-128-3', 'CISCO', 'WS-F6700-CFC', 'SAL08506YQ0', '--', '--', '--', '--', '2019-08-28', 'APHM-CST00-67-128-3', '10.67.128.3', 'UNTEST_MARSEILLE'),
(3133138, 'CST00-C6509-67-128-3', 'CISCO', 'WS-X6748-GE-TX', 'SAL08486L6B', '--', '--', '--', '--', '2019-08-28', 'APHM-CST00-67-128-3', '10.67.128.3', 'UNTEST_MARSEILLE'),
(3156672, 'SCE-PONTHE-2.test.com', 'CISCO', 'WS-C4510R', 'FOX093300G4', '12.2(25)EWA4', 'bootflash:cat4000-i5k91s-mz.122-25.EWA4.bin', '64Mb', '512Mb', '2019-09-04', 'SCE-PONTHE-2', '10.10.0.247', 'test'),
(3133137, 'CST00-C6509-67-128-3', 'CISCO', 'WS-F6K-PFC3B', 'SAL14512VWZ', '--', '--', '--', '--', '2019-08-28', 'APHM-CST00-67-128-3', '10.67.128.3', 'UNTEST_MARSEILLE'),
(3156671, 'RGA-LGR.test.com', 'CISCO', 'ASR-903', 'FOX2131PLT5', '16.5.1', 'bootflash:Image/packages.conf', '1Gb', '1Gb', '2019-09-04', 'RGA-LGR', '10.254.252.27', 'Cofiroute'),
(3156670, 'FBU-FONTEN', 'LINUX', 'Unknown Hardware', 'Kernel : 2.6.18-92cp', 'Unknown Version', '--', 'N/A', '10Gb', '2019-09-04', 'FBU-FONTEN', '192.168.109.1', 'Cofiroute'),
(3133136, 'CST00-C6509-67-128-3', 'CISCO', 'WS-SUP720', 'SAL14512S1C', '--', '--', '--', '--', '2019-08-28', 'APHM-CST00-67-128-3', '10.67.128.3', 'UNIHA_MARSEILLE'),
(3133135, 'CST00-C6509-67-128-3', 'CISCO', 'WS-SUP720-3B', 'SAL145131E7', '--', '--', '--', '--', '2019-08-28', 'APHM-CST00-67-128-3', '10.67.128.3', 'UNIHA_MARSEILLE'),
(3156669, 'SGA-JEC.test.com', 'CISCO', '1000BaseSX SFP', 'AGS0907584S ', '--', '--', '--', '--', '2019-09-04', 'SGA-JEC', '10.10.119.251', 'Cofiroute'),
(3133134, 'CST00-C6509-67-128-3', 'CISCO', 'WS-SVC-WISM-1-K9-DC', 'SAD102402WK', '--', '--', '--', '--', '2019-08-28', 'APHM-CST00-67-128-3', '10.67.128.3', 'UNIHA_MARSEILLE'),
(3155546, 'SNMP FAILED', '--', '--', '--', '--', '--', '--', '--', '2019-09-04', 'DC-UCAAS-UCS-3', '10.252.104.22', 'Vinci_UCAAS'),
(3155545, 'FR2331A-SW-01', 'ALCATEL', '48 POE 10/100/1000 + 2 10G + 2 1/10G STK/UPLINK', 'V3480417', '--', '--', '--', '--', '2019-09-04', '815-LAN-SW1', '10.203.242.11', 'UCASS'),
(3155544, 'FR2331A-SW-01', 'ALCATEL', '6450 2 PORT SFP+ MOD 10G', 'V3280691', '--', '--', '--', '--', '2019-09-04', '815-LAN-SW1', '10.203.242.11', 'UCASS'),
(3155543, 'FR2331A-SW-01', 'ALCATEL', '6450 2 PORT SFP+ MOD 10G', 'V3281003', '--', '--', '--', '--', '2019-09-04', '815-LAN-SW1', '10.203.242.11', 'UCASS'),
(3155542, 'FR2331A-SW-01', 'ALCATEL', 'OS 900W AC Power Supply', 'internal', '--', '--', '--', '--', '2019-09-04', '815-LAN-SW1', '10.203.242.11', 'UCASS'),
(3155541, 'FR2331A-SW-01', 'ALCATEL', 'OS 900W AC Power Supply', 'internal', '--', '--', '--', '--', '2019-09-04', '815-LAN-SW1', '10.203.242.11', 'UCASS'),
(3155540, 'FR2331A-SW-01', 'ALCATEL', 'CMM', 'V3480417', '--', '--', '--', '--', '2019-09-04', '815-LAN-SW1', '10.203.242.11', 'Vinci_UCAAS'),
(3155539, 'FR2331A-SW-01', 'ALCATEL', '48 POE 10/100/1000 + 2 10G + 2 1/10G STK/UPLINK', 'V3480417', '--', '--', '--', '--', '2019-09-04', '815-LAN-SW1', '10.203.242.11', 'UCASS'),
(3155538, 'FR2331A-SW-01', 'ALCATEL', 'OS6450-P48', 'V3480324', '6.7.2.49.R01', '--', 'N/A', '192Mb', '2019-09-04', '815-LAN-SW1', '10.203.242.11', 'Vinci_UCAAS'),
(3155537, 'ucs-4', 'CISCO', 'UCSC-C220-M4S', 'N/A', ' Cisco Systems', ' Firmware Version 4.0(1a) Copyright (c) 2008-2018', 'N/A', 'N/A', '2019-09-04', 'DC-UCAAS-UCS-5', '10.252.104.24', 'UCASS'),
(3155536, 'UCAAS-812-FR2318A-SW1', 'HP PROCURVE', 'HP J9772A 2530-48G-PoEP Switch', 'CN5BFP32PD ', ' revision YA.16.06.0011', '--', 'N/A', '128Mb', '2019-09-04', '812-LAN-SW1', '10.166.210.250', 'UCASS'),
(3133529, 'SW_Stack_RG1', 'HPE', 'HP A5500-48G-PoE+ EI Switch with 2 Interface Slots', 'CN30F620D4', ' Software Version 5.20.99 Release 2220P02\r', '--', 'N/A', '0', '2019-08-28', 'SW1_STACK_RG1', '10.0.19.254', 'VFEnergilec'),
(3155535, 'UCAAS-MGW-807.vinci-energies.net', 'CISCO', 'CISCO2901/K9', 'FCZ193360F7', '15.7(3)M4b', 'flash:/c2900-universalk9-mz.SPA.157-3.M4b.bin', '256Mb', '512Mb', '2019-09-04', '807-UCAAS-MGW', '10.20.54.252', 'Vinci_UCAAS'),
(3155534, 'UCAAS-818-FR2533A-SW4', 'HP PROCURVE', 'HP J9773A 2530-24G-PoEP Switch', 'CN89FP41S1 ', ' revision YA.16.06.0011', '--', 'N/A', '128Mb', '2019-09-04', '818-LAN-SW4', '10.153.160.14', 'Vinci_UCAAS'),
(3155533, 'UCAAS-819-FR2533A-SW3', 'HP PROCURVE', 'HP J9773A 2530-24G-PoEP Switch', 'CN82FP402J ', ' revision YA.16.06.0011', '--', 'N/A', '128Mb', '2019-09-04', '819-LAN-SW3', '10.153.160.22', 'Vinci_UCAAS'),
(3155532, 'UCAAS-805-FR1251B-SW1', 'HP PROCURVE', 'HP J9627A 2620-48-PoEP Switch', 'CN46DRW0KK ', ' revision RA.16.04.0016', '--', 'N/A', '192Mb', '2019-09-04', '805-LAN-SW1', '10.203.152.20', 'Vinci_UCAAS'),
(3155531, 'ucaas-ccm-sub2.ucaas.vinci-energies.net', 'VM (LINUX)', 'VMware Virtual Machine', '2.6.32-573.18.1.el6.x86_64', 'centos-release .centos 4.1708.el7.centos', '--', 'N/A', '2Gb', '2019-09-04', 'DC-UCAAS-CCM-SUB2', '10.252.104.72', 'Vinci_UCAAS'),
(3155530, 'UCAAS-MGW-801.vinci-energies.net', 'CISCO', 'CISCO2901/K9', 'FCZ1906C2H5', '15.7(3)M4b', 'flash:/c2900-universalk9-mz.SPA.157-3.M4b.bin', '256Mb', '512Mb', '2019-09-04', '801-UCAAS-MGW', '10.137.167.252', 'Vinci_UCAAS'),
(3155529, 'UCAAS-MGW-809.vinci-energies.net', 'CISCO', 'CISCO2901/K9', 'FGL200611RB', '15.7(3)M4b', 'flash:/c2900-universalk9-mz.SPA.157-3.M4b.bin', '256Mb', '512Mb', '2019-09-04', '809-UCAAS-MGW', '10.153.44.252', 'Vinci_UCAAS'),
(3155528, 'UCAAS-808-FR1555A-SW2.vinci-energies.net', 'CISCO', 'WS-C3560G-48PS-S', 'FOC1350Y5RH', '12.2(55)SE12', 'flash:/c3560-ipbasek9-mz.122-55.SE12/c3560-ipbasek9-mz.122-55.SE12.bin', '32Mb', '128Mb', '2019-09-04', '808-LAN-SW2', '10.203.212.21', 'Vinci_UCAAS'),
(3155527, 'FGT60D4Q15007954', 'FORTINET', 'FGT60D4Q', 'FGT60D4Q15007954', 'v6.0.4', '--', '2Gb', 'N/A', '2019-09-04', '804-FW-FR1251AFW01', '10.203.23.254', 'Vinci_UCAAS'),
(3155526, 'UCAAS-813-FR1182A-SW1.vinci-energies.net', 'CISCO', 'WS-C2960X-48LPS-L', 'FCW2049A09Q', '15.2(4)E8', 'flash:/c2960x-universalk9-mz.152-4.E8/c2960x-universalk9-mz.152-4.E8.bin', '128Mb', '512Mb', '2019-09-04', '813-LAN-SW1', '10.159.227.245', 'Vinci_UCAAS'),
(3155525, 'UCASS-MGW-810.vinci-energies.net', 'CISCO', 'CISCO2951/K9', 'FCZ2031B1NS', '15.7(3)M4b', 'flash:/c2951-universalk9-mz.SPA.157-3.M4b.bin', '256Mb', '512Mb', '2019-09-04', '810-UCAAS-MGW', '10.137.3.252', 'Vinci_UCAAS'),
(3155524, 'UCAAS-809-FR0113A-SW1', 'HP PROCURVE', 'ProCurve J9089A Switch 2610-48-PWR', 'CN134ZS0GS ', ' revision R.11.122', '--', 'N/A', '128Mb', '2019-09-04', '809-LAN-SW1', '10.153.44.250', 'Vinci_UCAAS'),
(3155523, 'UCAAS-817-FR0265A-SW1', 'HP PROCURVE', 'HP J9779A 2530-24-PoEP Switch', 'CN60FPB1LN ', ' revision YB.16.06.0011', '--', 'N/A', '128Mb', '2019-09-04', '817-LAN-SW1', '10.245.132.21', 'Vinci_UCAAS');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `NetInventoryResults`
--
ALTER TABLE `NetInventoryResults`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_date` (`inventory_date`),
  ADD KEY `client` (`client`),
  ADD KEY `AMS_hostname` (`AMS_hostname`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `NetInventoryResults`
--
ALTER TABLE `NetInventoryResults`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11165252;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
