/*!40101 SET NAMES utf8 */;
-- Победитель в испытаниях: золото
DELETE FROM `achievement_reward` WHERE `entry` = 6378;
INSERT INTO `achievement_reward` (`entry`, `title_A`, `title_H`, `learnSpell`, `item`, `sender`, `subject`, `text`, `ScriptName`) VALUES 
('6378', '0', '0', '0', '90155', '67023', 'Награда для завоевателя', 'Великий <Класс>, Мы внимательно следили за твоими действиями, и ты не разочаровал нас. Подобно разрушительному вихрю, ты прошел сквозь ряды врагов, оставляя за собой горы трупов могу, богомолов и других ужасных тварей.

В награду за твои заслуги мы вручаем тебе комплект нашей лучшей брони. Нигде в Азероте ты не найдешь ничего подобного. Эта броня буквально становится частью тебя, реагируя на каждое твое движение, на каждую твою мысль.

Носи ее с гордостью, и пусть все, кто тебя видит, восхищаются твоей отвагой. Прими наши поздравления!', 'ChallengeConquerorGold');

-- Победитель в испытаниях: бронза
DELETE FROM `achievement_reward` WHERE `entry` = 6374;
INSERT INTO `achievement_reward` (`entry`, `title_A`, `title_H`, `learnSpell`, `item`, `sender`, `subject`, `text`, `ScriptName`) VALUES 
('6374', '314', '314', '0', '0', '0', NULL, NULL, '');