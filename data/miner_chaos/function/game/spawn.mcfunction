#统计玩家数量并存储至计分板
execute store result score miner_chaos.count.players miner_chaos.board.count if entity @a[tag=miner_chaos]

#用 spreadplayers 随机分布玩家到屏障顶部（under -26 落在屏障上方，后续随机向下传送进入地图）
execute in miner_chaos:miner_chaos run spreadplayers 0 0 0 22 under -26 false @a[tag=miner_chaos]

#为每个玩家随机向下传送
execute as @a[tag=miner_chaos] in miner_chaos:miner_chaos at @s run function miner_chaos:game/spawn_player

#延迟 5t 后生成安全屋并切换冒险模式
schedule function miner_chaos:game/spawn_rooms_delayed 5t