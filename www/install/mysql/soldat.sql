CREATE TABLE `ps_map_data_soldat` (
  `dataid` int unsigned NOT NULL default '0',
  `alphakills` smallint unsigned NOT NULL default '0',
  `bravokills` smallint unsigned NOT NULL default '0',
  `alphawon` smallint unsigned NOT NULL default '0',
  `alphalost` smallint unsigned NOT NULL default '0',
  `bravowon` smallint unsigned NOT NULL default '0',
  `bravolost` smallint unsigned NOT NULL default '0',
  `alphaflagscaptured` smallint unsigned NOT NULL default '0',
  `bravoflagscaptured` smallint unsigned NOT NULL default '0',
  `alphaflagsdefended` smallint unsigned NOT NULL default '0',
  `bravoflagsdefended` smallint unsigned NOT NULL default '0',
  `alphaflagspickedup` smallint unsigned NOT NULL default '0',
  `bravoflagspickedup` smallint unsigned NOT NULL default '0',
  `flagscaptured` smallint unsigned NOT NULL default '0',
  `flagsdefended` smallint unsigned NOT NULL default '0',
  `joinedalpha` smallint unsigned NOT NULL default '0',
  `joinedbravo` smallint unsigned NOT NULL default '0',
  PRIMARY KEY  (`dataid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;
CREATE TABLE `ps_plr_data_soldat` (
  `dataid` int unsigned NOT NULL default '0',
  `alphakills` smallint unsigned NOT NULL default '0',
  `bravokills` smallint unsigned NOT NULL default '0',
  `alphadeaths` smallint unsigned NOT NULL default '0',
  `bravodeaths` smallint unsigned NOT NULL default '0',
  `alphawon` smallint unsigned NOT NULL default '0',
  `alphalost` smallint unsigned NOT NULL default '0',
  `bravowon` smallint unsigned NOT NULL default '0',
  `bravolost` smallint unsigned NOT NULL default '0',
  `alphaflagscaptured` smallint unsigned NOT NULL default '0',
  `bravoflagscaptured` smallint unsigned NOT NULL default '0',
  `alphaflagsdefended` smallint unsigned NOT NULL default '0',
  `bravoflagsdefended` smallint unsigned NOT NULL default '0',
  `alphaflagspickedup` smallint unsigned NOT NULL default '0',
  `bravoflagspickedup` smallint unsigned NOT NULL default '0',
  `flagscaptured` smallint unsigned NOT NULL default '0',
  `flagsdefended` smallint unsigned NOT NULL default '0',
  `joinedalpha` smallint unsigned NOT NULL default '0',
  `joinedbravo` smallint unsigned NOT NULL default '0',
  PRIMARY KEY  (`dataid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;
CREATE TABLE `ps_plr_maps_soldat` (
  `dataid` int unsigned NOT NULL default '0',
  `alphakills` smallint unsigned NOT NULL default '0',
  `bravokills` smallint unsigned NOT NULL default '0',
  `alphadeaths` smallint unsigned NOT NULL default '0',
  `bravodeaths` smallint unsigned NOT NULL default '0',
  `alphawon` smallint unsigned NOT NULL default '0',
  `alphalost` smallint unsigned NOT NULL default '0',
  `bravowon` smallint unsigned NOT NULL default '0',
  `bravolost` smallint unsigned NOT NULL default '0',
  `alphaflagscaptured` smallint unsigned NOT NULL default '0',
  `bravoflagscaptured` smallint unsigned NOT NULL default '0',
  `alphaflagsdefended` smallint unsigned NOT NULL default '0',
  `bravoflagsdefended` smallint unsigned NOT NULL default '0',
  `alphaflagspickedup` smallint unsigned NOT NULL default '0',
  `bravoflagspickedup` smallint unsigned NOT NULL default '0',
  `flagscaptured` smallint unsigned NOT NULL default '0',
  `flagsdefended` smallint unsigned NOT NULL default '0',
  `joinedalpha` smallint unsigned NOT NULL default '0',
  `joinedbravo` smallint unsigned NOT NULL default '0',
  PRIMARY KEY  (`dataid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;

-- Moved from defaults.sql.
INSERT INTO `ps_config_plrbonuses` (`id`, `eventname`, `enactor`, `enactor_team`, `victim`, `victim_team`, `description`, `gametype`, `modtype`) 
    VALUES 
        (34,'ffkill',-10,0,0,0,'when a player kills a team mate','',''),
        (37,'flag_defended',5,0,0,0,'When a player defends a flag','soldat',''),
        (38,'flag_captured',5,0,0,0,'When a player captures a flag','soldat','');
        
INSERT INTO `ps_config_awards` (`id`, `enabled`, `idx`, `type`, `negative`, `class`, `name`, `groupname`, `phrase`, `expr`, `order`, `where`, `limit`, `format`, `gametype`, `modtype`, `rankedonly`, `description`) 
    VALUES 
        (4,1,10,'player',0,'','Highest Skill','','{$player.link} has the highest skill with {$award.value}','{$skill}','desc','',0,'%.02f',NULL,NULL,1,'Player with the highest skill'),
        (6,1,20,'player',0,'','Most Kills','','{$player.link} has killed the most players ({$award.value})','{$kills}','desc','',0,'commify',NULL,NULL,1,'Player with the most kills (any team)'),
        (8,1,70,'player',0,'','Most Time Online','','{$player.link} has been online the longest ({$award.value})','{$onlinetime}','desc','',25,'compacttime',NULL,NULL,1,'Player with the most online time'),
        (9,1,190,'weaponclass',0,'','Most Kills with {$weapon.class} weapons','','{$player.link} has the most {$weapon.class} kills ({$award.value})','{$kills}','desc','',0,'commify',NULL,NULL,1,'Most kills with {$weapon.class} type weapons (including: {$weapon.list}).'),
        (10,1,180,'weapon',0,'','Most Kills with {$weapon.name}','','{$player.link} has the most {$weapon.link} kills ({$award.value})','{$kills}','desc','',0,'commify',NULL,NULL,1,'Most kills with a {$weapon.name}'),
        (13,1,30,'player',0,'','Most Bonus Points','','{$player.link} achieved the most bonus points ({$award.value})','{$totalbonus}','desc','',25,'commify',NULL,NULL,1,'Player that has achieved the most bonus points.'),
        (23,1,50,'player',1,'','Worst Teammate','','{$player.link} has killed the most teammates ({$award.value})','{$ffkills}','desc','',0,'commify',NULL,NULL,1,'Player with the most friendly fire kills (ie: Worst Teammate)'),
        (25,1,60,'player',1,'','Worst Team Kill Percentage','','{$player.link} has the highest team kill percentage ({$award.value})','{$ffkills} / {$kills} * 100','desc','',0,'%0.02f%%',NULL,NULL,1,'Player with the highest team kill percentage.');
