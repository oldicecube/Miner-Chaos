#递归交换：每次随机挑两人交换位置
execute in miner_chaos:miner_chaos run tp @r[tag=miner_chaos,gamemode=survival] @r[tag=miner_chaos,gamemode=survival]
scoreboard players remove miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if score miner_chaos.score.event_cnt miner_chaos.board.count matches 1.. run function miner_chaos:game/event/swap_loop