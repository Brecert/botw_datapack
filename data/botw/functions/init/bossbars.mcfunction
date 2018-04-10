bossbar create botw:stamina {"text":"stamina"}
bossbar set botw:stamina color yellow
bossbar set botw:stamina players @s
# execute as @s store result bossbar botw:stamina max run scoreboard players get @s botw.st.amount
# execute as @s store result bossbar botw:stamina value run scoreboard players get @s botw.st.current