#> makigun:gun/handgun/shot
#> ハンドガンを撃つ

#> 弾を召喚
    summon armor_stand ~ ~ ~ {Tags:["bullet.handgun"]}

#> 音を出す
    playsound gun.handgun.shot record @a ~ ~ ~ 0.35 1

#> 銃から弾を減らす
    #> 現在の銃の弾を取得
    execute store result score ammo makigun.temp run data get entity @s SelectedItem.tag.ammo
    execute store result storage mgtemp: damage int 1.0 run scoreboard players get ammo makigun.temp
    #> item modifire
    item modify entity @s weapon.mainhand makigun:gun/handgun