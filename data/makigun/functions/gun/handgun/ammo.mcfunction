#> makigun:gun/handgun/ammo
#> ハンドガンの残弾を確認
    execute store result score ammo makigun.temp run data get entity @s SelectedItem.tag.ammo

#> 発射不可能
    execute if score ammo makigun.temp matches ..0 run function makigun:gun/handgun/shortage

#> 発射可能
    execute if score ammo makigun.temp matches 1.. run function makigun:gun/handgun/shot

#> reset
    scoreboard players reset ammo makigun.temp
