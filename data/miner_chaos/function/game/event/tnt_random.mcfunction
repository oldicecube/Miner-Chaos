#事件：随机 5 个 TNT（Y 坐标随机化，均匀分布）
tellraw @a[tag=miner_chaos] [{"text":"[事件] 💥 随机引爆 5 个 TNT！","color":"red"}]
execute as @a[tag=miner_chaos] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 0
#召唤临时标记实体
execute in miner_chaos:miner_chaos run summon armor_stand 0 -47 0 {Tags:["miner_chaos.as.event_tnt"],Small:1b,NoGravity:1b,Invisible:1b,Marker:1b}
scoreboard players set miner_chaos.score.event_cnt miner_chaos.board.count 5
function miner_chaos:game/event/tnt_random_loop