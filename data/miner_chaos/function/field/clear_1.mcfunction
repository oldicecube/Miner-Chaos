#第1层：Y=-28 至 -39（12 层，31212 方块）—— 从上往下清空
execute in miner_chaos:miner_chaos run fill -25 -28 -25 25 -39 25 air

#延迟 1t 后继续清第2层
schedule function miner_chaos:field/clear_2 1t