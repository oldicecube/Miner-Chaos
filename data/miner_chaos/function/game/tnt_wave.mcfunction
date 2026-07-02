#循环清除 4 层黑曜石和附魔台（每波清理一组，9 组循环，从上到下）
scoreboard players add miner_chaos.score.tnt_layer miner_chaos.board.count 1
execute if score miner_chaos.score.tnt_layer miner_chaos.board.count matches 9.. run scoreboard players set miner_chaos.score.tnt_layer miner_chaos.board.count 0

#组0: Y=-31 至 -29
execute in miner_chaos:miner_chaos if score miner_chaos.score.tnt_layer miner_chaos.board.count matches 0 run fill -25 -29 -25 25 -31 25 air replace obsidian
execute in miner_chaos:miner_chaos if score miner_chaos.score.tnt_layer miner_chaos.board.count matches 0 run fill -25 -29 -25 25 -31 25 air replace enchanting_table
#组1: Y=-35 至 -32
execute in miner_chaos:miner_chaos if score miner_chaos.score.tnt_layer miner_chaos.board.count matches 1 run fill -25 -32 -25 25 -35 25 air replace obsidian
execute in miner_chaos:miner_chaos if score miner_chaos.score.tnt_layer miner_chaos.board.count matches 1 run fill -25 -32 -25 25 -35 25 air replace enchanting_table
#组2: Y=-39 至 -36
execute in miner_chaos:miner_chaos if score miner_chaos.score.tnt_layer miner_chaos.board.count matches 2 run fill -25 -36 -25 25 -39 25 air replace obsidian
execute in miner_chaos:miner_chaos if score miner_chaos.score.tnt_layer miner_chaos.board.count matches 2 run fill -25 -36 -25 25 -39 25 air replace enchanting_table
#组3: Y=-43 至 -40
execute in miner_chaos:miner_chaos if score miner_chaos.score.tnt_layer miner_chaos.board.count matches 3 run fill -25 -40 -25 25 -43 25 air replace obsidian
execute in miner_chaos:miner_chaos if score miner_chaos.score.tnt_layer miner_chaos.board.count matches 3 run fill -25 -40 -25 25 -43 25 air replace enchanting_table
#组4: Y=-47 至 -44
execute in miner_chaos:miner_chaos if score miner_chaos.score.tnt_layer miner_chaos.board.count matches 4 run fill -25 -44 -25 25 -47 25 air replace obsidian
execute in miner_chaos:miner_chaos if score miner_chaos.score.tnt_layer miner_chaos.board.count matches 4 run fill -25 -44 -25 25 -47 25 air replace enchanting_table
#组5: Y=-51 至 -48
execute in miner_chaos:miner_chaos if score miner_chaos.score.tnt_layer miner_chaos.board.count matches 5 run fill -25 -48 -25 25 -51 25 air replace obsidian
execute in miner_chaos:miner_chaos if score miner_chaos.score.tnt_layer miner_chaos.board.count matches 5 run fill -25 -48 -25 25 -51 25 air replace enchanting_table
#组6: Y=-55 至 -52
execute in miner_chaos:miner_chaos if score miner_chaos.score.tnt_layer miner_chaos.board.count matches 6 run fill -25 -52 -25 25 -55 25 air replace obsidian
execute in miner_chaos:miner_chaos if score miner_chaos.score.tnt_layer miner_chaos.board.count matches 6 run fill -25 -52 -25 25 -55 25 air replace enchanting_table
#组7: Y=-59 至 -56
execute in miner_chaos:miner_chaos if score miner_chaos.score.tnt_layer miner_chaos.board.count matches 7 run fill -25 -56 -25 25 -59 25 air replace obsidian
execute in miner_chaos:miner_chaos if score miner_chaos.score.tnt_layer miner_chaos.board.count matches 7 run fill -25 -56 -25 25 -59 25 air replace enchanting_table
#组8: Y=-63 至 -60
execute in miner_chaos:miner_chaos if score miner_chaos.score.tnt_layer miner_chaos.board.count matches 8 run fill -25 -60 -25 25 -63 25 air replace obsidian
execute in miner_chaos:miner_chaos if score miner_chaos.score.tnt_layer miner_chaos.board.count matches 8 run fill -25 -60 -25 25 -63 25 air replace enchanting_table

#初始化 TNT 网格计数器（-24 到 24，步长 4，Y=-29）
scoreboard players set miner_chaos.score.tx miner_chaos.board.count -24
scoreboard players set miner_chaos.score.tz miner_chaos.board.count -24
function miner_chaos:game/tnt_spawn