#重置计数器
scoreboard players set miner_chaos.score.tick miner_chaos.board.count 0
#清理掉落物和脚手架实体
execute in miner_chaos:miner_chaos run kill @e[type=item]
execute in miner_chaos:miner_chaos run kill @e[type=falling_block]
