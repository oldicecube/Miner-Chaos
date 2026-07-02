#事件：每人生成 1 只怪物
tellraw @a[tag=miner_chaos] [{"text":"[事件] 👾 怪物来袭！","color":"dark_red"}]
execute as @a[tag=miner_chaos] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.5 0
execute as @a[tag=miner_chaos,gamemode=survival] at @s run function miner_chaos:game/event/mob_summon