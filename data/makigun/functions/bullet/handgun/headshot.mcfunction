#> makigun:bullet/handgun/headshot
#> 銃弾が頭に当たる

#> db
    execute as @a at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 0.5 0
    particle flame ~ ~0.1 ~ 0.01 0.05 0.01 0.04 15 force @a
    tag @s add head