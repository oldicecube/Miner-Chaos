#随机抽取事件（1~4，已移除怪物事件）
execute store result score miner_chaos.score.event_pick miner_chaos.board.count run random value 1..4
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 1 run function miner_chaos:game/event/glow
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 2 run function miner_chaos:game/event/tnt_random
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 3 run function miner_chaos:game/event/swap
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 4 run function miner_chaos:game/event/item_loss