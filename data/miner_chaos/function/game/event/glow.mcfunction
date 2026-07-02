#事件：全体发光 10 秒
effect give @a[tag=miner_chaos] minecraft:glowing 10 0 true
tellraw @a[tag=miner_chaos] [{"text":"[事件] ⚠ 全体发光 10 秒！","color":"gold"}]
execute as @a[tag=miner_chaos] at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 1 0