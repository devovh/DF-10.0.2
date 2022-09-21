-- 
UPDATE `smart_scripts` SET `action_type`=11, `action_param1`=108013, `action_param2`=0, `action_param3`=0 WHERE `entryorguid` IN (-370665,-370584, -370561,-370552) AND `source_Type`=0 AND `id`=0;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `Entry` IN (51717, 51936, 12369, 40503);
UPDATE `smart_scripts` SET `link`=0 WHERE `entryorguid`=2287 AND `source_type`=0 AND `id`=3;
DELETE FROM `smart_scripts` WHERE `entryorguid`=2287 AND `source_type`=0 AND `id`=4;
UPDATE `smart_scripts` SET `event_param3`=3000 WHERE `entryorguid`=5328 AND `source_type`=0 AND `id`=0;
UPDATE `smart_scripts` SET `event_param2`=20 WHERE `entryorguid`=5328 AND `source_type`=0 AND `id`=1;
UPDATE `smart_scripts` SET `action_type`=11, `action_param1`=32581, `action_param2`=0, `action_param3`=0  WHERE `entryorguid`=21352 AND `source_type`=0 AND `id`=0;
UPDATE `smart_scripts` SET `action_type`=11, `action_param1`=36977, `action_param2`=0, `action_param3`=0, `action_param4`=0 WHERE `entryorguid`=21352 AND `source_type`=0 AND `id`=2;
UPDATE `smart_scripts` SET `action_type`=11, `action_param1`=34631, `action_param2`=0, `action_param3`=0, `action_param4`=0 WHERE `entryorguid`=21498 AND `source_type`=0 AND `id`=0;
UPDATE `smart_scripts` SET `action_type`=11, `action_param1`=36885, `action_param2`=0, `action_param3`=0, `action_param4`=0 WHERE `entryorguid`=21498 AND `source_type`=0 AND `id`=1;
UPDATE `smart_scripts` SET `action_type`=85, `action_param1`=95006, `action_param2`=2 WHERE `entryorguid`=30698 AND `source_type`=0 AND `id`=7;
UPDATE `smart_scripts` SET `event_param2`=20 WHERE `entryorguid`=40969 AND `source_type`=0 AND `id`=4;
UPDATE `smart_scripts` SET `action_type`=85 WHERE `entryorguid`=47707 AND `source_type`=0 AND `id`=1;
UPDATE `smart_scripts` SET `action_type`=85 WHERE `entryorguid`=46293 AND `source_type`=0 AND `id`=0;
UPDATE `smart_scripts` SET `target_type`=19, `target_param1`=0, `target_param2`=30 WHERE `entryorguid`=73452 AND `source_type`=0 AND `id`=1;
UPDATE `smart_scripts` SET `action_type`=85 WHERE `entryorguid`=230700 AND `source_type`=9 AND `id` IN (0,1,2);
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `Entry` IN (164819, 177673, 190549);
UPDATE `smart_scripts` SET `action_type`=85, `action_param1`=91874 WHERE `entryorguid`=3889500 AND `source_type`=9 AND `id` IN (1);
UPDATE `smart_scripts` SET `action_type`=85, `action_param1`=91873 WHERE `entryorguid`=4923000 AND `source_type`=9 AND `id` IN (1);
UPDATE `smart_scripts` SET `action_type`=85, `action_param1`=91876 WHERE `entryorguid`=4923100 AND `source_type`=9 AND `id` IN (1);
UPDATE `smart_scripts` SET `action_type`=11, `action_param1`=91945 WHERE `entryorguid`=4934000 AND `source_type`=9 AND `id` IN (1);

UPDATE `smart_scripts` SET `id`=1 WHERE `entryorguid`= 5327 AND `source_type`=0 AND `action_type`=11;                                                
UPDATE `smart_scripts` SET `link`=0 WHERE `entryorguid` IN (234, 2287, 2719, 3142, 3643, 3987, 5327, 5888, 8151, 8154, 10828, 12265, 29176, 29181, 29186, 29199, 29200, 29204, 32438, 55418, 57875, 57877, 57890) AND `source_type`=0;
UPDATE `smart_scripts` SET `link`=0 WHERE `entryorguid` IN (3643) AND `source_type`=1;
UPDATE `smart_scripts` SET `link`=0 WHERE `entryorguid` IN (13601) AND `source_type`=0 AND `id` IN (3,4,9);
UPDATE `smart_scripts` SET `event_type`=61 WHERE `entryorguid` IN (14390) AND `source_type`=0 AND `id` IN (9);
UPDATE `smart_scripts` SET `link`=0 WHERE `entryorguid` IN (14467) AND `source_type`=0 AND `id` IN (0);
UPDATE `smart_scripts` SET `event_type`=61 WHERE `entryorguid` IN (15641) AND `source_type`=0 AND `id` IN (9);
UPDATE `smart_scripts` SET `event_type`=61 WHERE `entryorguid` IN (16403) AND `source_type`=0 AND `id` IN (9);
UPDATE `smart_scripts` SET `event_type`=61 WHERE `entryorguid` IN (16459) AND `source_type`=0 AND `id` IN (2);
UPDATE `smart_scripts` SET `event_type`=61 WHERE `entryorguid` IN (16704) AND `source_type`=0 AND `id` IN (13);
UPDATE `smart_scripts` SET `event_type`=61 WHERE `entryorguid` IN (17270) AND `source_type`=0 AND `id` IN (13);
UPDATE `smart_scripts` SET `event_type`=61 WHERE `entryorguid` IN (17670) AND `source_type`=0 AND `id` IN (13);
UPDATE `smart_scripts` SET `link`=0 WHERE `entryorguid` IN (19507) AND `source_type`=0 AND `id` IN (1);
