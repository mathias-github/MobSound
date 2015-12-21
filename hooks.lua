-- If player has permission mobsound.usetool, execute the command found in a tool's lore string when right-clicking
function OnPlayerRightClick(Player, BlockX, BlockY, BlockZ, BlockFace, CursorX, CursorY, CursorZ)
	if not Player:GetEquippedItem():IsLoreEmpty() and Player:HasPermission("mobsound.usetool") then
		cRoot:Get():GetPluginManager():ExecuteCommand(Player, Player:GetEquippedItem().m_Lore)
		return true
	end
end
