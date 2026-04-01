# Idle Timeout Datapack
*Derived from David's idle timout, https://github.com/DavidMacDonald11/idle-timeout-datapack*

:wiki: https://minecraft.fandom.com/wiki/Commands/datapack

This is a very simple datapack that automatically shuts off a minecraft server when no one has been online for 10 minutes.
### NOTE: This plugin will require `function-permission-level=4` in `server.properties` in order for the datapack to use the `stop` command.

## How it works

When the server starts `RCON_CMDS_STARTUP` (defined in `compose.yaml`) runs the `init` function which begins a timer. The timer counts the number of ticks passed since initialization. Once the timer exceeds a certain threshold (12000 ticks = 10 minutes), a check occurs: are there any players left online? If no players exist, the server shuts down. Otherwise, player(s) exist so the timer resets to -1 (it freezes and won't increment). When the last player disconnects `RCON_CMDS_LAST_DISCONNECT` (defined in `compose.yaml`) runs the `lastplayerleave` function, setting the timer to 0--"unfreezeing" it. The same situation as before occurs; once a threshold is reached, the checks happen and the server can either shut down or continue gracefully. 

If the datapack breaks for any reason, check the wiki to see if minecraft released any major changes to the datapack system (namespaces, command names, etc) and update accordingly.

## Customization
To change the duration the server will persist once everyone has logged out, open `data/idle_timeout/function/tick.mcfunction` and replace every instance of `12000..` with the your desired timeout value. This value should be the number of ticks before the server ends.
A minecraft tick is 1/20 of a second, so the conversion for minutes would be: (X minutes) * 20 * 60 = X * 1200.

