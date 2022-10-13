#> makigun:bullet/handgun/hit
#> 銃弾が当たる

#> 頭に当たっているかを検知する
    execute positioned ~ ~1.7 ~ if entity @e[distance=..0.12,tag=bullet.handgun] run function makigun:bullet/handgun/headshot

#> db
    execute if entity @s[tag=hit] run say HIT

#> 銃弾を削除
    kill @e[type=marker,tag=bullet.handgun,limit=1,sort=nearest]

#> タグをリセット
    tag @s remove head
    tag @s remove hit
    tag @s remove dodge