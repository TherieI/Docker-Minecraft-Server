execute if score #Delay idle_delayTimer matches 0.. run scoreboard players add #Delay idle_delayTimer 1
execute if score #Delay idle_delayTimer matches 36000.. run function idle_timeout:stop
