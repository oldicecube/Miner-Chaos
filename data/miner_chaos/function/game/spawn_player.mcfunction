#随机向下传送（Y 范围 -60 至 -31）
summon armor_stand ~ ~ ~ {Tags:["miner_chaos.tp_temp"],NoGravity:1b,Invisible:1b,Marker:1b}
execute store result entity @e[tag=miner_chaos.tp_temp,limit=1] Pos[1] double 1 run random value -60..-31
tp @s @e[tag=miner_chaos.tp_temp,limit=1]
kill @e[tag=miner_chaos.tp_temp,limit=1]