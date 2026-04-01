= David's Idle Timeout Datapack - Modified by Gabriel Rosas

:wiki: https://minecraft.fandom.com/wiki/Commands/datapack

This is a very simple datapack that automatically shuts off a minecraft server when no one has been online for 10 minutes.

This datapack is intended to be used within the context of itzg's Docker Minecraft server container.

This will require `function-permission-level=4` in `server.properties` in order for the datapack to use the `stop` command.

You can look to the right and find the latest version. Download the zip, and place in your world's `datapacks` folder. You may need to run the `reload` command for it to take effect, or you may need to enable it.
Check out the {wiki}[wiki] for more help with datapacks.

This datapack should work just fine on new Minecraft versions as they are released.

== Customization
To change how much time a server is online for once everyone logs out, go into `data/idle_timeout/functions/tick.mcfunction` and replace every instance of `20..` with the your desired timeout value. The time in minutes is multiplied by a factor of 2, so '20' is actually 10 minutes.

