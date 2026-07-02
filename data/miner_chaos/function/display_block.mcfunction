#随机放置一个方块到展示墙（Y:-57..-38, Z:-31..3, X=-62）
execute in miner_chaos:miner_chaos store result entity @n[tag=miner_chaos.as.randomBlocks] Pos[1] double 1 run random value -57..-38
execute in miner_chaos:miner_chaos store result entity @n[tag=miner_chaos.as.randomBlocks] Pos[2] double 1 run random value -31..3

execute store result score miner_chaos.score.rand miner_chaos.board.count run random value 0..7
execute if score miner_chaos.score.rand miner_chaos.board.count matches 0 run function miner_chaos:field/place_high
execute if score miner_chaos.score.rand miner_chaos.board.count matches 1 run function miner_chaos:field/place_high
execute if score miner_chaos.score.rand miner_chaos.board.count matches 2 run function miner_chaos:field/place_high
execute if score miner_chaos.score.rand miner_chaos.board.count matches 3 run function miner_chaos:field/place_high
execute if score miner_chaos.score.rand miner_chaos.board.count matches 4 run function miner_chaos:field/place_high
execute if score miner_chaos.score.rand miner_chaos.board.count matches 5 run function miner_chaos:field/place_other
execute if score miner_chaos.score.rand miner_chaos.board.count matches 6 run function miner_chaos:field/place_other
execute if score miner_chaos.score.rand miner_chaos.board.count matches 7 run function miner_chaos:field/place_other