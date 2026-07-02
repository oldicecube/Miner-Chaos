#确定性两遍扫描：第一遍统计非空槽位数，第二遍随机选第N个清除
#（as @s 上下文，每个玩家独立执行）

#=== 第一遍：统计非空槽位数量 ===
scoreboard players set miner_chaos.score.event_cnt miner_chaos.board.count 0
execute if items entity @s container.0 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.1 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.2 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.3 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.4 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.5 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.6 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.7 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.8 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.9 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.10 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.11 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.12 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.13 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.14 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.15 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.16 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.17 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.18 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.19 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.20 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.21 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.22 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.23 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.24 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.25 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.26 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.27 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.28 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.29 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.30 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.31 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.32 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.33 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.34 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1
execute if items entity @s container.35 * run scoreboard players add miner_chaos.score.event_cnt miner_chaos.board.count 1

#空背包 → 直接退出
execute if score miner_chaos.score.event_cnt miner_chaos.board.count matches 0 run return 0

#生成随机索引：random(0..10000) % cnt → 0..(cnt-1)
execute store result score miner_chaos.score.event_pick miner_chaos.board.count run random value 0..10000
scoreboard players operation miner_chaos.score.event_pick miner_chaos.board.count %= miner_chaos.score.event_cnt miner_chaos.board.count

#=== 第二遍：遍历槽位，递减 event_pick 以选中第 N 个非空槽位 ===
#关键：先标记再清除再return（避免清除后 if items 为 false 导致 return 跳过）
scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 0
#命中(event_pick==0且非空)→先标记→再清除→return；否则非空→event_pick--
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.0 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.0 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.0 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.1 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.1 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.1 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.2 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.2 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.2 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.3 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.3 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.3 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.4 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.4 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.4 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.5 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.5 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.5 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.6 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.6 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.6 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.7 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.7 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.7 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.8 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.8 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.8 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.9 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.9 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.9 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.10 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.10 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.10 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.11 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.11 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.11 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.12 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.12 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.12 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.13 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.13 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.13 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.14 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.14 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.14 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.15 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.15 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.15 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.16 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.16 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.16 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.17 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.17 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.17 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.18 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.18 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.18 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.19 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.19 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.19 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.20 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.20 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.20 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.21 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.21 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.21 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.22 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.22 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.22 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.23 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.23 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.23 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.24 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.24 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.24 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.25 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.25 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.25 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.26 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.26 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.26 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.27 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.27 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.27 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.28 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.28 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.28 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.29 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.29 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.29 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.30 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.30 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.30 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.31 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.31 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.31 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.32 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.32 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.32 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.33 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.33 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.33 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.34 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.34 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.34 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 if items entity @s container.35 * run scoreboard players set miner_chaos.score.event_flag miner_chaos.board.count 1
execute if score miner_chaos.score.event_pick miner_chaos.board.count matches 0 run item replace entity @s container.35 with air
execute if score miner_chaos.score.event_flag miner_chaos.board.count matches 1 run return 1
execute if items entity @s container.35 * run scoreboard players remove miner_chaos.score.event_pick miner_chaos.board.count 1

#兜底（理论上不会执行到这里）
return 0