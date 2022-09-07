#> makigun:main
#> 

#> 弾丸を前に進める
    execute as @e[type=marker,tag=mg.bullet] at @s run function makigun:bullet/bullet

#> クールタイムを減少させる
    execute as @a[scores={makigun.cooltime=1..}] run scoreboard players remove @s makigun.cooltime 1

#> リコイル値をリセットする
    execute as @a[scores={makigun.recoil=0}] run scoreboard players set @s makigun.recoil_2 0
    execute as @a[scores={makigun.recoil=1..}] run scoreboard players remove @s makigun.recoil 1