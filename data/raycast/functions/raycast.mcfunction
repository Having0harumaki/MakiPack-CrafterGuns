particle crit ~ ~ ~ 0 0 0 0 1

execute if block ~ ~ ~ #raycast:partial run function raycast:partial

scoreboard players remove .itt raycast 1

execute if score .itt raycast matches 1.. if block ~ ~ ~ #raycast:air positioned ^ ^ ^0.25 run function raycast:raycast
