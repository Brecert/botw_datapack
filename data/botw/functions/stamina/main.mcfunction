# Keep values in bounds ( For Code )
execute as @s if score @s botw.st.current matches ..0 run scoreboard players set @s botw.st.current 0
execute as @s if score @s botw.st.current > @s botw.st.amount run scoreboard players operation @s botw.st.current = @s botw.st.amount


# Exhausted Bool set.
execute if score @s botw.st.current >= @s botw.st.amount run scoreboard players set @s botw.st.exed 0
execute if score @s botw.st.current matches 0 run scoreboard players set @s botw.st.exed 1

# Clear Effects
execute if score @s botw.st.current >= @s botw.st.amount run effect clear @s minecraft:slowness

# Run Code.
execute if score @s botw.st.exed matches 1 run function botw:stamina/exhausted
execute if score @s botw.st.exed matches 0 run function botw:stamina/not/exhausted

# Keep values in bounds ( For Display )
execute as @s if score @s botw.st.current matches ..0 run scoreboard players set @s botw.st.current 0
execute as @s if score @s botw.st.current > @s botw.st.amount run scoreboard players operation @s botw.st.current = @s botw.st.amount

# Bossbar
function botw:stamina/bossbar

scoreboard players set botw.temp botw.st.timer 0