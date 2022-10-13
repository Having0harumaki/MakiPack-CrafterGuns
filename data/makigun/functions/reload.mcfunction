#> makigun:reload
# @internal
# @load minecraft:load

#>
# @within makigun:**
#> holder
 #define storage mgtemp:

#> scoreboard
    scoreboard objectives add makigun.bullet dummy [{"text": "銃の弾"}]
    scoreboard objectives add makigun.temp dummy [{"text": "一時的なやつ"}]
    scoreboard objectives add makigun.cooltime dummy [{"text": "クールタイム"}]
    scoreboard objectives add makigun.recoil dummy [{"text": "リコイル値"}]
    scoreboard objectives add makigun.recoil_2 dummy [{"text": "リコイル値 カウント"}]
    scoreboard objectives add makigun.dodge dummy [{"text": "かっこいい回避"}]
    scoreboard objectives add makigun.dodge2 dummy [{"text": "かっこいい回避 CT"}]

