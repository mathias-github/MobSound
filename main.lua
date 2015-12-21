-- Code required to initialize the plugin
function Initialize(Plugin)
	dofile(cPluginManager:GetPluginsPath() .. "/InfoReg.lua")

	-- Sets the name and version of the plugin
	Plugin:SetName(g_PluginInfo.Name)
	Plugin:SetVersion(g_PluginInfo.Version)

	-- Hook required when right-clicking ingame
	cPluginManager:AddHook(cPluginManager.HOOK_PLAYER_RIGHT_CLICK, OnPlayerRightClick)

	-- Registers the commands found in Info.lua
	RegisterPluginInfoCommands()
	
	-- Shows up in console
	LOG("Initialized " .. Plugin:GetName() .. " v." .. Plugin:GetVersion())
	return true
end

-- Shows up in console
function OnDisable()
	LOG("MobSound is shutting down...")
end
