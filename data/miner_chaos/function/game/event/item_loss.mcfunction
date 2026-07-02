#事件：每人随机丢失一件物品栏物品
tellraw @a[tag=miner_chaos] [{"text":"[事件] 🎒 每人随机丢失一件物品！","color":"dark_purple"}]
execute as @a[tag=miner_chaos] at @s run playsound minecraft:entity.item.break master @s ~ ~ ~ 1 0
execute as @a[tag=miner_chaos] at @s run function miner_chaos:game/event/item_loss_slot