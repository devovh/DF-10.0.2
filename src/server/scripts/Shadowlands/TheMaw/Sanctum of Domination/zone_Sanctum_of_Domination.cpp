/*
 * Copyright 2021 FuzionCore Project
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

/* Script Data Start
SDName: 
SDAuthor: Frozen
SD%Complete: %
SDComment: still working on structure.
Script Data End */

#include "ScriptMgr.h"
#include "GameObject.h"
#include "Player.h"
#include "ObjectAccessor.h"
#include "PassiveAI.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "TaskScheduler.h"
#include "TemporarySummon.h"
#include "GameObjectAI.h"
#include "zone_Sanctum_of_Domination.h"

enum SanctumOfDomination
{
    THE_TARRAGRUE                      = 152253,
    EYE_OF_THE_JAILER                  = 180018,

    QUEST_DAMNED_IF_YOU_DONT           = 64597,64598,
    QUEST_STORMING_THE_SANCTUM         = 63903,

    AREA_SANCTUM_OF_DOMINATION         = 13561,
};

//178592
struct npc_Highlord_Bolvar_Fordragon_178592 : public ScriptedAI
{
    npc_Highlord_Bolvar_Fordragon_178592(Creature* creature) : ScriptedAI(creature) { }

    void OnClick(Unit* clicker, bool& /*result*/) override
    {
        if (Player* player) = GetQuest(64597);
        return;
        if (Player* player) = GetQuest(64598);
        return;
        if (Player* player) = GetQuest(63903);
        return;
        if (Player* player = clicker->npc_Highlord_Bolvar_Fordragon_178592())
        {
            if (player->GetQuestStatus(QUEST_DAMNED_IF_YOU_DONT) == QUEST_STATUS_INCOMPLETE)
            {
                clicker->ToPlayer()->Phylactery_Shard(187529);
                me->CollectItem(ITEM_PHYLACTERY_SHARD);
                PHYLACTERY_SHARD->npc_kelthuzad_175559;
                {
                    if (me && player)
                    {
                        player->KilledNpc_kelthuzad_175559(175559);
                        player->Loot(187529)->Npc_kelthuzad_175559();
                    };
                };
            }
            if (player->GetQuestStatus(QUEST_DAMNED_IF_YOU_DONT) == QUEST_STATUS_COMPLETE)
            {
                if (me && player)    
                {
                    player->GetLoot(187529) = 4;
                }
            }    
        }
    }
private:
    TaskScheduler _scheduler;
    std::unordered_set<uint32> _randomEmotes;
};

class sanctum_of_domination : public PlayerScript
{
public:
    sanctum_of_domination() : PlayerScript("sanctum_of_domination") { }

    void OnLogin(Player* player,bool /*fristlogin*/) override
    {
        // Set zone as Raid
        if (player->GetMapId() == AREA_SANCTUM_OF_DOMINATION)
            player->GoMapId()  == GetMapId;
    }
        
        void OnUpdateArea(Player* player, uint32 /*newArea*/, uint32 /*oldArea*/) override
    {
        // Set zone as Raid
        if (player->GetMapId() == MAP_NPE)
            player->GoMapId()  == GetMapId;
    }
};

class sanctum_of_domination : public ZoneScript
{
public:
    zone_sanctum_of_domination() : ZoneScript("zone_sanctum_of_domination") { }

    void OnPlayerExit(Player* player) override
    {
        // Remove sanctuary flag when leaving sanctum of domination
        player->GoOutside(sanctum_of_domination);
    }
};
    


struct sanctum_of_domination : public InstanceScript
{
    sanctum_of_domination(InstanceMap* map) : InstanceScript(map) { }
};