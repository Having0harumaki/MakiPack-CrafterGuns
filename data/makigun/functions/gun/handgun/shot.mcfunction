#> makigun:gun/handgun/shot
#> ハンドガンを撃つ

#> 弾を召喚(スコア : 1マス-> 4 )
    summon marker ~ ~ ~ {Tags:["raycaster","bullet.handgun","mg.bullet","new"],data:{bullet:{BodyDamage:4,HeadDamage:6,BulletType:handgun}}}
    scoreboard players set @e[type=marker,tag=new] makigun.bullet 80

#> 向きを直す
    execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=new] run tp ~ ~ ~

#> tag remove
    tag @e[type=marker,tag=new] remove new

#> 音を出す
    playsound gun.handgun.shot record @a ~ ~ ~ 0.35 1

#> 銃から弾を減らす
    #> 現在の銃の弾を取得
    scoreboard players remove ammo makigun.temp 0
    execute store result storage mgtemp: damage int 1.0 run scoreboard players get ammo makigun.temp
    #> item modifire
    item modify entity @s weapon.mainhand makigun:gun/handgun

#> 発砲クールタイム
    scoreboard players set @s makigun.cooltime 5

#> 連射検知
    execute if entity @s[scores={makigun.recoil=1..}] run scoreboard players add @s makigun.recoil_2 1
    scoreboard players set @s makigun.recoil 10

#> 反動
    # ハンドガンに反動はない

#> 撃ち続けていたら弾を散らばらせる
    execute unless entity @s[predicate=makigun:player_properties/sneak] if entity @s[scores={makigun.recoil_2=2..}] run
