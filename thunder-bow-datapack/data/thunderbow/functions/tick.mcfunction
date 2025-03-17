# ta funkajc dziala przy kazdym ticku

execute at @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{CustomModelData:1}}}] run tag @e[type=arrow, distance=..3] add arrow_lightning

execute at @e[tag=arrow_lightning,nbt={inGround:1b}] run summon lightning_bolt ~ ~ ~ 
kill @e[tag=arrow_lightning,nbt={inGround:1b}] 