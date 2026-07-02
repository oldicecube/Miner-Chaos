title @a[tag=miner_chaos] title {"text":"2","color":"gold","bold":true}
execute as @a[tag=miner_chaos] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
schedule function miner_chaos:game/countdown_1 30t