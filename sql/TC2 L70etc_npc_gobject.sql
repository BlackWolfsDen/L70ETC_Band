REPLACE INTO `creature_template` (`entry`, `name`, `subname`, `type`, `family`, `rank`, `modelid1`, `minlevel`, `maxlevel`, `faction_a`, `faction_h`, `scale`, `npcflag`) VALUES
(986761, 'Samuro', 'L70ETC',1,1,3,21665,70,70,35,35,1.5,0),
(986762, 'Chief Thunder-Skins', 'L70ETC',1,1,3,21661,70,70,35,35,1.5,0),
(986763, 'Mai\'Ky', 'L70ETC',1,1,3,21662,70,70,35,35,1.5,0),
(986764, 'Bergrisst', 'L70ETC',1,1,3,21659,70,70,35,35,1.5,0),
(986765, 'Sig Nicious', 'L70ETC',1,1,3,21666,70,70,35,35,1.5,0),
(986766, 'Michael Schweitzer', 'Xzombie',1,1,3,21959,70,70,35,35,1.5,1),
(986767, 'Steven Thomas', 'L70ETC Caster',1,1,3,2139,70,70,35,35,1.5,0),
(986768, 'Steven Thomas', 'L70ETC Caster2',1,1,3,2139,70,70,35,35,1.5,0),
(986769, 'Steven Thomas', 'L70ETC Objecter',1,1,3,2139,70,70,35,35,1.5,0);

-- ------------Creature Spawn------
REPLACE INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `modelid`) VALUES
(6173302,986766,1,1284.839966,-4323.430176,33.096199,6.103350,21959);
-- --------------------------------
-- -------GameObject_Spawns--------
-- REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES 
-- (195282,186300,1,1274.895996,-4337.253418,33.097614,6.188954);
-- --------------------------------