#> makigun:gun/handgun/shot
#> ハンドガンを撃つ

#> 弾を召喚(スコア : 1マス-> 4 )
    summon armor_stand ~ ~ ~ {Tags:["bullet.handgun","mg.bullet","new"],Invisible:1b,Marker:1b}
    scoreboard players set @e[type=armor_stand,tag=new] makigun.bullet 80
    tp @e[type=armor_stand,tag=new] @s
    tag @e[type=armor_stand,tag=new] remove new

#> 音を出す
    playsound gun.handgun.shot record @a ~ ~ ~ 0.35 1

#> 銃から弾を減らす
    #> 現在の銃の弾を取得
    scoreboard players remove ammo makigun.temp 1
    execute store result storage mgtemp: damage int 1.0 run scoreboard players get ammo makigun.temp
    #> item modifire
    item modify entity @s weapon.mainhand makigun:gun/handgun

#> reset
    advancement revoke @s only makigun:shot/handgun