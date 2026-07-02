#第3层：Y=-52 至 -63（12 层，31212 方块）
execute in miner_chaos:miner_chaos run fill -25 -52 -25 25 -63 25 air

#铺屏障地板（Y=-64，供 spreadplayers 使用，填充完毕后清除）
execute in miner_chaos:miner_chaos run fill -25 -64 -25 25 -64 25 barrier

#等待 10t（0.5 秒）后开始填充
schedule function miner_chaos:field/clear_done 10t