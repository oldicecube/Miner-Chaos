#第2层：Y=-40 至 -51（12 层，31212 方块）
execute in miner_chaos:miner_chaos run fill -25 -40 -25 25 -51 25 air

#延迟 1t 后继续清第3层
schedule function miner_chaos:field/clear_3 1t