#事件开关可随时切换，但仅在游戏进行中（state=2）实际生效
scoreboard players operation miner_chaos.score.temp miner_chaos.board.count = miner_chaos.score.event_enabled miner_chaos.board.count
execute if score miner_chaos.score.temp miner_chaos.board.count matches 0 run function miner_chaos:game/toggle_on
execute if score miner_chaos.score.temp miner_chaos.board.count matches 1 run function miner_chaos:game/toggle_off