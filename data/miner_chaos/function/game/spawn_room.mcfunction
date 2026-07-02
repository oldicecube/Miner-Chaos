#在可见墙壁面心散布 17 资源（11石+3铁矿+1煤矿+2原木，不替换屏障）
#地板
execute positioned ~ ~-2 ~ unless block ~ ~ ~ barrier run setblock ~ ~ ~ stone
execute positioned ~-1 ~-2 ~ unless block ~ ~ ~ barrier run setblock ~ ~ ~ stone
execute positioned ~1 ~-2 ~ unless block ~ ~ ~ barrier run setblock ~ ~ ~ stone
execute positioned ~ ~-2 ~1 unless block ~ ~ ~ barrier run setblock ~ ~ ~ stone
#天花板
execute positioned ~ ~2 ~ unless block ~ ~ ~ barrier run setblock ~ ~ ~ stone
execute positioned ~-1 ~2 ~ unless block ~ ~ ~ barrier run setblock ~ ~ ~ stone
execute positioned ~1 ~2 ~ unless block ~ ~ ~ barrier run setblock ~ ~ ~ stone
#墙壁
execute positioned ~ ~ ~-2 unless block ~ ~ ~ barrier run setblock ~ ~ ~ stone
execute positioned ~-1 ~ ~-2 unless block ~ ~ ~ barrier run setblock ~ ~ ~ stone
execute positioned ~ ~-1 ~-2 unless block ~ ~ ~ barrier run setblock ~ ~ ~ stone
execute positioned ~ ~1 ~-2 unless block ~ ~ ~ barrier run setblock ~ ~ ~ iron_ore
execute positioned ~ ~ ~2 unless block ~ ~ ~ barrier run setblock ~ ~ ~ stone
execute positioned ~1 ~ ~2 unless block ~ ~ ~ barrier run setblock ~ ~ ~ iron_ore
execute positioned ~-2 ~ ~ unless block ~ ~ ~ barrier run setblock ~ ~ ~ iron_ore
execute positioned ~-2 ~-1 ~ unless block ~ ~ ~ barrier run setblock ~ ~ ~ coal_ore
execute positioned ~2 ~ ~ unless block ~ ~ ~ barrier run setblock ~ ~ ~ oak_log
execute positioned ~2 ~1 ~ unless block ~ ~ ~ barrier run setblock ~ ~ ~ oak_log