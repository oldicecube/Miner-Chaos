#进入大厅
effect clear @s
execute in miner_chaos:miner_chaos run tp @s -76 -57 -15 -90 0
execute in miner_chaos:miner_chaos run spawnpoint @s -76 -57 -15
tag @s add miner_chaos
title @s title {"text":"Miner Chaos","color":"gray","bold":true}
title @s subtitle {"text":"混沌矿工","color":"dark_purple"}
tellraw @s [{"text":"欢迎来到 ","color":"gold"},{"text":"Miner Chaos","color":"gray","bold":true},{"text":" 混沌矿工","color":"dark_purple"}]
tellraw @a[tag=miner_chaos] {"text":"本数据包由oldicecube制作，专用于GSMPS服务器，开源于Github (⚖MIT)","color":"red"}
tellraw @a[tag=miner_chaos] {"text":"©版权所有，未经允许，禁止挪用","color":"red"}