# Miner-Chaos
用于MC的可移植并有良好兼容性的小游戏数据包
本数据包是为GSMPS服务器开发的小游戏，挪用请著名出处

初次使用时请先在导入数据包后重启存档/服务器，并在进入数据包新创建的小游戏维度后，使用创世神mod/插件，粘贴附带的map.schem，使用//paste -o -a，避免坐标错乱

您需要手动修改数据包中/data/miner_chaos/game/quit.mcfunction中的退出传送坐标
您需要在入口处手动放置一个命令方块执行/execute as <选择器> run function miner_chaos:game/lobby来进入小游戏
