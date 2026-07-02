#其他组（366 槽位加权）
execute store result score miner_chaos.score.rand miner_chaos.board.count run random value 0..365
#普通组（316 槽）
execute if score miner_chaos.score.rand miner_chaos.board.count matches 0..315 run function miner_chaos:field/place_normal
#稀有：金矿（18 槽）
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 316..333 run setblock ~ ~ ~ gold_ore
#稀有：钻石矿（18 槽）
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 334..351 run setblock ~ ~ ~ diamond_ore
#稀有：TNT（1 槽）
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 352 run setblock ~ ~ ~ tnt
#稀有：潜影盒（2 槽）
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 353..354 run setblock ~ ~ ~ shulker_box
#稀有：附魔台（4 槽）
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 355..358 run setblock ~ ~ ~ enchanting_table
#稀有：铁砧（4 槽，与附魔台一致）
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 359..362 run setblock ~ ~ ~ anvil
#稀有：钟（1 槽）
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 363 run setblock ~ ~ ~ bell
#稀有：音符盒（2 槽）
execute in miner_chaos:miner_chaos at @n[tag=miner_chaos.as.randomBlocks] if score miner_chaos.score.rand miner_chaos.board.count matches 364..365 run setblock ~ ~ ~ note_block