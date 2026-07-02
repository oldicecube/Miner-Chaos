#分散到随机 XZ，再随机 Y（-60~-33 避开屏障地板，均匀分布）
execute in miner_chaos:miner_chaos run spreadplayers 0 0 1 24 under -28 false @n[tag=miner_chaos.as.event_tnt]
execute in miner_chaos:miner_chaos store result entity @n[tag=miner_chaos.as.event_tnt] Pos[1] double 1 run random value -60..-33
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.event_tnt] run summon minecraft:tnt ~ ~ ~ {Fuse:40}
scoreboard players remove miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if score miner_chaos.score.event_cnt miner_chaos.board.count matches 1.. run function miner_chaos:game/event/tnt_random_loop
execute unless score miner_chaos.score.event_cnt miner_chaos.board.count matches 1.. run kill @e[tag=miner_chaos.as.event_tnt]