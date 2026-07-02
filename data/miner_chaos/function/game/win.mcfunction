#宣布胜利者
title @a[tag=miner_chaos] title {"text":"游戏结束！","color":"gold","bold":true}
title @a[tag=miner_chaos] subtitle [{"text":"胜利者：","color":"white"},{"selector":"@s","color":"yellow","bold":true}]
tellraw @a[tag=miner_chaos] [{"text":"====================","color":"gold"},{"text":"\n  🏆 胜利者：","color":"white"},{"selector":"@s","color":"yellow","bold":true},{"text":"\n====================","color":"gold"}]
execute as @a[tag=miner_chaos] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
execute as @a[tag=miner_chaos] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0

#重置所有玩家
effect clear @a[tag=miner_chaos]
clear @a[tag=miner_chaos]
gamemode adventure @a[tag=miner_chaos]

#传送回大厅并设置重生点
execute in miner_chaos:miner_chaos run tp @a[tag=miner_chaos] -76 -57 -15 -90 0
execute in miner_chaos:miner_chaos run spawnpoint @a[tag=miner_chaos] -76 -57 -15

#清除所有残留定时任务并重置计分板
schedule clear miner_chaos:game/countdown_4
schedule clear miner_chaos:game/countdown_3
schedule clear miner_chaos:game/countdown_2
schedule clear miner_chaos:game/countdown_1
schedule clear miner_chaos:game/spawn_rooms_delayed
schedule clear miner_chaos:field/refill_loop
schedule clear miner_chaos:display_loop
function miner_chaos:game/reset_scores