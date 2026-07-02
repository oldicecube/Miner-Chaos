#初始化成功提醒
tellraw @a[tag=miner_chaos] {"text":"Miner Chaos 数据包初始化成功","color":"green"}
tellraw @a[tag=miner_chaos] {"text":"本数据包由oldicecube制作，专用于GSMPS服务器，开源于Github (⚖MIT)","color":"red"}
tellraw @a[tag=miner_chaos] {"text":"©版权所有，未经允许，禁止挪用","color":"red"}

#计分板
scoreboard objectives add miner_chaos.board.state dummy
scoreboard objectives add miner_chaos.board.count dummy
scoreboard objectives add miner_chaos.board.deathCount deathCount
scoreboard objectives add miner_chaos.board.sneakTime minecraft.custom:minecraft.sneak_time
scoreboard objectives add miner_chaos.board.timer_display dummy
scoreboard objectives modify miner_chaos.board.timer_display displayname {"text":"⏱ 游戏时间","color":"gold"}

#地图生成速度（1=10s 极快, 2=20s 默认, 3=40s 中速, 4=80s 慢速）
scoreboard players set miner_chaos.option.speed miner_chaos.board.count 2

#队伍
team add miner_chaos.team.red
team add miner_chaos.team.yellow
team add miner_chaos.team.blue
team add miner_chaos.team.green
team add miner_chaos.team.spectator

#初始状态
scoreboard players set miner_chaos.score.match miner_chaos.board.state 0

#隐形右键触发器（-71,-56~-54,-14 至 -16，向 X+ 移动 2 格，上下各扩 1 格）
execute in miner_chaos:miner_chaos run summon minecraft:interaction -71 -55 -15 {width:3.0f,height:3.0f,response:0b,Tags:["miner_chaos.display_trigger"]}