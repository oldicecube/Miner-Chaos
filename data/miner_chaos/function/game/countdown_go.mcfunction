title @a[tag=miner_chaos] title {"text":"游戏开始！","color":"dark_red","bold":true}
execute as @a[tag=miner_chaos] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 0
execute as @a[tag=miner_chaos] at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 1 0
gamemode survival @a[tag=miner_chaos]
#重置所有玩家死亡计数（防止上局残留导致开局秒死）
scoreboard players reset @a[tag=miner_chaos] miner_chaos.board.deathCount
#兜底重置计时器与事件阶段（防止强制结束后残留）
scoreboard players set miner_chaos.score.timer miner_chaos.board.count 0
scoreboard players set miner_chaos.score.tick20 miner_chaos.board.count 0
scoreboard players set miner_chaos.score.event_stage miner_chaos.board.count 0
scoreboard players set miner_chaos.display.time miner_chaos.board.timer_display 0
#设置游戏进行中状态
scoreboard players set miner_chaos.score.match miner_chaos.board.state 2
#确保事件开关为开启（兜底）
scoreboard players set miner_chaos.score.event_enabled miner_chaos.board.count 1
#游戏中的重生点设为观战平台（非 lobby）
execute in miner_chaos:miner_chaos run spawnpoint @a[tag=miner_chaos] -33 -22 33