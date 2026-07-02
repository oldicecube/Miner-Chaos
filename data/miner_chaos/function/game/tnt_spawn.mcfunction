#在 (tx, -29, tz) 生成点燃的 TNT（引信 5 秒，小游戏维度）
execute in miner_chaos:miner_chaos run summon armor_stand 0 0 0 {Tags:["miner_chaos.tnt_pos"],NoGravity:1b,Invisible:1b,Marker:1b}
execute in miner_chaos:miner_chaos store result entity @e[tag=miner_chaos.tnt_pos,limit=1] Pos[0] double 1 run scoreboard players get miner_chaos.score.tx miner_chaos.board.count
execute in miner_chaos:miner_chaos store result entity @e[tag=miner_chaos.tnt_pos,limit=1] Pos[1] double 1 run random value -29..-28
execute in miner_chaos:miner_chaos store result entity @e[tag=miner_chaos.tnt_pos,limit=1] Pos[2] double 1 run scoreboard players get miner_chaos.score.tz miner_chaos.board.count
execute in miner_chaos:miner_chaos at @e[tag=miner_chaos.tnt_pos,limit=1] run summon minecraft:tnt ~ ~ ~ {fuse:100}
execute in miner_chaos:miner_chaos run kill @e[tag=miner_chaos.tnt_pos,limit=1]

#推进 Z
scoreboard players add miner_chaos.score.tz miner_chaos.board.count 4
execute if score miner_chaos.score.tz miner_chaos.board.count matches ..24 run schedule function miner_chaos:game/tnt_spawn 1t

#Z 溢出：重置 Z，推进 X
execute if score miner_chaos.score.tz miner_chaos.board.count matches 25.. run scoreboard players set miner_chaos.score.tz miner_chaos.board.count -24
execute if score miner_chaos.score.tz miner_chaos.board.count matches -24 run scoreboard players add miner_chaos.score.tx miner_chaos.board.count 4

#X 在范围内 → 继续下一行
execute if score miner_chaos.score.tz miner_chaos.board.count matches -24 if score miner_chaos.score.tx miner_chaos.board.count matches ..24 run function miner_chaos:game/tnt_spawn