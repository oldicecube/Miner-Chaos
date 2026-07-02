#Actionbar 事件倒计时（每秒更新，按当前时间分区间展示）
#区间 0~119s → 下一事件 @120s（随机事件）
execute if score miner_chaos.display.time miner_chaos.board.timer_display matches 0..119 run scoreboard players set miner_chaos.score.remaining miner_chaos.board.count 120
execute if score miner_chaos.display.time miner_chaos.board.timer_display matches 0..119 run scoreboard players operation miner_chaos.score.remaining miner_chaos.board.count -= miner_chaos.display.time miner_chaos.board.timer_display
execute if score miner_chaos.display.time miner_chaos.board.timer_display matches 0..119 run title @a[tag=miner_chaos] actionbar [{"text":"⏱ ","color":"gold"},{"score":{"name":"miner_chaos.display.time","objective":"miner_chaos.board.timer_display"},"color":"white"},{"text":"s | 🎲 随机事件: ","color":"yellow"},{"score":{"name":"miner_chaos.score.remaining","objective":"miner_chaos.board.count"},"color":"red"},{"text":"s","color":"gray"}]

#区间 120~239s → 下一事件 @240s（随机事件）
execute if score miner_chaos.display.time miner_chaos.board.timer_display matches 120..239 run scoreboard players set miner_chaos.score.remaining miner_chaos.board.count 240
execute if score miner_chaos.display.time miner_chaos.board.timer_display matches 120..239 run scoreboard players operation miner_chaos.score.remaining miner_chaos.board.count -= miner_chaos.display.time miner_chaos.board.timer_display
execute if score miner_chaos.display.time miner_chaos.board.timer_display matches 120..239 run title @a[tag=miner_chaos] actionbar [{"text":"⏱ ","color":"gold"},{"score":{"name":"miner_chaos.display.time","objective":"miner_chaos.board.timer_display"},"color":"white"},{"text":"s | 🎲 随机事件: ","color":"yellow"},{"score":{"name":"miner_chaos.score.remaining","objective":"miner_chaos.board.count"},"color":"red"},{"text":"s","color":"gray"}]

#区间 240~359s → 下一事件 @360s（随机事件）
execute if score miner_chaos.display.time miner_chaos.board.timer_display matches 240..359 run scoreboard players set miner_chaos.score.remaining miner_chaos.board.count 360
execute if score miner_chaos.display.time miner_chaos.board.timer_display matches 240..359 run scoreboard players operation miner_chaos.score.remaining miner_chaos.board.count -= miner_chaos.display.time miner_chaos.board.timer_display
execute if score miner_chaos.display.time miner_chaos.board.timer_display matches 240..359 run title @a[tag=miner_chaos] actionbar [{"text":"⏱ ","color":"gold"},{"score":{"name":"miner_chaos.display.time","objective":"miner_chaos.board.timer_display"},"color":"white"},{"text":"s | 🎲 随机事件: ","color":"yellow"},{"score":{"name":"miner_chaos.score.remaining","objective":"miner_chaos.board.count"},"color":"red"},{"text":"s","color":"gray"}]

#区间 360~479s → 下一事件 @480s（随机事件）
execute if score miner_chaos.display.time miner_chaos.board.timer_display matches 360..479 run scoreboard players set miner_chaos.score.remaining miner_chaos.board.count 480
execute if score miner_chaos.display.time miner_chaos.board.timer_display matches 360..479 run scoreboard players operation miner_chaos.score.remaining miner_chaos.board.count -= miner_chaos.display.time miner_chaos.board.timer_display
execute if score miner_chaos.display.time miner_chaos.board.timer_display matches 360..479 run title @a[tag=miner_chaos] actionbar [{"text":"⏱ ","color":"gold"},{"score":{"name":"miner_chaos.display.time","objective":"miner_chaos.board.timer_display"},"color":"white"},{"text":"s | 🎲 随机事件: ","color":"yellow"},{"score":{"name":"miner_chaos.score.remaining","objective":"miner_chaos.board.count"},"color":"red"},{"text":"s","color":"gray"}]

#区间 480~599s → 下一事件 @600s（全体发光，固定）
execute if score miner_chaos.display.time miner_chaos.board.timer_display matches 480..599 run scoreboard players set miner_chaos.score.remaining miner_chaos.board.count 600
execute if score miner_chaos.display.time miner_chaos.board.timer_display matches 480..599 run scoreboard players operation miner_chaos.score.remaining miner_chaos.board.count -= miner_chaos.display.time miner_chaos.board.timer_display
execute if score miner_chaos.display.time miner_chaos.board.timer_display matches 480..599 run title @a[tag=miner_chaos] actionbar [{"text":"⏱ ","color":"gold"},{"score":{"name":"miner_chaos.display.time","objective":"miner_chaos.board.timer_display"},"color":"white"},{"text":"s | ⚠ 全体发光: ","color":"gold"},{"score":{"name":"miner_chaos.score.remaining","objective":"miner_chaos.board.count"},"color":"red"},{"text":"s","color":"gray"}]

#区间 600~719s → 下一事件 @720s（随机事件）
execute if score miner_chaos.display.time miner_chaos.board.timer_display matches 600..719 run scoreboard players set miner_chaos.score.remaining miner_chaos.board.count 720
execute if score miner_chaos.display.time miner_chaos.board.timer_display matches 600..719 run scoreboard players operation miner_chaos.score.remaining miner_chaos.board.count -= miner_chaos.display.time miner_chaos.board.timer_display
execute if score miner_chaos.display.time miner_chaos.board.timer_display matches 600..719 run title @a[tag=miner_chaos] actionbar [{"text":"⏱ ","color":"gold"},{"score":{"name":"miner_chaos.display.time","objective":"miner_chaos.board.timer_display"},"color":"white"},{"text":"s | 🎲 随机事件: ","color":"yellow"},{"score":{"name":"miner_chaos.score.remaining","objective":"miner_chaos.board.count"},"color":"red"},{"text":"s","color":"gray"}]

#区间 720~839s → 下一事件 @840s（随机事件）
execute if score miner_chaos.display.time miner_chaos.board.timer_display matches 720..839 run scoreboard players set miner_chaos.score.remaining miner_chaos.board.count 840
execute if score miner_chaos.display.time miner_chaos.board.timer_display matches 720..839 run scoreboard players operation miner_chaos.score.remaining miner_chaos.board.count -= miner_chaos.display.time miner_chaos.board.timer_display
execute if score miner_chaos.display.time miner_chaos.board.timer_display matches 720..839 run title @a[tag=miner_chaos] actionbar [{"text":"⏱ ","color":"gold"},{"score":{"name":"miner_chaos.display.time","objective":"miner_chaos.board.timer_display"},"color":"white"},{"text":"s | 🎲 随机事件: ","color":"yellow"},{"score":{"name":"miner_chaos.score.remaining","objective":"miner_chaos.board.count"},"color":"red"},{"text":"s","color":"gray"}]

#区间 840~899s → 下一事件 @900s（TNT决战，固定）
execute if score miner_chaos.display.time miner_chaos.board.timer_display matches 840..899 run scoreboard players set miner_chaos.score.remaining miner_chaos.board.count 900
execute if score miner_chaos.display.time miner_chaos.board.timer_display matches 840..899 run scoreboard players operation miner_chaos.score.remaining miner_chaos.board.count -= miner_chaos.display.time miner_chaos.board.timer_display
execute if score miner_chaos.display.time miner_chaos.board.timer_display matches 840..899 run title @a[tag=miner_chaos] actionbar [{"text":"⏱ ","color":"gold"},{"score":{"name":"miner_chaos.display.time","objective":"miner_chaos.board.timer_display"},"color":"white"},{"text":"s | ☠ TNT决战: ","color":"dark_red"},{"score":{"name":"miner_chaos.score.remaining","objective":"miner_chaos.board.count"},"color":"red"},{"text":"s","color":"gray"}]

#区间 900s+ → 无更多事件
execute if score miner_chaos.display.time miner_chaos.board.timer_display matches 900.. run title @a[tag=miner_chaos] actionbar [{"text":"⏱ ","color":"gold"},{"score":{"name":"miner_chaos.display.time","objective":"miner_chaos.board.timer_display"},"color":"white"},{"text":"s","color":"gray"}]