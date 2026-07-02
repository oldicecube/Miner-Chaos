#高概率组：矿物+木头+石头（共 7 种，random 0..6）
execute store result score miner_chaos.score.rand miner_chaos.board.count run random value 0..6
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 0 run setblock ~ ~ ~ stone
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 1 run setblock ~ ~ ~ deepslate
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 2 run setblock ~ ~ ~ oak_log
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 3 run setblock ~ ~ ~ coal_ore
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 4 run setblock ~ ~ ~ iron_ore
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 5 run setblock ~ ~ ~ lapis_ore
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 6 run setblock ~ ~ ~ nether_quartz_ore
