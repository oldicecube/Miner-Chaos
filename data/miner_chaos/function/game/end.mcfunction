#强行结束
tellraw @a[tag=miner_chaos] [{"text":"[Miner Chaos] 游戏被强制结束","color":"red"}]
execute if entity @a[tag=miner_chaos,gamemode=survival,limit=1] as @a[tag=miner_chaos,gamemode=survival,limit=1] run function miner_chaos:game/win
execute unless entity @a[tag=miner_chaos,gamemode=survival,limit=1] run function miner_chaos:game/end_reset