#延迟后为所有玩家生成房间
execute as @a[tag=miner_chaos] in miner_chaos:miner_chaos at @s run function miner_chaos:game/spawn_room_build

#启动倒计时（房间生成后等 1 秒避免卡顿）
schedule function miner_chaos:game/countdown_4 1s