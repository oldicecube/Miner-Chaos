#单次批量放置
function miner_chaos:field/batch
scoreboard players remove miner_chaos.score.batches miner_chaos.board.count 1
execute if score miner_chaos.score.batches miner_chaos.board.count matches 1.. run function miner_chaos:field/refill_batch

#所有批次完成后检测空位
execute unless score miner_chaos.score.batches miner_chaos.board.count matches 1.. run function miner_chaos:field/refill_check