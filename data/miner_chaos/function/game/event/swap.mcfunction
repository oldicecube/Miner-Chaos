#事件：随机交换位置（根据存活玩家数执行对应次数）
tellraw @a[tag=miner_chaos] [{"text":"[事件] 🔄 所有人位置随机交换！","color":"aqua"}]
execute as @a[tag=miner_chaos] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0
#统计存活玩家数，至少2人才有意义
execute store result score miner_chaos.score.event_cnt miner_chaos.board.count if entity @a[tag=miner_chaos,gamemode=survival]
execute if score miner_chaos.score.event_cnt miner_chaos.board.count matches 2.. run function miner_chaos:game/event/swap_loop