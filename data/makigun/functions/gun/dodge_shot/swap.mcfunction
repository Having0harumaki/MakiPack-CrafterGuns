#> makigun:gun/dodge_shot/swap
#> オフハンド入れ替え

#> dodgeスコアの変更
    scoreboard players add @s makigun.dodge2 0
    scoreboard players add @s makigun.dodge 0
    execute unless score replaced makigun.temp matches 1 if entity @s[scores={makigun.dodge2=0,makigun.dodge=0}] run 
    scoreboard players set replaced makigun.temp 1

#> アイテムを戻す
    execute store success score _ makigun.temp if entity @s[nbt=!{SelectedItem:{}}] run item replace entity @s weapon.mainhand from entity @s weapon.offhand
    execute if score _ makigun.temp matches 1 run item replace entity @s weapon.offhand with air
    execute if score _ makigun.temp matches 1 run scoreboard players reset replaced makigun.temp

#> reset
    scoreboard players reset _ makigun.temp
