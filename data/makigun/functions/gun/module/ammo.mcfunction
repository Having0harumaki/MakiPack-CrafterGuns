#> makigun:gun/module/ammo
#> 銃の残弾を確認
    execute store result score ammo makigun.temp run data get entity @s SelectedItem.tag.ammo

#> 発射不可能
    execute if score ammo makigun.temp matches ..0 run function makigun:gun/handgun/shortage
    execute if entity @s[scores={makigun.cooltime=1..}] run item modify entity @s weapon.mainhand makigun:gun/handgun

#> 発射可能
    execute if score ammo makigun.temp matches 1.. if entity @s[scores={makigun.cooltime=0}] run function makigun:gun/handgun/shot

#> reset
    scoreboard players reset ammo makigun.temp
    data remove storage mgtemp: damage
    advancement revoke @s only makigun:shot/handgun