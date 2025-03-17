# adds a tag to the custom item when selected
execute at @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{thunderbow:true}}}}] run tag @e[type=arrow, distance=..3] add arrow_lightning

# summon lightning where the arrow lands & remove tag
execute at @e[tag=arrow_lightning,nbt={inGround:1b}] run summon minecraft:lightning_bolt ~ ~ ~

# kill the arrow entity after lightning has been summoned
execute at @e[tag=arrow_lightning,nbt={inGround:1b}] run kill @e[tag=arrow_lightning,nbt={inGround:1b}]
