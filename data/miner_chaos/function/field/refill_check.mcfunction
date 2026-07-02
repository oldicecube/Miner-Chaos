#检测是否还有空位：成功=继续，失败=完全填满
execute in miner_chaos:miner_chaos store success score miner_chaos.score.air miner_chaos.board.count run spreadplayers 0 0 1 25 under -28 false @n[tag=miner_chaos.as.randomBlocks]

#每 20 tick（1 秒）清理一次掉落物
scoreboard players add miner_chaos.score.tick miner_chaos.board.count 1
execute if score miner_chaos.score.tick miner_chaos.board.count matches 20.. run function miner_chaos:field/cleanup

execute if score miner_chaos.score.air miner_chaos.board.count matches 1 run schedule function miner_chaos:field/refill_loop 1t
execute if score miner_chaos.score.air miner_chaos.board.count matches 0 run function miner_chaos:field/refill_done