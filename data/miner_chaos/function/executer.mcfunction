#准备中：持续锁定玩家位置和视角（小游戏维度）
execute in miner_chaos:miner_chaos if score miner_chaos.score.match miner_chaos.board.state matches 1 run tp @a[tag=miner_chaos] -33 -22 33 -135 45

#游戏计时器（仅游戏进行中，state=2）
execute if score miner_chaos.score.match miner_chaos.board.state matches 2 run scoreboard players add miner_chaos.score.timer miner_chaos.board.count 1

#游戏时间计时器（每秒更新，通过 actionbar 仅对参赛玩家展示）
execute if score miner_chaos.score.match miner_chaos.board.state matches 2 run scoreboard players add miner_chaos.score.tick20 miner_chaos.board.count 1
execute if score miner_chaos.score.tick20 miner_chaos.board.count matches 20.. run scoreboard players set miner_chaos.score.tick20 miner_chaos.board.count 0
execute if score miner_chaos.score.match miner_chaos.board.state matches 2 if score miner_chaos.score.tick20 miner_chaos.board.count matches 0 run scoreboard players add miner_chaos.display.time miner_chaos.board.timer_display 1
execute if score miner_chaos.score.match miner_chaos.board.state matches 2 if score miner_chaos.score.tick20 miner_chaos.board.count matches 0 run function miner_chaos:game/event/actionbar

#TNT 波次计时器（15 分钟后开始，每 10 秒一轮）
execute if score miner_chaos.score.match miner_chaos.board.state matches 2 if score miner_chaos.score.timer miner_chaos.board.count matches 18000.. run scoreboard players add miner_chaos.score.tnt_timer miner_chaos.board.count 1
execute if score miner_chaos.score.tnt_timer miner_chaos.board.count matches 200.. run scoreboard players set miner_chaos.score.tnt_timer miner_chaos.board.count 0

#10 分钟：全员发光 + 阶段提示（用 flag 防加速跳帧漏触发）
execute if score miner_chaos.score.timer miner_chaos.board.count matches 12000.. unless score miner_chaos.score.flag_glow miner_chaos.board.count matches 1 run effect give @a[tag=miner_chaos] minecraft:glowing infinite 0 true
execute if score miner_chaos.score.timer miner_chaos.board.count matches 12000.. unless score miner_chaos.score.flag_glow miner_chaos.board.count matches 1 run tellraw @a[tag=miner_chaos] [{"text":"====================","color":"red"},{"text":"\n   ⚠ 全体发光！相互可见 ⚠","color":"gold","bold":true},{"text":"\n====================","color":"red"}]
execute if score miner_chaos.score.timer miner_chaos.board.count matches 12000.. unless score miner_chaos.score.flag_glow miner_chaos.board.count matches 1 as @a[tag=miner_chaos] at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 1 0
execute if score miner_chaos.score.timer miner_chaos.board.count matches 12000.. unless score miner_chaos.score.flag_glow miner_chaos.board.count matches 1 run scoreboard players set miner_chaos.score.flag_glow miner_chaos.board.count 1

#15 分钟后每 200 tick 触发 TNT 波次
execute if score miner_chaos.score.timer miner_chaos.board.count matches 18000.. unless score miner_chaos.score.flag_tnt miner_chaos.board.count matches 1 run tellraw @a[tag=miner_chaos] [{"text":"====================","color":"dark_red"},{"text":"\n  ☠ TNT 轰炸开始！☠","color":"red","bold":true},{"text":"\n====================","color":"dark_red"}]
execute if score miner_chaos.score.timer miner_chaos.board.count matches 18000.. unless score miner_chaos.score.flag_tnt miner_chaos.board.count matches 1 as @a[tag=miner_chaos] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 0
execute if score miner_chaos.score.timer miner_chaos.board.count matches 18000.. unless score miner_chaos.score.flag_tnt miner_chaos.board.count matches 1 run scoreboard players set miner_chaos.score.flag_tnt miner_chaos.board.count 1
execute if score miner_chaos.score.timer miner_chaos.board.count matches 18000.. if score miner_chaos.score.tnt_timer miner_chaos.board.count matches 0 run function miner_chaos:game/tnt_wave

#随机事件触发（stage 计数器防漏触发；15 分钟后不再触发；受 event_enabled 开关控制）
execute if score miner_chaos.score.match miner_chaos.board.state matches 2 if score miner_chaos.score.event_enabled miner_chaos.board.count matches 1 if score miner_chaos.score.timer miner_chaos.board.count matches 2400.. if score miner_chaos.score.event_stage miner_chaos.board.count matches 0 run function miner_chaos:game/event/trigger
execute if score miner_chaos.score.match miner_chaos.board.state matches 2 if score miner_chaos.score.event_enabled miner_chaos.board.count matches 1 if score miner_chaos.score.timer miner_chaos.board.count matches 2400.. if score miner_chaos.score.event_stage miner_chaos.board.count matches 0 run scoreboard players set miner_chaos.score.event_stage miner_chaos.board.count 1
execute if score miner_chaos.score.match miner_chaos.board.state matches 2 if score miner_chaos.score.event_enabled miner_chaos.board.count matches 1 if score miner_chaos.score.timer miner_chaos.board.count matches 4800.. if score miner_chaos.score.event_stage miner_chaos.board.count matches 1 run function miner_chaos:game/event/trigger
execute if score miner_chaos.score.match miner_chaos.board.state matches 2 if score miner_chaos.score.event_enabled miner_chaos.board.count matches 1 if score miner_chaos.score.timer miner_chaos.board.count matches 4800.. if score miner_chaos.score.event_stage miner_chaos.board.count matches 1 run scoreboard players set miner_chaos.score.event_stage miner_chaos.board.count 2
execute if score miner_chaos.score.match miner_chaos.board.state matches 2 if score miner_chaos.score.event_enabled miner_chaos.board.count matches 1 if score miner_chaos.score.timer miner_chaos.board.count matches 7200.. if score miner_chaos.score.event_stage miner_chaos.board.count matches 2 run function miner_chaos:game/event/trigger
execute if score miner_chaos.score.match miner_chaos.board.state matches 2 if score miner_chaos.score.event_enabled miner_chaos.board.count matches 1 if score miner_chaos.score.timer miner_chaos.board.count matches 7200.. if score miner_chaos.score.event_stage miner_chaos.board.count matches 2 run scoreboard players set miner_chaos.score.event_stage miner_chaos.board.count 3
execute if score miner_chaos.score.match miner_chaos.board.state matches 2 if score miner_chaos.score.event_enabled miner_chaos.board.count matches 1 if score miner_chaos.score.timer miner_chaos.board.count matches 9600.. if score miner_chaos.score.event_stage miner_chaos.board.count matches 3 run function miner_chaos:game/event/trigger
execute if score miner_chaos.score.match miner_chaos.board.state matches 2 if score miner_chaos.score.event_enabled miner_chaos.board.count matches 1 if score miner_chaos.score.timer miner_chaos.board.count matches 9600.. if score miner_chaos.score.event_stage miner_chaos.board.count matches 3 run scoreboard players set miner_chaos.score.event_stage miner_chaos.board.count 4
execute if score miner_chaos.score.match miner_chaos.board.state matches 2 if score miner_chaos.score.event_enabled miner_chaos.board.count matches 1 if score miner_chaos.score.timer miner_chaos.board.count matches 14400.. if score miner_chaos.score.event_stage miner_chaos.board.count matches 4 run function miner_chaos:game/event/trigger
execute if score miner_chaos.score.match miner_chaos.board.state matches 2 if score miner_chaos.score.event_enabled miner_chaos.board.count matches 1 if score miner_chaos.score.timer miner_chaos.board.count matches 14400.. if score miner_chaos.score.event_stage miner_chaos.board.count matches 4 run scoreboard players set miner_chaos.score.event_stage miner_chaos.board.count 5
execute if score miner_chaos.score.match miner_chaos.board.state matches 2 if score miner_chaos.score.event_enabled miner_chaos.board.count matches 1 if score miner_chaos.score.timer miner_chaos.board.count matches 16800.. if score miner_chaos.score.event_stage miner_chaos.board.count matches 5 run function miner_chaos:game/event/trigger
execute if score miner_chaos.score.match miner_chaos.board.state matches 2 if score miner_chaos.score.event_enabled miner_chaos.board.count matches 1 if score miner_chaos.score.timer miner_chaos.board.count matches 16800.. if score miner_chaos.score.event_stage miner_chaos.board.count matches 5 run scoreboard players set miner_chaos.score.event_stage miner_chaos.board.count 6

#玩家死亡处理（仅游戏进行中，state=2）
execute if score miner_chaos.score.match miner_chaos.board.state matches 2 as @a[tag=miner_chaos,scores={miner_chaos.board.deathCount=1..}] run function miner_chaos:game/death

#边界围栏（半径 70，针对旁观玩家，超出传送回中心）
execute in miner_chaos:miner_chaos positioned 0 -47 0 run tp @a[tag=miner_chaos,gamemode=spectator,distance=70..] 0 -30 0

#胜利检测：仅剩 1 人时 10 刻后宣布胜利（仅游戏进行中，state=2）
execute if score miner_chaos.score.match miner_chaos.board.state matches 2 if score miner_chaos.count.players miner_chaos.board.count matches ..1 unless score miner_chaos.score.flag_win miner_chaos.board.count matches 1 run scoreboard players set miner_chaos.score.flag_win miner_chaos.board.count 1
execute if score miner_chaos.score.flag_win miner_chaos.board.count matches 1 run scoreboard players add miner_chaos.score.win_delay miner_chaos.board.count 1
execute if score miner_chaos.score.win_delay miner_chaos.board.count matches 10.. as @a[tag=miner_chaos,gamemode=survival,limit=1] run function miner_chaos:game/win