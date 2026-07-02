#召唤临时标记实体作为 TP 目标
summon armor_stand ~ ~ ~ {Tags:["miner_chaos.tp_temp"],NoGravity:1b,Invisible:1b,Marker:1b}

#随机设置目标位置（避开边缘 ±22）
execute store result entity @e[tag=miner_chaos.tp_temp,limit=1] Pos[0] double 1 run random value -22..22
execute store result entity @e[tag=miner_chaos.tp_temp,limit=1] Pos[1] double 1 run random value -62..-31
execute store result entity @e[tag=miner_chaos.tp_temp,limit=1] Pos[2] double 1 run random value -22..22

#TP 玩家到目标位置
tp @s @e[tag=miner_chaos.tp_temp,limit=1]

#清理临时实体
kill @e[tag=miner_chaos.tp_temp,limit=1]

#生成出生点房间
function miner_chaos:game/spawn_room