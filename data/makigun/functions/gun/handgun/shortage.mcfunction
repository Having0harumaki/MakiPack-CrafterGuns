#> makigun:gun/handgun/shortage
#> 弾が足りない

#> プレイサウンド
    playsound gun.no_ammo record @a ~ ~ ~ 0.35 1

#> actionbar
    title @s actionbar [{"text": "銃弾が足りない","color": "red"},{"text": " (弾を持ち","color": "gray"},{"keybind":"key.swapOffhand","color": "gray"},{"text": " でリロードが可能)","color": "gray"}]
