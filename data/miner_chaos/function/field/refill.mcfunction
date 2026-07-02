#强制加载区块（区块坐标 -2 到 1，共 16 个区块）
execute in miner_chaos:miner_chaos run forceload add -2 -2 1 1

#清理地图内残留怪物
execute in miner_chaos:miner_chaos run kill @e[type=minecraft:zombie]
execute in miner_chaos:miner_chaos run kill @e[type=minecraft:skeleton]
execute in miner_chaos:miner_chaos run kill @e[type=minecraft:spider]
execute in miner_chaos:miner_chaos run kill @e[type=minecraft:creeper]

#延迟 1t 等待区块加载完成后开始清空
schedule function miner_chaos:field/clear_1 1t
