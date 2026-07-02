#普通组（17 种，random 0..16）
execute store result score miner_chaos.score.rand miner_chaos.board.count run random value 0..16
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 0 run setblock ~ ~ ~ dirt
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 1 run setblock ~ ~ ~ gravel
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 2 run setblock ~ ~ ~ obsidian
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 3 run setblock ~ ~ ~ cobweb
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 4 run setblock ~ ~ ~ hay_block
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 5 run setblock ~ ~ ~ honey_block
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 6 run setblock ~ ~ ~ soul_sand
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 7 run setblock ~ ~ ~ blue_ice
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 8 run setblock ~ ~ ~ pointed_dripstone
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 9 run setblock ~ ~ ~ magma_block
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 10 run setblock ~ ~ ~ lapis_ore
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 11 run setblock ~ ~ ~ glass
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 12 run setblock ~ ~ ~ slime_block
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 13 run setblock ~ ~ ~ scaffolding
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 14 run setblock ~ ~ ~ bookshelf
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 15 run setblock ~ ~ ~ powder_snow
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 16 run setblock ~ ~ ~ sand