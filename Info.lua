g_PluginInfo = {
	Name = "MobSound",
	Version = "1.1",
	Date = "2015-12-21",
	SourceLocation = "https://github.com/mathias-github/MobSound",
	Description = [[Allows you to broadcast a mob sound at your current location by executing a command. Alternatively, you can right-click while holding a tool in your hand to broadcast a mob sound. Perfect together with tonibm19's DisguiseCraft plugin.]],

	Commands =
	{
		["/mobsound"] =
		{
			HelpString = "Broadcasts a mob sound at your location.",
			Permission = "mobsound.mobsound",
			Handler = HandleMobSoundCommand,
		},

		["/mobsoundtool"] =
		{
			HelpString = "Gives a tool that broadcasts a mob sound at your location.",
			Permission = "mobsound.mobsoundtool",
			Handler = HandleMobSoundToolCommand,
		},
	},

	Permissions =
	{
		["mobsound.mobsound"] =
		{
			Description = "Allows a player to use the /mobsound command.",
		},

		["mobsound.mobsoundtool"] =
		{
			Description = "Allows a player to get mob sound tools by using the /mobsoundtool command.",
		},

		["mobsound.usetool"] =
		{
			Description = "Allows a player to use mob sound tools.",
		},
	},
}
