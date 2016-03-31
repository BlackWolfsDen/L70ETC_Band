-- Created by Xzombie
-- updated to Eluna by slp31at420 of EmuDevs.com 
-- ==================== time to Define Locals! oh boy! ===========================================================

local Manager = 986766;
local Stagespell = 986767;
local Stagespellx = 986768;
local Stageobject = 986769;
local Belfetc = 986765;
local Orcetc = 986761;
local Undeadetc = 986764;
local Trolletc = 986763;
local Drumetc = 986762;
local time_length = 280000;
local stage_id = 186300;

-- =============================== Starter ================================================================

function L70ETC_OnGossipTalk(event, player, pUnit)
   player:GossipClearMenu()
   player:GossipMenuAddItem(9, "Play [The Power Of the Horde]", 0, 1)
   player:GossipMenuAddItem(0, "Never Mind", 0, 2)
   player:GossipSendMenu(1, pUnit)
end

function L70ETC_OnGossipSelect(event, player, pUnit, sender, intid, code, pMisc)

	if (intid == 1) then
	    pUnit:SendUnitSay("!Enjoy the show!", 0)
	-----------------------LOCAL------X-Cords--------Y-Cords-----Z-Cords----O-Cords----------------------------
		pUnit:SummonGameObject(stage_id, 1274.895996,-4337.253418, 33.097614, 6.188954, time_length);
		pUnit:SpawnCreature(Orcetc, 1280.128540, -4336.496582, 36.362015, 6.149689); ---Orc Singer Spawn
		pUnit:SpawnCreature(Belfetc, 1281.003418, -4332.847656, 36.361370, 5.706717); ---Belf Lead Guitar Spawn
		pUnit:SpawnCreature(Undeadetc, 1279.712036, -4339.838379, 36.362015, 6.165369); ---Undead Guitar Spawn
		pUnit:SpawnCreature(Trolletc, 1279.812622, -4343.136719, 36.361557, 5.957242); ---Troll Bass Spawn
		pUnit:SpawnCreature(Drumetc, 1272.674316, -4337.064941, 39.998112, 0.011300); ---Tauren Drummer Spawn
		pUnit:SpawnCreature(Stagespell, 1274.895996, -4337.253418, 33.097614, 1.000000); ---StageSpell caster (recomended to spawn UNDER the Stage, but not through the world.)
		pUnit:SpawnCreature(Stagespellx, 1274.895996, -4337.253418, 33.097614, 1.000000); ---StageSpell2 caster (recomended to spawn to a hidden spot near the stage)
		pUnit:SpawnCreature(Stageobject, 1274.895996, -4337.253418, 33.097614, 1.000000); ---GameObject Spawner (recomended to spawn to a hidden spot near the stage)
		player:GossipSendMenu(1, pUnit);
		pUnit:SetPhaseMask(0);
		pUnit:RegisterEvent(Respawn_NPC, time_length, 1);	
	end
	
	if (intid == 2) then
	   player:GossipComplete();
	   pUnit:SendUnitYell("!No Music For You!", 0)
	end
end

RegisterCreatureGossipEvent(Manager, 1, L70ETC_OnGossipTalk)
RegisterCreatureGossipEvent(Manager, 2, L70ETC_OnGossipSelect)


-------------ORC----------------
-- 
function Orca(event, pUnit)

	   print "Enjoy the show!" ---Delete this is you want
       pUnit:RemoveEvents();
	   pUnit:CastSpell(pUnit, 35341)
       pUnit:SendUnitSay("1", 0)
       pUnit:RegisterEvent(Orcb, 1000, 0)
end

function Orcb(event, duration, cycles, pUnit)
       pUnit:RemoveEvents();
       pUnit:SendUnitSay("2", 0)
       pUnit:RegisterEvent(Orcc, 1000, 0)
end

function Orcc(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
       pUnit:SendUnitSay("3", 0)
       pUnit:RegisterEvent(Orcd, 1000, 0)
end

function Orcd(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:PlayDirectSound(11803)
	   pUnit:SendUnitSay("Storm, Earth and Fire,", 0)
       pUnit:RegisterEvent(Orcd1, 2000, 0)
end

function Orcd1(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:PlayDirectSound(11803)
	   pUnit:SendUnitSay("Heed my call!", 0)
       pUnit:RegisterEvent(Orcf, 42000, 0)
end

function Orcf(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("I am the son of the wind and rain.", 0)
       pUnit:RegisterEvent(Orcf1, 2500, 0)
end

function Orcf1(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("Thunder beckons and I heed the call.", 0)
       pUnit:RegisterEvent(Orcg, 4500, 0)
end

function Orcg(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("And if i die upon this day,", 0)
       pUnit:RegisterEvent(Orcg1, 2500, 0)
end

function Orcg1(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("In battle I will fall.", 0)
       pUnit:RegisterEvent(Orch, 4000, 0)
end

function Orch(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("Hear me brothers gather up the wolves,", 0)
       pUnit:RegisterEvent(Orch1, 2500, 0)
end

function Orch1(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("to battle we will ride.", 0)
       pUnit:RegisterEvent(Orci, 4000, 0)
end

function Orci(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("Wardrums echo the beating heart,", 0)
       pUnit:RegisterEvent(Orci1, 3000, 0)
end

function Orci1(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("pounding from inside.", 0)
       pUnit:RegisterEvent(Orcj, 3400, 0)
end

function Orcj(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("STORM!", 0)
       pUnit:RegisterEvent(Orcja, 1000, 0)
end

function Orcja(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("Black clouds fill the sky!", 0)
       pUnit:RegisterEvent(Orck, 2000, 0)
end

function Orck(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("EARTH!", 0)
       pUnit:RegisterEvent(Orcka, 1400, 0)
end

function Orcka(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("I hear my battle cry!", 0)
       pUnit:RegisterEvent(Orcl, 1500, 0)
end

function Orcl(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("FIRE!", 0)
       pUnit:RegisterEvent(Orcla, 1500, 0)
end

function Orcla(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("Thunder will bring forth!", 0)
       pUnit:RegisterEvent(Orcm, 2200, 0)
end

function Orcm(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("DEATH!", 0)
       pUnit:RegisterEvent(Orcma, 1000, 0)
end

function Orcma(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("From The Power of the Horde!", 0)
       pUnit:RegisterEvent(Orcn, 15000, 0)
end
-- -------------------------------------------
function Orcn(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("Farseer to the warsong clan", 0)
       pUnit:RegisterEvent(Orcn1, 2000, 0)
end

function Orcn1(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("to no matter will I kneel.", 0)
       pUnit:RegisterEvent(Orco, 5000, 0)
end

function Orco(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("Feel the power and the energy for the black blood,", 0)
       pUnit:RegisterEvent(Orco1, 3500, 0)
end

function Orco1(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("honor and the steel.", 0)
       pUnit:RegisterEvent(Orcp, 3000, 0)
end

function Orcp(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("I feel the fire burning in my veins,", 0)
       pUnit:RegisterEvent(Orcp1, 2500, 0)
end

function Orcp1(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("lightning strikes at my command.", 0)
       pUnit:RegisterEvent(Orcq, 4000, 0)
end

function Orcq(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("By storm and earth,", 0)
       pUnit:RegisterEvent(Orcq1, 1000, 0)
end

function Orcq1(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("axe and fire,", 0)
       pUnit:RegisterEvent(Orcq2, 1900, 0)
end

function Orcq2(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("we come to claim this land.", 0)
       pUnit:RegisterEvent(Orcr, 3500, 0)
end

function Orcr(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("STORM!", 0)
       pUnit:RegisterEvent(Orcra, 1200, 0)
end

function Orcra(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("Black clouds fill the sky!", 0)
       pUnit:RegisterEvent(Orcs, 1800, 0)
end

function Orcs(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("EARTH!", 0)
       pUnit:RegisterEvent(Orcsa, 1500, 0)
end

function Orcsa(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("I hear my battle cry!", 0)
       pUnit:RegisterEvent(Orct, 1500, 0)
end

function Orct(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("FIRE!", 0)
       pUnit:RegisterEvent(Orcta, 1500, 0)
end

function Orcta(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("Thunder will bring forth!", 0)
       pUnit:RegisterEvent(Orcu, 1500, 0)
end

function Orcu(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("DEATH!", 0)
       pUnit:RegisterEvent(Orcua, 1000, 0)
end

function Orcua(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("From The Power of the Horde!", 0)
       pUnit:RegisterEvent(Orcv, 65000, 0)
end
-- -------------------------------------------
function Orcv(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("YEAHHH!", 0)
       pUnit:RegisterEvent(Orcw, 4000, 0)
end

function Orcw(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("Surrounded by the enemy,", 0)
       pUnit:RegisterEvent(Orcw1, 2500, 0)
end

function Orcw1(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("the wolf among the hounds.", 0)
       pUnit:RegisterEvent(Orcx, 3900, 0)
end

function Orcx(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("Thunder turns to silence", 0)
       pUnit:RegisterEvent(Orcx1, 1500, 0)
end

function Orcx1(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("it took the hundred to bring me down.", 0)
       pUnit:RegisterEvent(Orcy, 4500, 0)
end

function Orcy(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("Wolf brothers falling at my side", 0)
       pUnit:RegisterEvent(Orcy1, 3000, 0)
end

function Orcy1(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("with honor I will die.", 0)
       pUnit:RegisterEvent(Orcz, 3900, 0)
end

function Orcz(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("Upon the altar of the storms,", 0)
       pUnit:RegisterEvent(Orcz1, 3000, 0)
end

function Orcz1(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("I will be reborn.", 0)
       pUnit:RegisterEvent(Orcaa, 3500, 0)
end

function Orcaa(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("STORM!", 0)
       pUnit:RegisterEvent(Orcaa1, 1000, 0)
end

function Orcaa1(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("Black clouds fill the sky!", 0)
       pUnit:RegisterEvent(Orcbb, 2000, 0)
end

function Orcbb(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("EARTH!", 0)
       pUnit:RegisterEvent(Orcbb1, 1500, 0)
end

function Orcbb1(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("I hear my battle cry!", 0)
       pUnit:RegisterEvent(Orccc, 1500, 0)
end

function Orccc(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("FIRE!", 0)
       pUnit:RegisterEvent(Orccc1, 1500, 0)
end

function Orccc1(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("Thunder will bring forth!", 0)
       pUnit:RegisterEvent(Orcdd, 1500, 0)
end

function Orcdd(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("DEATH!", 0)
       pUnit:RegisterEvent(Orcdd1, 2000, 0)
end

function Orcdd1(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("For I have been reborn!", 0)
       pUnit:RegisterEvent(Orcee, 2000, 0)
end

function Orcee(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("STORM!", 0)
       pUnit:RegisterEvent(Orcff, 3000, 0)
end

function Orcff(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("EARTH!", 0)
       pUnit:RegisterEvent(Orcgg, 3000, 0)
end

function Orcgg(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("FIRE!", 0)
       pUnit:RegisterEvent(Orchh, 3000, 0)
end

function Orchh(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("DEATH!", 0)
       pUnit:RegisterEvent(Orcii, 5000, 0)
end
-- -------------------------------------------
function Orcii(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("THE POWER OF THE HORDE!", 0)
       pUnit:RegisterEvent(Orcjj, 20000, 0)
end

function Orcjj(event, duration, cycles, pUnit)
	pUnit:RemoveEvents()
--	PerformIngameSpawn(1, Manager, 1, 0, 1284.839966, -4323.430176, 33.096199, 6.103350); ---Manager Spawn (Spawn next to Stage)
	pUnit:DespawnOrUnsummon();
end

RegisterCreatureEvent(Orcetc, 22, Orca)

---TROLL---
-- Mia'Ky
function Trolla(event, pUnit)
       pUnit:CastSpell(pUnit, 35341)
       pUnit:RegisterEvent(Trollb, 74200, 0)
end

function Trollb(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("STORM!", 0)
       pUnit:RegisterEvent(Trollc, 3100, 0)
end

function Trollc(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("EARTH!", 0)
       pUnit:RegisterEvent(Trolld, 3000, 0)
end

function Trolld(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("FIRE!", 0)
       pUnit:RegisterEvent(Trolle, 4000, 0)
end

function Trolle(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("DEATH!", 0)
       pUnit:RegisterEvent(Trollf, 43000, 0)
end
---------------------------------------------------
function Trollf(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("STORM!", 0)
       pUnit:RegisterEvent(Trollg, 3200, 0)
end

function Trollg(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("EARTH!", 0)
       pUnit:RegisterEvent(Trollh, 3000, 0)
end

function Trollh(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("FIRE!", 0)
       pUnit:RegisterEvent(Trolli, 3000, 0)
end

function Trolli(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("DEATH!", 0)
       pUnit:RegisterEvent(Trollsolo, 5000, 0)
end
----------------------------------------------------

---Solo Fire Hands stays on NPC for some reason, Fix this if u want but keep the timing right---
function Trollsolo(event, duration, cycles, pUnit)
	   pUnit:CastSpell(pUnit, 45984)
       pUnit:RegisterEvent(Trollj, 91000, 0)
end

-----------------------------------------------------
function Trollj(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("STORM!", 0)
       pUnit:RegisterEvent(Trollk, 3500, 0)
end

function Trollk(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("EARTH!", 0)
       pUnit:RegisterEvent(Trolll, 3000, 0)
end

function Trolll(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("FIRE!", 0)
       pUnit:RegisterEvent(Trollm, 3000, 0)
end

function Trollm(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("DEATH!", 0)
       pUnit:RegisterEvent(Trolln, 4000, 0)
end

function Trolln(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("STORM!", 0)
       pUnit:RegisterEvent(Trollo, 3000, 0)
end

function Trollo(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("EARTH!", 0)
       pUnit:RegisterEvent(Trollp, 3000, 0)
end

function Trollp(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("FIRE!", 0)
       pUnit:RegisterEvent(Trollq, 3000, 0)
end

function Trollq(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("DEATH!", 0)
       pUnit:RegisterEvent(Trollr, 25000, 0)
end

function Trollr(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:DespawnOrUnsummon()
end

RegisterCreatureEvent(Trolletc, 22, Trolla)

-------UNDEAD-------

function Undeada(event, pUnit)
       pUnit:CastSpell(pUnit, 35341)
       pUnit:RegisterEvent(Undeadb, 74200, 0)
end

function Undeadb(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("STORM!", 0)
       pUnit:RegisterEvent(Undeadc, 3000, 0)
end

function Undeadc(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("EARTH!", 0)
       pUnit:RegisterEvent(Undeadd, 3000, 0)
end

function Undeadd(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("FIRE!", 0)
       pUnit:RegisterEvent(Undeade, 4000, 0)
end

function Undeade(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("DEATH!", 0)
       pUnit:RegisterEvent(Undeadf, 43000, 0)
end
---------------------------------------------------
function Undeadf(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("STORM!", 0)
       pUnit:RegisterEvent(Undeadg, 3200, 0)
end

function Undeadg(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("EARTH!", 0)
       pUnit:RegisterEvent(Undeadh, 3000, 0)
end

function Undeadh(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("FIRE!", 0)
       pUnit:RegisterEvent(Undeadi, 3000, 0)
end

function Undeadi(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("DEATH!", 0)
       pUnit:RegisterEvent(Undeadsolo, 5000, 0)
end
-----------------------------------------------------
---Solo Fire Hands stays on NPC for some reason, Fix this if u want but keep the timing right---
function Undeadsolo(event, duration , cycles, pUnit)
	   pUnit:CastSpell(pUnit, 45984)
       pUnit:RegisterEvent(Undeadj, 91000, 0)
end

-----------------------------------------------------
function Undeadj(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("STORM!", 0)
       pUnit:RegisterEvent(Undeadk, 3500, 0)
end

function Undeadk(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("EARTH!", 0)
       pUnit:RegisterEvent(Undeadl, 3000, 0)
end

function Undeadl(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("FIRE!", 0)
       pUnit:RegisterEvent(Undeadm, 3000, 0)
end

function Undeadm(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("DEATH!", 0)
       pUnit:RegisterEvent(Undeadn, 4000, 0)
end

function Undeadn(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("STORM!", 0)
       pUnit:RegisterEvent(Undeado, 3000, 0)
end

function Undeado(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("EARTH!", 0)
       pUnit:RegisterEvent(Undeadp, 3000, 0)
end

function Undeadp(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("FIRE!", 0)
       pUnit:RegisterEvent(Undeadq, 3000, 0)
end

function Undeadq(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("DEATH!", 0)
       pUnit:RegisterEvent(Undeadr, 25000, 0)
end

function Undeadr(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:DespawnOrUnsummon()
end

RegisterCreatureEvent(Undeadetc, 22, Undeada)

-----BELF----

function Belfa(event, pUnit)
       pUnit:CastSpell(pUnit, 35341)
       pUnit:RegisterEvent(Belfb, 74200, 0)
end


function Belfb(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("STORM!", 0)
       pUnit:RegisterEvent(Belfc, 3100, 0)
end

function Belfc(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("EARTH!", 0)
       pUnit:RegisterEvent(Belfd, 3000, 0)
end

function Belfd(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("FIRE!", 0)
       pUnit:RegisterEvent(Belfe, 4000, 0)
end

function Belfe(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("DEATH!", 0)
       pUnit:RegisterEvent(Belff, 43000, 0)
end
-- -------------------------------------------------
function Belff(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("STORM!", 0)
       pUnit:RegisterEvent(Belfg, 3200, 0)
end

function Belfg(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("EARTH!", 0)
       pUnit:RegisterEvent(Belfh, 3000, 0)
end

function Belfh(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("FIRE!", 0)
       pUnit:RegisterEvent(Belfi, 3000, 0)
end

function Belfi(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("DEATH!", 0)
       pUnit:RegisterEvent(Belfsolo, 5000, 0)
end
-----------------------------------------------------
---Solo Fire Hands stays on NPC for some reason, Fix this if u want but keep the timing right---
function Belfsolo(event, duration , cycles, pUnit)
	   pUnit:CastSpell(pUnit, 45984)
       pUnit:RegisterEvent(Belfj, 91000, 0)
end

-----------------------------------------------------
function Belfj(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("STORM!", 0)
       pUnit:RegisterEvent(Belfk, 3500, 0)
end

function Belfk(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("EARTH!", 0)
       pUnit:RegisterEvent(Belfl, 3000, 0)
end

function Belfl(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("FIRE!", 0)
       pUnit:RegisterEvent(Belfm, 3000, 0)
end

function Belfm(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("DEATH!", 0)
       pUnit:RegisterEvent(Belfn, 4000, 0)
end
-- -------------------------------------------------
function Belfn(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("STORM!", 0)
       pUnit:RegisterEvent(Belfo, 3000, 0)
end

function Belfo(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("EARTH!", 0)
       pUnit:RegisterEvent(Belfp, 3000, 0)
end

function Belfp(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("FIRE!", 0)
       pUnit:RegisterEvent(Belfq, 3000, 0)
end

function Belfq(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("DEATH!", 0)
       pUnit:RegisterEvent(Belfr, 25000, 0)
end

function Belfr(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:DespawnOrUnsummon()
end

RegisterCreatureEvent(Belfetc, 22, Belfa)

------DRUMS------
-- Chief Thunder-Skins
function Drumsa(event, pUnit)
       pUnit:CastSpell(pUnit, 35341)
       pUnit:RegisterEvent(Drumsb, 74200, 0)
end

function Drumsb(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("STORM!", 0)
       pUnit:RegisterEvent(Drumsc, 3100, 0)
end

function Drumsc(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("EARTH!", 0)
       pUnit:RegisterEvent(Drumsd, 3000, 0)
end

function Drumsd(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("FIRE!", 0)
       pUnit:RegisterEvent(Drumse, 4000, 0)
end

function Drumse(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("DEATH!", 0)
       pUnit:RegisterEvent(Drumsf, 43000, 0)
end
-- -------------------------------------------------
function Drumsf(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("STORM!", 0)
       pUnit:RegisterEvent(Drumsg, 3200, 0)
end

function Drumsg(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("EARTH!", 0)
       pUnit:RegisterEvent(Drumsh, 3000, 0)
end

function Drumsh(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("FIRE!", 0)
       pUnit:RegisterEvent(Drumsi, 3000, 0)
end

function Drumsi(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("DEATH!", 0)
       pUnit:RegisterEvent(Drumsj, 96000, 0)
end
-- ---------------------------------------------------
function Drumsj(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("STORM!", 0)
       pUnit:RegisterEvent(Drumsk, 3500, 0)
end

function Drumsk(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("EARTH!", 0)
       pUnit:RegisterEvent(Drumsl, 3000, 0)
end

function Drumsl(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("FIRE!", 0)
       pUnit:RegisterEvent(Drumsm, 3000, 0)
end

function Drumsm(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("DEATH!", 0)
       pUnit:RegisterEvent(Drumsn, 4000, 0)
end
-- ---------------------------------------------------
function Drumsn(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("STORM!", 0)
       pUnit:RegisterEvent(Drumso, 3000, 0)
end

function Drumso(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("EARTH!", 0)
       pUnit:RegisterEvent(Drumsp, 3000, 0)
end

function Drumsp(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("FIRE!", 0)
       pUnit:RegisterEvent(Drumsq, 3000, 0)
end

function Drumsq(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:SendUnitSay("DEATH!", 0)
       pUnit:RegisterEvent(Drumsr, 25000, 0)
end

function Drumsr(event, duration , cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:DespawnOrUnsummon()
end

RegisterCreatureEvent(Drumetc, 22, Drumsa)

-----SPELLS-----

function Sspella(event, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(1278.998413,-4341.354004,36.361351,41482) -- ice storm affect
       pUnit:RegisterEvent(Sspellb, 20000, 0)
end

function Sspellb(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(1279.701538,-4333.744141,36.361641,42023) -- lava storm
       pUnit:RegisterEvent(Sspellc, 20000, 0)
end

function Sspellc(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(1279.701538,-4333.744141,36.361641,42023)
       pUnit:RegisterEvent(Sspelld, 20000, 0)
end

function Sspelld(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(1278.998413,-4341.354004,36.361351,41482)
       pUnit:RegisterEvent(Sspelle, 20000, 0)
end

function Sspelle(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(1279.701538,-4333.744141,36.361641,42023)
       pUnit:RegisterEvent(Sspellf, 20000, 0)
end

function Sspellf(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(1278.998413,-4341.354004,36.361351,41482)
       pUnit:RegisterEvent(Sspellg, 20000, 0)
end

function Sspellg(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(1279.701538,-4333.744141,36.361641,42023)
       pUnit:RegisterEvent(Sspellh, 20000, 0)
end

function Sspellh(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(1278.998413,-4341.354004,36.361351,41482)
       pUnit:RegisterEvent(Sspelli, 20000, 0)
end

function Sspelli(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(1278.998413,-4341.354004,36.361351,41482)
       pUnit:RegisterEvent(Sspellj, 20000, 0)
end

function Sspellj(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(1279.701538,-4333.744141,36.361641,42023)
	   pUnit:RegisterEvent(Sspelll, 20000, 0)
end

function Sspelll(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(1278.998413,-4341.354004,36.361351,41482)
       pUnit:RegisterEvent(Sspellm, 20000, 0)
end

function Sspellm(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(1278.998413,-4341.354004,36.361351,41482)
       pUnit:RegisterEvent(Sspelln, 10000, 0)
end

function Sspelln(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(1278.998413,-4341.354004,36.361351,41482)
       pUnit:RegisterEvent(Sspellend, 49000, 0)
end
--------------The BIG Explosion at the end----------------
function Sspellend(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(1277.595215,-4337.620605,36.361244,59084)
	   pUnit:CastSpellAoF(1277.595215,-4337.620605,36.361244,59084)
       pUnit:RegisterEvent(Sspello, 7000, 0)
end
----------------------------------------------------------
function Sspello(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:DespawnOrUnsummon()
end

RegisterCreatureEvent(Stagespell, 22, Sspella)

--------------Spells2-------
-----ALL of these are Earthquakes------


function Sspellxa(event, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(pUnit, 37764)
       pUnit:RegisterEvent(Sspellxb, 20000, 0)
end

function Sspellxb(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(pUnit, 37764)
       pUnit:RegisterEvent(Sspellxc, 20000, 0)
end

function Sspellxc(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(pUnit, 37764)
       pUnit:RegisterEvent(Sspellxd, 20000, 0)
end

function Sspellxd(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(pUnit, 37764)
       pUnit:RegisterEvent(Sspellxe, 20000, 0)
end

function Sspellxe(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(pUnit, 37764)
       pUnit:RegisterEvent(Sspellxf, 20000, 0)
end

function Sspellxf(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(pUnit, 37764)
       pUnit:RegisterEvent(Sspellxg, 20000, 0)
end

function Sspellxg(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(pUnit, 37764)
       pUnit:RegisterEvent(Sspellxh, 20000, 0)
end

function Sspellxh(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(pUnit, 37764)
       pUnit:RegisterEvent(Sspellxi, 20000, 0)
end

function Sspellxi(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(pUnit, 37764)
       pUnit:RegisterEvent(Sspellxj, 20000, 0)
end

function Sspellxj(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(pUnit, 37764)
       pUnit:RegisterEvent(Sspellxl, 20000, 0)
end

function Sspellxl(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(pUnit, 37764)
       pUnit:RegisterEvent(Sspellxm, 20000, 0)
end

function Sspellxm(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(pUnit, 37764)
       pUnit:RegisterEvent(Sspellxn, 20000, 0)
end

function Sspellxn(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(pUnit, 37764)
       pUnit:RegisterEvent(Sspello, 20000, 0)
end

function Sspellxo(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(pUnit, 37764)
       pUnit:RegisterEvent(Sspellxend, 1000, 0)
end

function Sspellxend(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:DespawnOrUnsummon()
end

RegisterCreatureEvent(Stagespellx, 22, Sspellxa)

----------Light Effects-------
----------Light effects from the solo-----------
function Sobjecta(event, pUnit)
       pUnit:RemoveEvents()
	   pUnit:RegisterEvent(Sobjectb, 136000, 1)
end

function Sobjectb(event, duration, cycles, pUnit)
       pUnit:RemoveEvents()
       pUnit:SummonGameObject(177415, 1281.003418, -4332.847656, 36.361370, 0.011300, 50000)
	   pUnit:SummonGameObject(177415, 1279.550903, -4341.965332, 36.361584, 0.011300, 50000)
	   pUnit:SummonGameObject(177415,  1272.674316, -4337.064941, 39.998112, 0.011300, 50000)
	   pUnit:RegisterEvent(Sobjectend, 1000, 0)
end

function Sobjectend(event, duration, cycles, pUnit)
print(1104, event, duration, cycles, pUnit);
       pUnit:RemoveEvents();
	   pUnit:DespawnOrUnsummon();
end

RegisterCreatureEvent(Stageobject, 22, Sobjecta)

function stage_end(event, duration, cycles, pUnit)
       pUnit:RemoveEvents();
       pUnit:RemoveFromWorld();
end

function Respawn_NPC(event, duration, cycles, pUnit)
	pUnit:SetPhaseMask(1);
end

function stage_timer(event, pUnit)
	if(pUnit)then 
		pUnit:RegisterEvent(stage_end, time_length, 0);
	end
end

RegisterGameObjectEvent(stage_id, 10, stage_timer)

print "This L70ETCBand Script was made by Xzombie" 

-----------END-----------
