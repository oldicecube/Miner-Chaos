#将实体移到当前 (dy, dz) 位置
execute store result entity @n[tag=miner_chaos.as.randomBlocks] Pos[1] double 1 run scoreboard players get miner_chaos.score.dy miner_chaos.board.count
execute store result entity @n[tag=miner_chaos.as.randomBlocks] Pos[2] double 1 run scoreboard players get miner_chaos.score.dz miner_chaos.board.count

#使用与地图相同的概率逻辑
execute store result score miner_chaos.score.rand miner_chaos.board.count run random value 0..7
execute if score miner_chaos.score.rand miner_chaos.board.count matches 0..4 run function miner_chaos:field/place_high
execute if score miner_chaos.score.rand miner_chaos.board.count matches 5..7 run function miner_chaos:field/place_other

#推进 Z
scoreboard players add miner_chaos.score.dz miner_chaos.board.count 1