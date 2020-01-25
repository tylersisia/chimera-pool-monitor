CREATE TABLE IF NOT EXISTS `pools` (
  `id` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `api` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `miningAddress` varchar(255) NOT NULL,
  `mergedMining` int(1) NOT NULL DEFAULT 0,
  `mergedMiningIsParentChain` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `type` (`type`), 
  KEY `mergedMining` (`mergedMining`),
  KEY `mergedMiningIsParentChain` (`mergedMiningIsParentChain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `pool_polling` (
  `id` varchar(64) NOT NULL,
  `timestamp` bigint(1) UNSIGNED NOT NULL,
  `height` bigint(20) NOT NULL DEFAULT 0,
  `hashrate` bigint(20) NOT NULL DEFAULT 0,
  `miners` bigint(20) NOT NULL DEFAULT 0,
  `fee` DOUBLE NOT NULL DEFAULT 0,
  `minPayout` bigint(20) NOT NULL DEFAULT 0,
  `lastBlock` bigint(20) NOT NULL DEFAULT 0,
  `donation` DOUBLE NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`, `timestamp`),
  KEY `status` (`status`),
  KEY `lastBlock` (`lastBlock`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `pool_blocks` (
  `hash` varchar(64) NOT NULL,
  `height` bigint(20) NOT NULL,
  `id` varchar(64) NOT NULL,
  PRIMARY KEY (`hash`),
  KEY `id` (`id`),
  KEY `height` (`height`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
