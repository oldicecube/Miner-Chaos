#根据速度选项设置本 tick 的批量数
#1=10s 极快, 2=20s 默认, 3=40s 中速, 4=80s 慢速
execute if score miner_chaos.option.speed miner_chaos.board.count matches 1 run scoreboard players set miner_chaos.score.batches miner_chaos.board.count 47
execute if score miner_chaos.option.speed miner_chaos.board.count matches 2 run scoreboard players set miner_chaos.score.batches miner_chaos.board.count 23
execute if score miner_chaos.option.speed miner_chaos.board.count matches 3 run scoreboard players set miner_chaos.score.batches miner_chaos.board.count 12
execute if score miner_chaos.option.speed miner_chaos.board.count matches 4 run scoreboard players set miner_chaos.score.batches miner_chaos.board.count 6
#兜底：未设置时默认 20 秒
execute unless score miner_chaos.option.speed miner_chaos.board.count matches 1..4 run scoreboard players set miner_chaos.score.batches miner_chaos.board.count 23
execute unless score miner_chaos.option.speed miner_chaos.board.count matches 1..4 run scoreboard players set miner_chaos.option.speed miner_chaos.board.count 2

function miner_chaos:field/refill_batch
