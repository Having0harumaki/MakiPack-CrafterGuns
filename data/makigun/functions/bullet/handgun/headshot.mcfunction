#> makigun:bullet/handgun/headshot
#> 銃弾が頭に当たる

#> db
    tellraw @a [{"selector":"@s","color": "red"},{"text": "が頭を射抜かれた","color": "red"}]
    particle flame ~ ~0.1 ~ 0.01 0.05 0.01 0.04 15 force @a
    tag @s add head