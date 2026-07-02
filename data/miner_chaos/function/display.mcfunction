#撤销触发器成就（允许重复右键触发）
advancement revoke @s only miner_chaos:display_trigger

#清空展示区域
execute in miner_chaos:miner_chaos run fill -62 -38 3 -62 -57 -31 air

#由下及上计数器（Y 从 -57，Z 从 -31）
scoreboard players set miner_chaos.score.dy miner_chaos.board.count -57
scoreboard players set miner_chaos.score.dz miner_chaos.board.count -31

#召唤标记实体
execute in miner_chaos:miner_chaos run summon armor_stand -62 -57 -31 {Tags:["miner_chaos.as.randomBlocks"],Small:1b,NoGravity:1b,Invisible:1b,Marker:1b}

function miner_chaos:display_loop