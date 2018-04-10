# Make Boolean Values Boolean.
execute as @a unless score @s botw.running matches 0 run scoreboard players set @s botw.running 1
execute as @a unless score @s botw.walking matches 0 run scoreboard players set @s botw.walking 1
execute as @a unless score @s botw.sneaking matches 0 run scoreboard players set @s botw.sneaking 1

execute as @a store result score @s botw.fo.sat run data get entity @s foodSaturationLevel 1000

# Run global scripts as players for easier scripting.
execute as @a run function botw:stamina/main
execute as @a if block ~ ~ ~ minecraft:water run effect give @s minecraft:regeneration 1 0 false

# Reset Boolean Values.
execute as @a run scoreboard players operation @s botw.running1 = @s botw.running
scoreboard players set @a botw.running 0

scoreboard players set @a botw.walking 0
scoreboard players set @a botw.sneaking 0