#> makigun:random/random
#> ランダムな値を出力

#> アイテム召喚+スコア設定
    scoreboard players set $20 makigun.temp 20
    loot spawn ~ ~100 ~ loot makigun:random/random
#> 情報取得
    execute store result score value makigun.temp run data get entity @e[type=item,limit=1,nbt={Item:{id:"minecraft:suspicious_stew"}}] Item.tag.Effects.[0].EffectDuration
#> 計算
    scoreboard players operation value makigun.temp /= $20 makigun.temp
    scoreboard players reset $20 makigun.temp
#> reset
    scoreboard players reset min makigun.temp
    scoreboard players reset max makigun.temp
    kill @e[type=item,limit=1,nbt={Item:{id:"minecraft:suspicious_stew"}}]
