#分散标记实体到随机 XZ 位置（maxRange=25 覆盖 -25~25 地图范围，under -28 控制堆叠上限）
execute in miner_chaos:miner_chaos run spreadplayers 0 0 1 25 under -28 false @n[tag=miner_chaos.as.randomBlocks]

#第一层随机：按 5:3 比例分配
execute store result score miner_chaos.score.rand miner_chaos.board.count run random value 0..7
execute if score miner_chaos.score.rand miner_chaos.board.count matches 0 run function miner_chaos:field/place_high
execute if score miner_chaos.score.rand miner_chaos.board.count matches 1 run function miner_chaos:field/place_high
execute if score miner_chaos.score.rand miner_chaos.board.count matches 2 run function miner_chaos:field/place_high
execute if score miner_chaos.score.rand miner_chaos.board.count matches 3 run function miner_chaos:field/place_high
execute if score miner_chaos.score.rand miner_chaos.board.count matches 4 run function miner_chaos:field/place_high
execute if score miner_chaos.score.rand miner_chaos.board.count matches 5 run function miner_chaos:field/place_other
execute if score miner_chaos.score.rand miner_chaos.board.count matches 6 run function miner_chaos:field/place_other
execute if score miner_chaos.score.rand miner_chaos.board.count matches 7 run function miner_chaos:field/place_other
