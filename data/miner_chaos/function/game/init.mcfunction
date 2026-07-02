#=== 游戏初始化 ===
#阻止进行中的游戏循环并清除所有残留定时任务
scoreboard players set miner_chaos.score.match miner_chaos.board.state 0
schedule clear miner_chaos:game/countdown_4
schedule clear miner_chaos:game/countdown_3
schedule clear miner_chaos:game/countdown_2
schedule clear miner_chaos:game/countdown_1
schedule clear miner_chaos:game/spawn_rooms_delayed
schedule clear miner_chaos:field/clear_1
schedule clear miner_chaos:field/clear_2
schedule clear miner_chaos:field/clear_3
schedule clear miner_chaos:field/clear_done
schedule clear miner_chaos:field/refill_loop
schedule clear miner_chaos:display_loop
function miner_chaos:game/reset_scores

#恢复血量和饱食度至上限
effect give @a[tag=miner_chaos] minecraft:instant_health 1 4 true
effect give @a[tag=miner_chaos] minecraft:saturation 1 0 true

#重置所有计时器和阶段标记（再次确保）
scoreboard players set miner_chaos.score.timer miner_chaos.board.count 0
scoreboard players set miner_chaos.score.tnt_timer miner_chaos.board.count 0
scoreboard players set miner_chaos.score.flag_glow miner_chaos.board.count 0
scoreboard players set miner_chaos.score.flag_tnt miner_chaos.board.count 0
scoreboard players set miner_chaos.score.flag_win miner_chaos.board.count 0
scoreboard players set miner_chaos.score.win_delay miner_chaos.board.count 0
scoreboard players set miner_chaos.score.tnt_layer miner_chaos.board.count 0

#清除发光效果
effect clear @a[tag=miner_chaos] minecraft:glowing

#切换旁观模式
gamemode spectator @a[tag=miner_chaos]

#夜视效果（无限时长，无粒子）
effect give @a[tag=miner_chaos] minecraft:night_vision infinite 0 true

#设置复活点
execute in miner_chaos:miner_chaos run spawnpoint @a[tag=miner_chaos] -33 -22 33

#固定视角和位置（朝向 X+ Y- Z- 各偏移 45°，在小游戏维度中执行）
execute in miner_chaos:miner_chaos run tp @a[tag=miner_chaos] -33 -22 33 -135 45

#设置状态为准备中（锁定玩家位置）
scoreboard players set miner_chaos.score.match miner_chaos.board.state 1
#初始化事件开关为默认开启（游戏中可手动切换）
scoreboard players set miner_chaos.score.event_enabled miner_chaos.board.count 1

tellraw @a[tag=miner_chaos] [{"text":"======================","color":"gold"},{"text":"\n    地图初始化中...","color":"yellow"},{"text":"\n======================","color":"gold"}]

#开始地图生成
function miner_chaos:map