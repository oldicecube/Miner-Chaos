#=== 惊天矿工团 Miner Chaos ===
#随机地图生成入口
#地图范围: -25,-32,-25 至 25,-63,25
#在 miner_chaos:miner_chaos 维度中生成

#清理可能正在运行的展示墙（避免共享 entity tag 干扰地图生成）
schedule clear miner_chaos:display_loop
execute in miner_chaos:miner_chaos run kill @e[tag=miner_chaos.as.randomBlocks]

execute in miner_chaos:miner_chaos run function miner_chaos:field/refill
