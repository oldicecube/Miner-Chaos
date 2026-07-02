#放置前 3 块（由下及上，Z 递增，无悬空）
execute in miner_chaos:miner_chaos run function miner_chaos:display_place
execute in miner_chaos:miner_chaos run function miner_chaos:display_place
execute in miner_chaos:miner_chaos run function miner_chaos:display_place
#第 4 块：仅当 Z 未越界（≤3）时才放置
execute unless score miner_chaos.score.dz miner_chaos.board.count matches 4.. run function miner_chaos:display_place

#杀 TNT 实体、掉落物和脚手架实体
execute in miner_chaos:miner_chaos run kill @e[type=tnt]
execute in miner_chaos:miner_chaos run kill @e[type=item]
execute in miner_chaos:miner_chaos run kill @e[type=falling_block]

#Z 已推进 4 步；若 Z > 3 则重置 Z 并推进 Y
execute if score miner_chaos.score.dz miner_chaos.board.count matches 4.. run scoreboard players set miner_chaos.score.dz miner_chaos.board.count -31
execute if score miner_chaos.score.dz miner_chaos.board.count matches -31 run scoreboard players add miner_chaos.score.dy miner_chaos.board.count 1

#Y > -38 → 完成；否则继续
execute if score miner_chaos.score.dy miner_chaos.board.count matches -37.. run function miner_chaos:display_done
execute unless score miner_chaos.score.dy miner_chaos.board.count matches -37.. run schedule function miner_chaos:display_loop 1t