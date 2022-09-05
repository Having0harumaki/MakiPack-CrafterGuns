#> makigun:bullet/handgun/teleport
#> 銃の弾を進める

#> ブロックの当たり判定を検知する
    execute if block ~ ~ ~ #raycast:partial run function raycast:partial
    execute unless block ~ ~ ~ #raycast:air run scoreboard players set @s makigun.bullet 0
    execute if score .itt raycast matches 0 run scoreboard players set @s makigun.bullet 0

#> パーティクル
    particle crit ~ ~1.5 ~ 0 0 0 0 5 force @a

#> 弾丸を前に進める
    scoreboard players remove @s makigun.bullet 1
    tp ^ ^ ^0.25

#> 弾削除
    execute if entity @s[scores={makigun.bullet=..0}] run kill @s

#> 再起
    execute if entity @s[scores={makigun.bullet=1..}] run function makigun:bullet/handgun/teleport
