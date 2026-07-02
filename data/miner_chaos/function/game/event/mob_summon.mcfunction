#随机召唤僵尸/骷髅(带弓)/蜘蛛（不消失，生成在玩家头顶1格）
execute store result score miner_chaos.score.event_pick miner_chaos.board.count run random value 0..2
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run summon minecraft:zombie ~ ~1 ~ {PersistenceRequired:1b}
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 1 run summon minecraft:skeleton ~ ~1 ~ {PersistenceRequired:1b,HandItems:[{id:"minecraft:bow",count:1},{}]}
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 2 run summon minecraft:spider ~ ~1 ~ {PersistenceRequired:1b}