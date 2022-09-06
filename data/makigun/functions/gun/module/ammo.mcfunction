#> makigun:gun/module/ammo
#> 銃の残弾を確認 (ammoスコアに手に持った銃の残弾を入れる)
    execute store result score ammo makigun.temp run data get entity @s SelectedItem.tag.ammo

#> 発射不可能 (ammoスコアが0 or クールタイムが1以上なら撃てない)
    execute if score ammo makigun.temp matches ..0 run function makigun:gun/module/shortage
    execute if entity @s[scores={makigun.cooltime=1..}] run item modify entity @s weapon.mainhand makigun:gun/

#> 発射可能 (ammoスコアが１以上+クールタイムが0なら撃てる)
    execute if score ammo makigun.temp matches 1.. if entity @s[scores={makigun.cooltime=0}] run function makigun:gun/module/shot

#> reset (スコア・adv・ストレージをリセットする)
    scoreboard players reset ammo makigun.temp
    data remove storage mgtemp: damage
    advancement revoke @s only makigun:shot/handgun