#> makigun:bullet/handgun/teleport
#> 銃の弾を進める

#> ブロックの当たり判定を検知する
    scoreboard players set .itt raycast 20
    execute if block ~ ~ ~ #raycast:partial run function raycast:partial

    execute if score .itt raycast matches 0 run scoreboard players set @s makigun.bullet 0

#> パーティクル
    particle crit ~ ~0.03 ~ 0 0 0 0 1 force @a

#> 弾丸を前に進める
    scoreboard players remove @s makigun.bullet 1
    execute as @s at @s run tp ^ ^ ^0.25

#> ヒット判定
    execute positioned ~-0.125 ~-0.125 ~-0.125 as @e[type=villager,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run say HIT
    execute positioned ~-0.125 ~-0.125 ~-0.125 as @e[type=villager,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] anchored eyes positioned ^ ^ ^ positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=marker,tag=bullet.handgun,dx=0] run say 頭HIT
    execute positioned ~-0.125 ~-0.125 ~-0.125 as @e[type=villager,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] at @s run kill @e[type=marker,tag=bullet.handgun,limit=1,sort=nearest]

#> 弾削除
    execute if entity @s[scores={makigun.bullet=..0}] run kill @s

#> 再起
    execute if entity @s[scores={makigun.bullet=1..}] if block ~ ~ ~ #raycast:air at @s run function makigun:bullet/handgun/teleport