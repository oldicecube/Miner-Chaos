#退出小游戏
effect clear @s
clear @s
gamemode adventure @s
tag @s remove miner_chaos
execute in minecraft:overworld run tp @s 759 -33 -759
tellraw @s [{"text":"[Miner Chaos] 你已退出游戏","color":"gray"}]