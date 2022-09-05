#> makigun:gun/handgun/shot
#> ハンドガンを撃つ

#> 弾を召喚(スコア : 1マス-> 4 )
    summon marker ~ ~ ~ {Tags:["raycaster","bullet.handgun","mg.bullet","new"]}
    scoreboard players set @e[type=marker,tag=new] makigun.bullet 80

#> 向きを直す
    execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=new] run tp ~ ~ ~

#> tag remove
    tag @e[type=marker,tag=new] remove new

#> 音を出す
    playsound gun.handgun.shot record @a ~ ~ ~ 0.35 1

#> 銃から弾を減らす
    #> 現在の銃の弾を取得
    #scoreboard players remove ammo makigun.temp 1
    execute store result storage mgtemp: damage int 1.0 run scoreboard players get ammo makigun.temp
    #> item modifire
    item modify entity @s weapon.mainhand makigun:gun/handgun

#> 発砲クールタイム
    scoreboard players set @s makigun.cooltime 4

