#无存活者时直接重置
effect clear @a[tag=miner_chaos]
clear @a[tag=miner_chaos]
gamemode adventure @a[tag=miner_chaos]
#传送回大厅并设置重生点
execute in miner_chaos:miner_chaos run tp @a[tag=miner_chaos] -76 -57 -15 -90 0
execute in miner_chaos:miner_chaos run spawnpoint @a[tag=miner_chaos] -76 -57 -15

#清除所有残留定时任务并重置计分板
schedule clear miner_chaos:game/countdown_4
schedule clear miner_chaos:game/countdown_3
schedule clear miner_chaos:game/countdown_2
schedule clear miner_chaos:game/countdown_1
schedule clear miner_chaos:game/spawn_rooms_delayed
schedule clear miner_chaos:field/refill_loop
schedule clear miner_chaos:display_loop
function miner_chaos:game/reset_scores