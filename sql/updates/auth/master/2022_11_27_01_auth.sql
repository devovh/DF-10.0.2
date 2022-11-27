DELETE FROM `build_info` WHERE `build`=45746;
INSERT INTO `build_info` (`build`,`majorVersion`,`minorVersion`,`bugfixVersion`,`hotfixVersion`,`winAuthSeed`,`win64AuthSeed`,`mac64AuthSeed`,`winChecksumSeed`,`macChecksumSeed`) VALUES
(45746,10,0,2,NULL,NULL,'51C074CD8A09A75384B9B44188C56981',NULL,NULL,NULL);

UPDATE `realmlist` SET `gamebuild`=45746 WHERE `gamebuild`=45746;

ALTER TABLE `realmlist` CHANGE `gamebuild` `gamebuild` int(10) unsigned NOT NULL DEFAULT '45746';