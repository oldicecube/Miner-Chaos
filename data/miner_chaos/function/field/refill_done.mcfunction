#清除标记实体
execute in miner_chaos:miner_chaos run kill @e[tag=miner_chaos.as.randomBlocks]

#填充完成后清理一次掉落物和脚手架实体
execute in miner_chaos:miner_chaos run kill @e[type=item]
execute in miner_chaos:miner_chaos run kill @e[type=falling_block]

#六面围屏障（顶面 Y=-27 覆盖填充至 Y=-27 的方块，无间隙）
execute in miner_chaos:miner_chaos run fill -26 -27 -26 26 -27 26 barrier
execute in miner_chaos:miner_chaos run fill -26 -27 -26 -26 -64 26 barrier
execute in miner_chaos:miner_chaos run fill 26 -27 -26 26 -64 26 barrier
execute in miner_chaos:miner_chaos run fill -26 -27 -26 26 -64 -26 barrier
execute in miner_chaos:miner_chaos run fill -26 -27 26 26 -64 26 barrier

#移除强制加载
execute in miner_chaos:miner_chaos run forceload remove all

#重置状态（解锁玩家位置）
scoreboard players set miner_chaos.score.match miner_chaos.board.state 0

tellraw @a[tag=miner_chaos] [{"text":"======================","color":"gold"},{"text":"\n    初始化完成","color":"green"},{"text":"\n======================","color":"gold"}]

#随机分布玩家并生成出生点房间
function miner_chaos:game/spawn
