#> makigun:gun/module/shortage
#> 弾が足りない

#> プレイサウンド (音を鳴らす)
    playsound gun.no_ammo record @a ~ ~ ~ 0.35 1

#> actionbar (アクションバー表示)
    title @s actionbar [{"text": "弾が足りない","color": "red"},{"text": " (弾を持ち","color": "gray"},{"keybind":"key.swapOffhand","color": "gray"},{"text": " でリロードが可能)","color": "gray"}]

#> item modifire (クロスボウをリセットする)
    item modify entity @s weapon.mainhand makigun:gun/
