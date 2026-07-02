#清空完成后干掉区域内所有掉落物、TNT和脚手架实体
execute in miner_chaos:miner_chaos run kill @e[type=item]
execute in miner_chaos:miner_chaos run kill @e[type=tnt]
execute in miner_chaos:miner_chaos run kill @e[type=falling_block]

#重置计数器
scoreboard players set miner_chaos.score.block miner_chaos.board.count 0

#召唤标记实体
execute in miner_chaos:miner_chaos run summon armor_stand 0 -47 0 {Tags:["miner_chaos.as.randomBlocks"],Small:1b,NoGravity:1b,Invisible:1b,Marker:1b}

#开始填充循环
function miner_chaos:field/refill_loop