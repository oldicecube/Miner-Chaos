#死亡处理
gamemode spectator @s
clear @s
effect clear @s minecraft:glowing
#游戏中的重生点设为观战平台（非 lobby）
execute in miner_chaos:miner_chaos run spawnpoint @s -33 -22 33
title @s times 5 60 10
title @s title {"text":"你已死亡","color":"red","bold":true}
title @s subtitle {"text":"可以继续观战","color":"gray"}
scoreboard players remove miner_chaos.count.players miner_chaos.board.count 1
scoreboard players reset @s miner_chaos.board.deathCount