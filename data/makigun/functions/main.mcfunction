#> makigun:main
#> 

#> 弾丸を前に進める
    execute as @e[type=marker,tag=mg.bullet] at @s run function makigun:bullet/bullet

#> クールタイムを減少させる
    execute as @a[scores={makigun.cooltime=1..}] run scoreboard players remove @s makigun.cooltime 1

#> リコイル値をリセットする
    execute as @a[scores={makigun.recoil=0}] run scoreboard players set @s makigun.recoil_2 0
    execute as @a[scores={makigun.recoil=1..}] run scoreboard players remove @s makigun.recoil 1

#> オフハンド入れ替え
    #> ドッジショット
    execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{dodge_shot:1b}}]}] at @s run function makigun:gun/dodge_shot/swap

#> 能力
    #> ドッジショット
    execute as @a[scores={makigun.dodge=1..}] run scoreboard players remove @s makigun.dodge 1
    execute as @a[scores={makigun.dodge=0}] run scoreboard players set @s makigun.dodge2 1
    execute as @a[scores={makigun.dodge=0}] run scoreboard players reset @s makigun.dodge
    execute as @a[scores={makigun.dodge2=1..}] run scoreboard players remove @s makigun.dodge2 1
    execute as @a[scores={makigun.dodge3=1..}] run scoreboard players remove @s makigun.dodge3 1
        #> actionbar
        execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{dodge_shot:1b}}},scores={makigun.dodge=1..}] run title @s actionbar [{"text": "[ 回避 ]","color": "gray"}]
        execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{dodge_shot:1b}}},scores={makigun.dodge2=1..}] run title @s actionbar [{"text": "クールタイム | ","color": "green"},{"score":{"objective": "makigun.dodge2","name": "@s"},"color": "green","bold": true}]

