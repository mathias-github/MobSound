-- Handles the /mobsound command
function HandleMobSoundCommand(Split, Player)
	-- Show usage info is second split is empty
	if Split[2] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." <mobtype> <sound>")
		Player:SendMessageInfo("Available types: bat, blaze, chicken, cow, creeper, enderdragon, enderman, endermite, ghast, guardian, horse, irongolem, magmacube, ocelot, pig, player, rabbit, sheep, shulker, silverfish, skeleton, slime, snowgolem, spider, squid, villager, witch, wither, wolf, zombie, zombiepigman")
		return true
	end

	-- Shortcuts
	local X = Player:GetPosX()
	local Y = Player:GetPosY()
	local Z = Player:GetPosZ()

	-- Handles arguments for bat sounds
	if Split[2] == "bat" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <ambient|death|loop|hurt|takeoff>")
		return true
	elseif Split[2] == "bat" and Split[3] == "ambient" or Split[2] == "bat" and Split[3] == "death" or Split[2] == "bat" and Split[3] == "loop" or Split[2] == "bat" and Split[3] == "hurt" or Split[2] == "bat" and Split[3] == "takeoff" then
		Player:GetWorld():BroadcastSoundEffect("entity.bat.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for blaze sounds
	if Split[2] == "blaze" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <ambient|burn|death|hurt|shoot>")
		return true
	elseif Split[2] == "blaze" and Split[3] == "ambient" or Split[2] == "blaze" and Split[3] == "burn" or Split[2] == "blaze" and Split[3] == "death" or Split[2] == "blaze" and Split[3] == "hurt" or Split[2] == "blaze" and Split[3] == "shoot" then
		Player:GetWorld():BroadcastSoundEffect("entity.blaze.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for chicken sounds
	if Split[2] == "chicken" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <ambient|death|egg|hurt|step>")
		return true
	elseif Split[2] == "chicken" and Split[3] == "ambient" or Split[2] == "chicken" and Split[3] == "death" or Split[2] == "chicken" and Split[3] == "egg" or Split[2] == "chicken" and Split[3] == "hurt" or Split[2] == "chicken" and Split[3] == "step" then
		Player:GetWorld():BroadcastSoundEffect("entity.chicken.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for cow sounds
	if Split[2] == "cow" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <ambient|death|hurt|milk|step>")
		return true
	elseif Split[2] == "cow" and Split[3] == "ambient" or Split[2] == "cow" and Split[3] == "death" or Split[2] == "cow" and Split[3] == "hurt" or Split[2] == "cow" and Split[3] == "milk" or Split[2] == "cow" and Split[3] == "step" then
		Player:GetWorld():BroadcastSoundEffect("entity.cow.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for creeper sounds
	if Split[2] == "creeper" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <death|explode|hurt|primed>")
		return true
	elseif Split[2] == "creeper" and Split[3] == "death" or Split[2] == "creeper" and Split[3] == "hurt" or Split[2] == "creeper" and Split[3] == "primed" then
		Player:GetWorld():BroadcastSoundEffect("entity.creeper.".. Split[3], X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "creeper" and Split[3] == "explode" then
		Player:GetWorld():BroadcastSoundEffect("entity.generic.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for enderdragon sounds
	if Split[2] == "enderdragon" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <ambient|death|flap|growl|hurt|shoot>")
		return true
	elseif Split[2] == "enderdragon" and Split[3] == "ambient" or Split[2] == "enderdragon" and Split[3] == "death" or Split[2] == "enderdragon" and Split[3] == "flap" or Split[2] == "enderdragon" and Split[3] == "growl" or Split[2] == "enderdragon" and Split[3] == "hurt" or Split[2] == "enderdragon" and Split[3] == "shoot" then
		Player:GetWorld():BroadcastSoundEffect("entity.enderdragon.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for enderman sounds
	if Split[2] == "enderman" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <ambient|death|hurt|scream|stare|teleport>")
		return true
	elseif Split[2] == "enderman" and Split[3] == "ambient" or Split[2] == "enderman" and Split[3] == "death" or Split[2] == "enderman" and Split[3] == "hurt" or Split[2] == "enderman" and Split[3] == "scream" or Split[2] == "enderman" and Split[3] == "stare" or Split[2] == "enderman" and Split[3] == "teleport" then
		Player:GetWorld():BroadcastSoundEffect("entity.endermen.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for endermite sounds
	if Split[2] == "endermite" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <ambient|death|hurt|step>")
		return true
	elseif Split[2] == "endermite" and Split[3] == "ambient" or Split[2] == "endermite" and Split[3] == "death" or Split[2] == "endermite" and Split[3] == "hurt" or Split[2] == "endermite" and Split[3] == "step" then
		Player:GetWorld():BroadcastSoundEffect("entity.endermite.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for ghast sounds
	if Split[2] == "ghast" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <ambient|death|hurt|scream|shoot|warn>")
		return true
	elseif Split[2] == "ghast" and Split[3] == "ambient" or Split[2] == "ghast" and Split[3] == "death" or Split[2] == "ghast" and Split[3] == "hurt" or Split[2] == "ghast" and Split[3] == "scream" or Split[2] == "ghast" and Split[3] == "shoot" or Split[2] == "ghast" and Split[3] == "warn" then
		Player:GetWorld():BroadcastSoundEffect("entity.ghast.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for guardian sounds
	if Split[2] == "guardian" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <elder|land|underwater> <soundname>")
		return true
	elseif Split[2] == "guardian" and Split[3] == "elder" and Split[4] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." ".. Split[3] .." <ambient|curse|death|hurt>")
		return true
	elseif Split[2] == "guardian" and Split[3] == "land" and Split[4] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." ".. Split[3] .." <ambient|death|hurt>")
		return true
	elseif Split[2] == "guardian" and Split[3] == "underwater" and Split[4] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." ".. Split[3] .." <ambient|attack|death|flop|hurt>")
		return true
	elseif Split[2] == "guardian" and Split[3] == "elder" and Split[4] == "ambient" or Split[2] == "guardian" and Split[3] == "elder" and Split[4] == "curse" or Split[2] == "guardian" and Split[3] == "elder" and Split[4] == "death" or Split[2] == "guardian" and Split[3] == "elder" and Split[4] == "hurt" then
		Player:GetWorld():BroadcastSoundEffect("entity.elder_guardian.".. Split[4], X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "guardian" and Split[3] == "land" and Split[4] == "ambient" or Split[2] == "guardian" and Split[3] == "land" and Split[4] == "death" or Split[2] == "guardian" and Split[3] == "land" and Split[4] == "hurt" then
		Player:GetWorld():BroadcastSoundEffect("entity.guardian.".. Split[4] .."_land", X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "guardian" and Split[3] == "underwater" and Split[4] == "ambient" or Split[2] == "guardian" and Split[3] == "underwater" and Split[4] == "attack" or Split[2] == "guardian" and Split[3] == "underwater" and Split[4] == "death" or Split[2] == "guardian" and Split[3] == "underwater" and Split[4] == "flop" or Split[2] == "guardian" and Split[3] == "underwater" and Split[4] == "hurt" then
		Player:GetWorld():BroadcastSoundEffect("entity.guardian.".. Split[4], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for horse sounds
	if Split[2] == "horse" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <donkey|mule|normal|skeleton|zombie> <soundname>")
		return true
	elseif Split[2] == "horse" and Split[3] == "donkey" and Split[4] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." ".. Split[3] .." <ambient|angry|chest|death|hurt>")
		return true
	elseif Split[2] == "horse" and Split[3] == "mule" and Split[4] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." ".. Split[3] .." <ambient|death|hurt>")
		return true
	elseif Split[2] == "horse" and Split[3] == "normal" and Split[4] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." ".. Split[3] .." <ambient|angry|armor|breathe|death|eat|gallop|jump|land|saddle|step|step_wood>")
		return true
	elseif Split[2] == "horse" and Split[3] == "skeleton" and Split[4] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." ".. Split[3] .." <ambient|death|hurt>")
		return true
	elseif Split[2] == "horse" and Split[3] == "zombie" and Split[4] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." ".. Split[3] .." <ambient|death|hurt>")
		return true 
	elseif Split[2] == "horse" and Split[3] == "donkey" and Split[4] == "ambient" or Split[2] == "horse" and Split[3] == "donkey" and Split[4] == "angry" or Split[2] == "horse" and Split[3] == "donkey" and Split[4] == "chest" or Split[2] == "horse" and Split[3] == "donkey" and Split[4] == "death" or Split[2] == "horse" and Split[3] == "donkey" and Split[4] == "hurt" then
		Player:GetWorld():BroadcastSoundEffect("entity.donkey.".. Split[4], X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "horse" and Split[3] == "mule" and Split[4] == "ambient" or Split[2] == "horse" and Split[3] == "mule" and Split[4] == "death" or Split[2] == "horse" and Split[3] == "mule" and Split[4] == "hurt" then
		Player:GetWorld():BroadcastSoundEffect("entity.mule.".. Split[4], X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "horse" and Split[3] == "normal" and Split[4] == "ambient" or Split[2] == "horse" and Split[3] == "normal" and Split[4] == "angry" or Split[2] == "horse" and Split[3] == "normal" and Split[4] == "armor" or Split[2] == "horse" and Split[3] == "normal" and Split[4] == "breathe" or Split[2] == "horse" and Split[3] == "normal" and Split[4] == "death" or Split[2] == "horse" and Split[3] == "normal" and Split[4] == "eat" or Split[2] == "horse" and Split[3] == "normal" and Split[4] == "gallop" or Split[2] == "horse" and Split[3] == "normal" and Split[4] == "jump" or Split[2] == "horse" and Split[3] == "normal" and Split[4] == "land" or Split[2] == "horse" and Split[3] == "normal" and Split[4] == "saddle" or Split[2] == "horse" and Split[3] == "normal" and Split[4] == "step" or Split[2] == "horse" and Split[3] == "normal" and Split[4] == "step_wood" then
		Player:GetWorld():BroadcastSoundEffect("entity.horse.".. Split[4], X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "horse" and Split[3] == "skeleton" and Split[4] == "ambient" or Split[2] == "horse" and Split[3] == "skeleton" and Split[4] == "death" or Split[2] == "horse" and Split[3] == "skeleton" and Split[4] == "hurt" then
		Player:GetWorld():BroadcastSoundEffect("entity.skeleton_horse.".. Split[4], X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "horse" and Split[3] == "zombie" and Split[4] == "ambient" or Split[2] == "horse" and Split[3] == "zombie" and Split[4] == "death" or Split[2] == "horse" and Split[3] == "zombie" and Split[4] == "hurt" then
		Player:GetWorld():BroadcastSoundEffect("entity.zombie_horse.".. Split[4], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for iron golem sounds
	if Split[2] == "irongolem" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <attack|death|hurt|step>")
		return true
	elseif Split[2] == "irongolem" and Split[3] == "attack" or Split[2] == "irongolem" and Split[3] == "death" or Split[2] == "irongolem" and Split[3] == "hurt" or Split[2] == "irongolem" and Split[3] == "step" then
		Player:GetWorld():BroadcastSoundEffect("entity.irongolem.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for magmacube sounds
	if Split[2] == "magmacube" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <normal|small>")
		return true
	elseif Split[2] == "magmacube" and Split[3] == "normal" and Split[4] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." ".. Split[3] .." <death|hurt|jump|squish>")
		return true
	elseif Split[2] == "magmacube" and Split[3] == "small" and Split[4] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." ".. Split[3] .." <death|hurt|squish>")
		return true
	elseif Split[2] == "magmacube" and Split[3] == "normal" and Split[4] == "death" or Split[2] == "magmacube" and Split[3] == "normal" and Split[4] == "hurt" or Split[2] == "magmacube" and Split[3] == "normal" and Split[4] == "jump" or Split[2] == "magmacube" and Split[3] == "normal" and Split[4] == "squish" then
		Player:GetWorld():BroadcastSoundEffect("entity.magmacube.".. Split[4], X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "magmacube" and Split[3] == "small" and Split[4] == "death" or Split[2] == "magmacube" and Split[3] == "small" and Split[4] == "hurt" or Split[2] == "magmacube" and Split[3] == "small" and Split[4] == "squish" then
		Player:GetWorld():BroadcastSoundEffect("entity.small_magmacube.".. Split[4], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for ocelot sounds
	if Split[2] == "ocelot" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <ambient|death|hiss|hurt|purr|purreow>")
		return true
	elseif Split[2] == "ocelot" and Split[3] == "ambient" or Split[2] == "ocelot" and Split[3] == "death" or Split[2] == "ocelot" and Split[3] == "hiss" or Split[2] == "ocelot" and Split[3] == "hurt" or Split[2] == "ocelot" and Split[3] == "purr" or Split[2] == "ocelot" and Split[3] == "purreow" then
		Player:GetWorld():BroadcastSoundEffect("entity.cat.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for pig sounds
	if Split[2] == "pig" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <ambient|death|hurt|saddle|step>")
		return true
	elseif Split[2] == "pig" and Split[3] == "ambient" or Split[2] == "pig" and Split[3] == "death" or Split[2] == "pig" and Split[3] == "hurt" or Split[2] == "pig" and Split[3] == "saddle" or Split[2] == "pig" and Split[3] == "step" then
		Player:GetWorld():BroadcastSoundEffect("entity.pig.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for player sounds
	if Split[2] == "player" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <attack|general>")
		return true
	elseif Split[2] == "player" and Split[3] == "attack" and Split[4] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." ".. Split[3] .." <crit|knockback|nodamage|strong|sweep|weak>")
		return true
	elseif Split[2] == "player" and Split[3] == "general" and Split[4] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." ".. Split[3] .." <big_fall|breath|burp|death|drink|eat|hurt|levelup|small_fall|splash|swim>")
		return true
	elseif Split[2] == "player" and Split[3] == "attack" and Split[4] == "crit" or Split[2] == "player" and Split[3] == "attack" and Split[4] == "knockback" or Split[2] == "player" and Split[3] == "attack" and Split[4] == "nodamage" or Split[2] == "player" and Split[3] == "attack" and Split[4] == "strong" or Split[2] == "player" and Split[3] == "attack" and Split[4] == "sweep" or Split[2] == "player" and Split[3] == "attack" and Split[4] == "weak" then
		Player:GetWorld():BroadcastSoundEffect("entity.player.attack.".. Split[4], X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "player" and Split[3] == "general" and Split[4] == "big_fall" or Split[2] == "player" and Split[3] == "general" and Split[4] == "breath" or Split[2] == "player" and Split[3] == "general" and Split[4] == "burp" or Split[2] == "player" and Split[3] == "general" and Split[4] == "death" or Split[2] == "player" and Split[3] == "general" and Split[4] == "hurt" or Split[2] == "player" and Split[3] == "general" and Split[4] == "levelup" or Split[2] == "player" and Split[3] == "general" and Split[4] == "small_fall" or Split[2] == "player" and Split[3] == "general" and Split[4] == "splash" or Split[2] == "player" and Split[3] == "general" and Split[4] == "swim" then
		Player:GetWorld():BroadcastSoundEffect("entity.player.".. Split[4], X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "player" and Split[3] == "general" and Split[4] == "drink" or Split[2] == "player" and Split[3] == "general" and Split[4] == "eat" then
		Player:GetWorld():BroadcastSoundEffect("entity.generic.".. Split[4], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for rabbit sounds
	if Split[2] == "rabbit" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <ambient|attack|death|hurt|jump>")
		return true
	elseif Split[2] == "rabbit" and Split[3] == "ambient" or Split[2] == "rabbit" and Split[3] == "attack" or Split[2] == "rabbit" and Split[3] == "death" or Split[2] == "rabbit" and Split[3] == "hurt" or Split[2] == "rabbit" and Split[3] == "jump" then
		Player:GetWorld():BroadcastSoundEffect("entity.rabbit.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for sheep sounds
	if Split[2] == "sheep" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <ambient|death|hurt|shear|step>")
		return true
	elseif Split[2] == "sheep" and Split[3] == "ambient" or Split[2] == "sheep" and Split[3] == "death" or Split[2] == "sheep" and Split[3] == "hurt" or Split[2] == "sheep" and Split[3] == "shear" or Split[2] == "sheep" and Split[3] == "step" then
		Player:GetWorld():BroadcastSoundEffect("entity.sheep.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for shulker sounds
	if Split[2] == "shulker" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <ambient|bullet_hit|bullet_hurt|close|death|hurt|hurt_closed|open|shoot|teleport>")
		return true
	elseif Split[2] == "shulker" and Split[3] == "ambient" or Split[2] == "shulker" and Split[3] == "close" or Split[2] == "shulker" and Split[3] == "death" or Split[2] == "shulker" and Split[3] == "hurt" or Split[2] == "shulker" and Split[3] == "hurt_closed" or Split[2] == "shulker" and Split[3] == "open" or Split[2] == "shulker" and Split[3] == "shoot" or Split[2] == "shulker" and Split[3] == "teleport" then
		Player:GetWorld():BroadcastSoundEffect("entity.shulker.".. Split[3], X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "shulker" and Split[3] == "bullet_hit" then
		Player:GetWorld():BroadcastSoundEffect("entity.shulker_bullet.hit", X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "shulker" and Split[3] == "bullet_hurt" then
		Player:GetWorld():BroadcastSoundEffect("entity.shulker_bullet.hurt", X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for silverfish sounds
	if Split[2] == "silverfish" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <ambient|death|hurt|step>")
		return true
	elseif Split[2] == "silverfish" and Split[3] == "ambient" or Split[2] == "silverfish" and Split[3] == "death" or Split[2] == "silverfish" and Split[3] == "hurt" or Split[2] == "silverfish" and Split[3] == "step" then
		Player:GetWorld():BroadcastSoundEffect("entity.silverfish.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for skeleton sounds
	if Split[2] == "skeleton" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <ambient|death|hurt|shoot|step>")
		return true
	elseif Split[2] == "skeleton" and Split[3] == "ambient" or Split[2] == "skeleton" and Split[3] == "death" or Split[2] == "skeleton" and Split[3] == "hurt" or Split[2] == "skeleton" and Split[3] == "shoot" or Split[2] == "skeleton" and Split[3] == "step" then
		Player:GetWorld():BroadcastSoundEffect("entity.skeleton.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for slime sounds
	if Split[2] == "slime" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <normal|small>")
		return true
	elseif Split[2] == "slime" and Split[3] == "normal" and Split[4] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." ".. Split[3] .." <death|hurt|jump|squish>")
		return true
	elseif Split[2] == "slime" and Split[3] == "small" and Split[4] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." ".. Split[3] .." <death|hurt|jump|squish>")
		return true
	elseif Split[2] == "slime" and Split[3] == "normal" and Split[4] == "death" or Split[2] == "slime" and Split[3] == "normal" and Split[4] == "hurt" or Split[2] == "slime" and Split[3] == "normal" and Split[4] == "jump" or Split[2] == "slime" and Split[3] == "normal" and Split[4] == "squish" then
		Player:GetWorld():BroadcastSoundEffect("entity.slime.".. Split[4], X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "slime" and Split[3] == "small" and Split[4] == "death" or Split[2] == "slime" and Split[3] == "small" and Split[4] == "hurt" or Split[2] == "slime" and Split[3] == "small" and Split[4] == "jump" or Split[2] == "slime" and Split[3] == "small" and Split[4] == "squish" then
		Player:GetWorld():BroadcastSoundEffect("entity.small_slime.".. Split[4], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for snow golem sounds
	if Split[2] == "snowgolem" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <ambient|death|hurt|shoot>")
		return true
	elseif Split[2] == "snowgolem" and Split[3] == "ambient" or Split[2] == "snowgolem" and Split[3] == "death" or Split[2] == "snowgolem" and Split[3] == "hurt" or Split[2] == "snowgolem" and Split[3] == "shoot" then
		Player:GetWorld():BroadcastSoundEffect("entity.snowman.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for spider sounds
	if Split[2] == "spider" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <ambient|death|hurt|step>")
		return true
	elseif Split[2] == "spider" and Split[3] == "ambient" or Split[2] == "spider" and Split[3] == "death" or Split[2] == "spider" and Split[3] == "hurt" or Split[2] == "spider" and Split[3] == "step" then
		Player:GetWorld():BroadcastSoundEffect("entity.spider.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for squid sounds
	if Split[2] == "squid" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <ambient|death|hurt>")
		return true
	elseif Split[2] == "squid" and Split[3] == "ambient" or Split[2] == "squid" and Split[3] == "death" or Split[2] == "squid" and Split[3] == "hurt" then
		Player:GetWorld():BroadcastSoundEffect("entity.squid.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for villager sounds
	if Split[2] == "villager" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <ambient|death|hurt|no|trading|yes>")
		return true
	elseif Split[2] == "villager" and Split[3] == "ambient" or Split[2] == "villager" and Split[3] == "death" or Split[2] == "villager" and Split[3] == "hurt" or Split[2] == "villager" and Split[3] == "no" or Split[2] == "villager" and Split[3] == "trading" or Split[2] == "villager" and Split[3] == "yes" then
		Player:GetWorld():BroadcastSoundEffect("entity.villager.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for witch sounds
	if Split[2] == "witch" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <ambient|death|drink|hurt|throw>")
		return true
	elseif Split[2] == "witch" and Split[3] == "ambient" or Split[2] == "witch" and Split[3] == "death" or Split[2] == "witch" and Split[3] == "drink" or Split[2] == "witch" and Split[3] == "hurt" or Split[2] == "witch" and Split[3] == "throw" then
		Player:GetWorld():BroadcastSoundEffect("entity.witch.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for wither sounds
	if Split[2] == "wither" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <ambient|break_block|death|hurt|shoot|spawn>")
		return true
	elseif Split[2] == "wither" and Split[3] == "ambient" or Split[2] == "wither" and Split[3] == "break_block" or Split[2] == "wither" and Split[3] == "death" or Split[2] == "wither" and Split[3] == "hurt" or Split[2] == "wither" and Split[3] == "shoot" or Split[2] == "wither" and Split[3] == "spawn" then
		Player:GetWorld():BroadcastSoundEffect("entity.wither.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for wolf sounds
	if Split[2] == "wolf" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <ambient|death|growl|howl|hurt|pant|shake|step|whine>")
		return true
	elseif Split[2] == "wolf" and Split[3] == "ambient" or Split[2] == "wolf" and Split[3] == "death" or Split[2] == "wolf" and Split[3] == "growl" or Split[2] == "wolf" and Split[3] == "howl" or Split[2] == "wolf" and Split[3] == "hurt" or Split[2] == "wolf" and Split[3] == "pant" or Split[2] == "wolf" and Split[3] == "shake" or Split[2] == "wolf" and Split[3] == "step" or Split[2] == "wolf" and Split[3] == "whine" then
		Player:GetWorld():BroadcastSoundEffect("entity.wolf.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for zombie sounds
	if Split[2] == "zombie" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <normal|villager>")
		return true
	elseif Split[2] == "zombie" and Split[3] == "normal" and Split[4] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." ".. Split[3] .." <ambient|attack_door_wood|attack_iron_door|break_door_wood|death|hurt|infect|step>")
		return true
	elseif Split[2] == "zombie" and Split[3] == "villager" and Split[4] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." ".. Split[3] .." <ambient|converted|cure|death|hurt|step>")
		return true
	elseif Split[2] == "zombie" and Split[3] == "normal" and Split[4] == "ambient" or Split[2] == "zombie" and Split[3] == "normal" and Split[4] == "attack_door_wood" or Split[2] == "zombie" and Split[3] == "normal" and Split[4] == "attack_iron_door" or Split[2] == "zombie" and Split[3] == "normal" and Split[4] == "break_door_wood" or Split[2] == "zombie" and Split[3] == "normal" and Split[4] == "death" or Split[2] == "zombie" and Split[3] == "normal" and Split[4] == "hurt" or Split[2] == "zombie" and Split[3] == "normal" and Split[4] == "infect" or Split[2] == "zombie" and Split[3] == "normal" and Split[4] == "step" then
		Player:GetWorld():BroadcastSoundEffect("entity.zombie.".. Split[4], X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "zombie" and Split[3] == "villager" and Split[4] == "ambient" or Split[2] == "zombie" and Split[3] == "villager" and Split[4] == "converted" or Split[2] == "zombie" and Split[3] == "villager" and Split[4] == "cure" or Split[2] == "zombie" and Split[3] == "villager" and Split[4] == "death" or Split[2] == "zombie" and Split[3] == "villager" and Split[4] == "hurt" or Split[2] == "zombie" and Split[3] == "villager" and Split[4] == "step" then
		Player:GetWorld():BroadcastSoundEffect("entity.zombie_villager.".. Split[4], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for zombie pigman sounds
	if Split[2] == "zombiepigman" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <ambient|angry|death|hurt>")
		return true
	elseif Split[2] == "zombiepigman" and Split[3] == "ambient" or Split[2] == "zombiepigman" and Split[3] == "angry" or Split[2] == "zombiepigman" and Split[3] == "death" or Split[2] == "zombiepigman" and Split[3] == "hurt" then 
		Player:GetWorld():BroadcastSoundEffect("entity.zombie_pig.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- When mob sound not recognized
	if Split[2] ~= nil then
		Player:SendMessageFailure("Invalid mob sound")
		return true
	else
	-- Then the mob type must not be recognized
		Player:SendMessageFailure("Invalid mob type")
		return true
	end
end

-- Handles the /mobsoundtool command
function HandleMobSoundToolCommand(Split, Player)
	-- If second split is empty, display usage information
	if Split[2] == nil then
		Player:SendMessageInfo("Usage: " ..Split[1].. " <mobtype>")
		Player:SendMessageInfo("Available types: bat, blaze, chicken, cow, creeper, enderdragon, enderman, endermite, ghast, guardian, horse, irongolem, magmacube, ocelot, pig, player, rabbit, sheep, shulker, silverfish, skeleton, slime, snowgolem, spider, squid, villager, witch, wither, wolf, zombie, zombiepigman")
		return true
	end

	-- Places sound tools for specified mob in player's inventory. The tools have a custom name containing the mob and sound effect name, and a custom
	-- lore string containing the command for broadcasting the sound effect.
	if Split[2] == "bat" then
		local Item = cItem(318)

		Item.m_CustomName = "§rBat Sound: Ambient"
		Item.m_Lore = "/mobsound bat ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rBat Sound: Death"
		Item.m_Lore = "/mobsound bat death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rBat Sound: Hurt"
		Item.m_Lore = "/mobsound bat hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rBat Sound: Loop"
		Item.m_Lore = "/mobsound bat loop "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rBat Sound: Takeoff"
		Item.m_Lore = "/mobsound bat takeoff "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for bat sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "blaze" then
		local Item = cItem(377)

		Item.m_CustomName = "§rBlaze Sound: Ambient"
		Item.m_Lore = "/mobsound blaze ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rBlaze Sound: Burn"
		Item.m_Lore = "/mobsound blaze burn "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rBlaze Sound: Death"
		Item.m_Lore = "/mobsound blaze death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rBlaze Sound: Hurt"
		Item.m_Lore = "/mobsound blaze hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rBlaze Sound: Shoot"
		Item.m_Lore = "/mobsound blaze shoot "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for blaze sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "chicken" then
		local Item = cItem(288)

		Item.m_CustomName = "§rChicken Sound: Ambient"
		Item.m_Lore = "/mobsound chicken ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rChicken Sound: Death"
		Item.m_Lore = "/mobsound chicken death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rChicken Sound: Egg"
		Item.m_Lore = "/mobsound chicken egg "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rChicken Sound: Hurt"
		Item.m_Lore = "/mobsound chicken hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rChicken Sound: Step"
		Item.m_Lore = "/mobsound chicken step "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for chicken sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "cow" then
		local Item = cItem(334)

		Item.m_CustomName = "§rCow Sound: Ambient"
		Item.m_Lore = "/mobsound cow ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rCow Sound: Death"
		Item.m_Lore = "/mobsound cow death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rCow Sound: Hurt"
		Item.m_Lore = "/mobsound cow hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rCow Sound: Milk"
		Item.m_Lore = "/mobsound cow milk "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rCow Sound: Step"
		Item.m_Lore = "/mobsound cow step "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for cow sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "creeper" then
		local Item = cItem(289)

		Item.m_CustomName = "§rCreeper Sound: Death"
		Item.m_Lore = "/mobsound creeper death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rCreeper Sound: Explode"
		Item.m_Lore = "/mobsound creeper explode "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rCreeper Sound: Hurt"
		Item.m_Lore = "/mobsound creeper hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rCreeper Sound: Primed"
		Item.m_Lore = "/mobsound creeper primed "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for creeper sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "enderdragon" then
		local Item = cItem(263)

		Item.m_CustomName = "§rEnder Dragon Sound: Ambient"
		Item.m_Lore = "/mobsound enderdragon ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rEnder Dragon Sound: Death"
		Item.m_Lore = "/mobsound enderdragon death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rEnder Dragon Sound: Flap"
		Item.m_Lore = "/mobsound enderdragon flap "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rEnder Dragon Sound: Growl"
		Item.m_Lore = "/mobsound enderdragon growl "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rEnder Dragon Sound: Hurt"
		Item.m_Lore = "/mobsound enderdragon hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rEnder Dragon Sound: Shoot"
		Item.m_Lore = "/mobsound enderdragon shoot "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for ender dragon sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "enderman" then
		local Item = cItem(381)

		Item.m_CustomName = "§rEnderman Sound: Ambient"
		Item.m_Lore = "/mobsound enderman ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rEnderman Sound: Death"
		Item.m_Lore = "/mobsound enderman death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rEnderman Sound: Hurt"
		Item.m_Lore = "/mobsound enderman hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rEnderman Sound: Scream"
		Item.m_Lore = "/mobsound enderman scream "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rEnderman Sound: Stare"
		Item.m_Lore = "/mobsound enderman stare "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rEnderman Sound: Teleport"
		Item.m_Lore = "/mobsound enderman teleport "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for enderman sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "endermite" then
		local Item = cItem(381)

		Item.m_CustomName = "§rEndermite Sound: Ambient"
		Item.m_Lore = "/mobsound endermite ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rEndermite Sound: Death"
		Item.m_Lore = "/mobsound endermite death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rEndermite Sound: Hurt"
		Item.m_Lore = "/mobsound endermite hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rEndermite Sound: Step"
		Item.m_Lore = "/mobsound endermite step "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for endermite sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "ghast" then
		local Item = cItem(370)

		Item.m_CustomName = "§rGhast Sound: Ambient"
		Item.m_Lore = "/mobsound ghast ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rGhast Sound: Death"
		Item.m_Lore = "/mobsound ghast death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rGhast Sound: Hurt"
		Item.m_Lore = "/mobsound ghast hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rGhast Sound: Scream"
		Item.m_Lore = "/mobsound ghast scream "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rGhast Sound: Shoot"
		Item.m_Lore = "/mobsound ghast shoot "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rGhast Sound: Warn"
		Item.m_Lore = "/mobsound ghast warn "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for ghast sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "guardian" and Split[3] == "elder" then
		local Item = cItem(409)

		Item.m_CustomName = "§rElder Guardian Sound: Ambient"
		Item.m_Lore = "/mobsound guardian elder ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rElder Guardian Sound: Curse"
		Item.m_Lore = "/mobsound guardian elder curse "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rElder Guardian Sound: Death"
		Item.m_Lore = "/mobsound guardian elder death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rElder Guardian Sound: Hurt"
		Item.m_Lore = "/mobsound guardian elder hurt "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for elder guardian sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "guardian" and Split[3] == "land" then
		local Item = cItem(409)

		Item.m_CustomName = "§rLand Guardian Sound: Ambient"
		Item.m_Lore = "/mobsound guardian land ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rLand Guardian Sound: Death"
		Item.m_Lore = "/mobsound guardian land death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rLand Guardian Sound: Hurt"
		Item.m_Lore = "/mobsound guardian land hurt "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for land guardian sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "guardian" and Split[3] == "underwater" then
		local Item = cItem(409)

		Item.m_CustomName = "§rUnderwater Guardian Sound: Ambient"
		Item.m_Lore = "/mobsound guardian underwater ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rUnderwater Guardian Sound: Attack"
		Item.m_Lore = "/mobsound guardian underwater attack "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rUnderwater Guardian Sound: Death"
		Item.m_Lore = "/mobsound guardian underwater death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rUnderwater Guardian Sound: Flop"
		Item.m_Lore = "/mobsound guardian underwater flop "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rUnderwater Guardian Sound: Hurt"
		Item.m_Lore = "/mobsound guardian underwater hurt "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for underwater guardian sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "guardian" then
		Player:SendMessageInfo("Usage: " ..Split[1].. " " ..Split[2].. " <elder|land|underwater>")
		return true
	end

	if Split[2] == "horse" and Split[3] == "donkey" then
		local Item = cItem(417)

		Item.m_CustomName = "§rDonkey Sound: Ambient"
		Item.m_Lore = "/mobsound horse donkey ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rDonkey Sound: Angry"
		Item.m_Lore = "/mobsound horse donkey angry "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rDonkey Sound: Chest"
		Item.m_Lore = "/mobsound horse donkey chest "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rDonkey Sound: Death"
		Item.m_Lore = "/mobsound horse donkey death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rDonkey Sound: Hurt"
		Item.m_Lore = "/mobsound horse donkey hurt "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for donkey sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "horse" and Split[3] == "mule" then
		local Item = cItem(417)

		Item.m_CustomName = "§rMule Sound: Ambient"
		Item.m_Lore = "/mobsound horse mule ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rMule Sound: Death"
		Item.m_Lore = "/mobsound horse mule death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rMule Sound: Hurt"
		Item.m_Lore = "/mobsound horse mule hurt "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for mule sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "horse" and Split[3] == "normal" then
		local Item = cItem(417)

		Item.m_CustomName = "§rHorse Sound: Ambient"
		Item.m_Lore = "/mobsound horse normal ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rHorse Sound: Angry"
		Item.m_Lore = "/mobsound horse normal angry "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rHorse Sound: Armor"
		Item.m_Lore = "/mobsound horse normal armor "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rHorse Sound: Breathe"
		Item.m_Lore = "/mobsound horse normal breathe "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rHorse Sound: Death"
		Item.m_Lore = "/mobsound horse normal death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rHorse Sound: Eat"
		Item.m_Lore = "/mobsound horse normal eat "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rHorse Sound: Gallop"
		Item.m_Lore = "/mobsound horse normal gallop "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rHorse Sound: Jump"
		Item.m_Lore = "/mobsound horse normal jump "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rHorse Sound: Land"
		Item.m_Lore = "/mobsound horse normal land "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rHorse Sound: Saddle"
		Item.m_Lore = "/mobsound horse normal saddle "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rHorse Sound: Step"
		Item.m_Lore = "/mobsound horse normal step "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rHorse Sound: Step on Wood"
		Item.m_Lore = "/mobsound horse normal step_wood "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for horse sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "horse" and Split[3] == "skeleton" then
		local Item = cItem(417)

		Item.m_CustomName = "§rSkeleton Horse Sound: Ambient"
		Item.m_Lore = "/mobsound horse skeleton ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSkeleton Horse Sound: Death"
		Item.m_Lore = "/mobsound horse skeleton death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSkeleton Horse Sound: Hurt"
		Item.m_Lore = "/mobsound horse skeleton hurt "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for skeleton horse sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "horse" and Split[3] == "zombie" then
		local Item = cItem(417)

		Item.m_CustomName = "§rZombie Horse Sound: Ambient"
		Item.m_Lore = "/mobsound horse zombie ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rZombie Horse Sound: Death"
		Item.m_Lore = "/mobsound horse zombie death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rZombie Horse Sound: Hurt"
		Item.m_Lore = "/mobsound horse zombie hurt "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for zombie horse sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "horse" then
		Player:SendMessageInfo("Usage: " ..Split[1].. " " ..Split[2].. " <donkey|mule|normal|skeleton|zombie>")
		return true
	end

	if Split[2] == "irongolem" then
		local Item = cItem(265)

		Item.m_CustomName = "§rIron Golem Sound: Attack"
		Item.m_Lore = "/mobsound irongolem attack "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rIron Golem Sound: Death"
		Item.m_Lore = "/mobsound irongolem death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rIron Golem Sound: Hurt"
		Item.m_Lore = "/mobsound irongolem hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rIron Golem Sound: Step"
		Item.m_Lore = "/mobsound irongolem step "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for iron golem sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "magmacube" and Split[3] == "normal" then
		local Item = cItem(378)

		Item.m_CustomName = "§rNormal Sized Magma Cube Sound: Death"
		Item.m_Lore = "/mobsound magmacube normal death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rNormal Sized Magma Cube Sound: Hurt"
		Item.m_Lore = "/mobsound magmacube normal hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rNormal Sized Magma Cube Sound: Jump"
		Item.m_Lore = "/mobsound magmacube normal jump "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rNormal Sized Magma Cube Sound: Squish"
		Item.m_Lore = "/mobsound magmacube normal squish "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for normal sized magma cube sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "magmacube" and Split[3] == "small" then
		local Item = cItem(378)

		Item.m_CustomName = "§rSmall Sized Magma Cube Sound: Death"
		Item.m_Lore = "/mobsound magmacube small death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSmall Sized Magma Cube Sound: Hurt"
		Item.m_Lore = "/mobsound magmacube small hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSmall Sized Magma Cube Sound: Squish"
		Item.m_Lore = "/mobsound magmacube small squish "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for small sized magma cube sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "magmacube" then
		Player:SendMessageInfo("Usage: " ..Split[1].. " " ..Split[2].. " <normal|small>")
		return true
	end

	if Split[2] == "ocelot" then
		local Item = cItem(349)

		Item.m_CustomName = "§rOcelot Sound: Ambient"
		Item.m_Lore = "/mobsound ocelot ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rOcelot Sound: Death"
		Item.m_Lore = "/mobsound ocelot death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rOcelot Sound: Hiss"
		Item.m_Lore = "/mobsound ocelot hiss "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rOcelot Sound: Hurt"
		Item.m_Lore = "/mobsound ocelot hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rOcelot Sound: Purr"
		Item.m_Lore = "/mobsound ocelot purr "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rOcelot Sound: Purreow"
		Item.m_Lore = "/mobsound ocelot purreow "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for ocelot sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "pig" then
		local Item = cItem(319)

		Item.m_CustomName = "§rPig Sound: Ambient"
		Item.m_Lore = "/mobsound pig ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rPig Sound: Death"
		Item.m_Lore = "/mobsound pig death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rPig Sound: Hurt"
		Item.m_Lore = "/mobsound pig hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rPig Sound: Saddle"
		Item.m_Lore = "/mobsound pig saddle "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rPig Sound: Step"
		Item.m_Lore = "/mobsound pig step "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for pig sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "player" and Split[3] == "attack" then
		local Item = cItem(339)

		Item.m_CustomName = "§rPlayer Attack Sound: Crit"
		Item.m_Lore = "/mobsound player attack crit "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rPlayer Attack Sound: Knockback"
		Item.m_Lore = "/mobsound player attack knockback "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rPlayer Attack Sound: No Damage"
		Item.m_Lore = "/mobsound player attack nodamage "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rPlayer Attack Sound: Strong"
		Item.m_Lore = "/mobsound player attack strong "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rPlayer Attack Sound: Sweep"
		Item.m_Lore = "/mobsound player attack sweep "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rPlayer Attack Sound: Weak"
		Item.m_Lore = "/mobsound player attack weak "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for player attack sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "player" and Split[3] == "general" then
		local Item = cItem(339)

		Item.m_CustomName = "§rGeneral Player Sound: Big Fall"
		Item.m_Lore = "/mobsound player general big_fall "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rGeneral Player Sound: Breath"
		Item.m_Lore = "/mobsound player general breath "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rGeneral Player Sound: Burp"
		Item.m_Lore = "/mobsound player general burp "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rGeneral Player Sound: Death"
		Item.m_Lore = "/mobsound player general death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rGeneral Player Sound: Drink"
		Item.m_Lore = "/mobsound player general drink "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rGeneral Player Sound: Eat"
		Item.m_Lore = "/mobsound player general eat "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rGeneral Player Sound: Hurt"
		Item.m_Lore = "/mobsound player general hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rGeneral Player Sound: Level Up"
		Item.m_Lore = "/mobsound player general levelup "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rGeneral Player Sound: Small Fall"
		Item.m_Lore = "/mobsound player general small_fall "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rGeneral Player Sound: Splash"
		Item.m_Lore = "/mobsound player general splash "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rGeneral Player Sound: Swim"
		Item.m_Lore = "/mobsound player general swim "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for general player sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "player" then
		Player:SendMessageInfo("Usage: " ..Split[1].. " " ..Split[2].. " <attack|general>")
		return true
	end

	if Split[2] == "rabbit" then
		local Item = cItem(415)

		Item.m_CustomName = "§rRabbit Sound: Ambient"
		Item.m_Lore = "/mobsound rabbit ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rRabbit Sound: Attack"
		Item.m_Lore = "/mobsound rabbit attack "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rRabbit Sound: Death"
		Item.m_Lore = "/mobsound rabbit death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rRabbit Sound: Hurt"
		Item.m_Lore = "/mobsound rabbit hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rRabbit Sound: Jump"
		Item.m_Lore = "/mobsound rabbit jump "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for rabbit sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "sheep" then
		local Item = cItem(359)

		Item.m_CustomName = "§rSheep Sound: Ambient"
		Item.m_Lore = "/mobsound sheep ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSheep Sound: Death"
		Item.m_Lore = "/mobsound sheep death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSheep Sound: Hurt"
		Item.m_Lore = "/mobsound sheep hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSheep Sound: Shear"
		Item.m_Lore = "/mobsound sheep shear "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSheep Sound: Step"
		Item.m_Lore = "/mobsound sheep step "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for sheep sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "shulker" then
		local Item = cItem(351, 1, 9)

		Item.m_CustomName = "§rShulker Sound: Ambient"
		Item.m_Lore = "/mobsound shulker ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rShulker Sound: Bullet Hit"
		Item.m_Lore = "/mobsound shulker bullet_hit "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rShulker Sound: Bullet Hurt"
		Item.m_Lore = "/mobsound shulker bullet_hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rShulker Sound: Close"
		Item.m_Lore = "/mobsound shulker close "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rShulker Sound: Death"
		Item.m_Lore = "/mobsound shulker death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rShulker Sound: Hurt"
		Item.m_Lore = "/mobsound shulker hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rShulker Sound: Hurt Closed"
		Item.m_Lore = "/mobsound shulker hurt_closed "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rShulker Sound: Open"
		Item.m_Lore = "/mobsound shulker open "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rShulker Sound: Shoot"
		Item.m_Lore = "/mobsound shulker shoot "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rShulker Sound: Teleport"
		Item.m_Lore = "/mobsound shulker teleport "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for shulker sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "silverfish" then
		local Item = cItem(351, 1, 8)

		Item.m_CustomName = "§rSilverfish Sound: Ambient"
		Item.m_Lore = "/mobsound silverfish ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSilverfish Sound: Death"
		Item.m_Lore = "/mobsound silverfish death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSilverfish Sound: Hurt"
		Item.m_Lore = "/mobsound silverfish hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSilverfish Sound: Step"
		Item.m_Lore = "/mobsound silverfish step "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for silverfish sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "skeleton" then
		local Item = cItem(351, 1, 15)

		Item.m_CustomName = "§rSkeleton Sound: Ambient"
		Item.m_Lore = "/mobsound skeleton ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSkeleton Sound: Death"
		Item.m_Lore = "/mobsound skeleton death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSkeleton Sound: Hurt"
		Item.m_Lore = "/mobsound skeleton hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSkeleton Sound: Shoot"
		Item.m_Lore = "/mobsound skeleton shoot "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSkeleton Sound: Step"
		Item.m_Lore = "/mobsound skeleton step "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for skeleton sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "slime" and Split[3] == "normal" then
		local Item = cItem(341)

		Item.m_CustomName = "§rNormal Sized Slime Sound: Death"
		Item.m_Lore = "/mobsound slime normal death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rNormal Sized Slime Sound: Hurt"
		Item.m_Lore = "/mobsound slime normal hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rNormal Sized Slime Sound: Jump"
		Item.m_Lore = "/mobsound slime normal jump "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rNormal Sized Slime Sound: Squish"
		Item.m_Lore = "/mobsound slime normal squish "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for normal sized slime sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "slime" and Split[3] == "small" then
		local Item = cItem(341)

		Item.m_CustomName = "§rSmall Sized Slime Sound: Death"
		Item.m_Lore = "/mobsound slime small death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSmall Sized Slime Sound: Hurt"
		Item.m_Lore = "/mobsound slime small hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSmall Sized Slime Sound: Jump"
		Item.m_Lore = "/mobsound slime small jump "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSmall Sized Slime Sound: Squish"
		Item.m_Lore = "/mobsound slime small squish "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for small sized slime sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "slime" then
		Player:SendMessageInfo("Usage: " ..Split[1].. " " ..Split[2].. " <normal|small>")
		return true
	end

	if Split[2] == "snowgolem" then
		local Item = cItem(353)

		Item.m_CustomName = "§rSnow Golem Sound: Ambient"
		Item.m_Lore = "/mobsound snowgolem ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSnow Golem Sound: Death"
		Item.m_Lore = "/mobsound snowgolem death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSnow Golem Sound: Hurt"
		Item.m_Lore = "/mobsound snowgolem hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSnow Golem Sound: Shoot"
		Item.m_Lore = "/mobsound snowgolem shoot "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for snow golem sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "spider" then
		local Item = cItem(375)

		Item.m_CustomName = "§rSpider Sound: Ambient"
		Item.m_Lore = "/mobsound spider ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSpider Sound: Death"
		Item.m_Lore = "/mobsound spider death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSpider Sound: Hurt"
		Item.m_Lore = "/mobsound spider hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSpider Sound: Step"
		Item.m_Lore = "/mobsound spider step "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for spider sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "squid" then
		local Item = cItem(351)

		Item.m_CustomName = "§rSquid Sound: Ambient"
		Item.m_Lore = "/mobsound squid ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSquid Sound: Death"
		Item.m_Lore = "/mobsound squid death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSquid Sound: Hurt"
		Item.m_Lore = "/mobsound squid hurt "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for squid sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "villager" then
		local Item = cItem(388)

		Item.m_CustomName = "§rVillager Sound: Ambient"
		Item.m_Lore = "/mobsound villager ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rVillager Sound: Death"
		Item.m_Lore = "/mobsound villager death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rVillager Sound: Hurt"
		Item.m_Lore = "/mobsound villager hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rVillager Sound: No"
		Item.m_Lore = "/mobsound villager no "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rVillager Sound: Trading"
		Item.m_Lore = "/mobsound villager trading "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rVillager Sound: Yes"
		Item.m_Lore = "/mobsound villager yes "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for villager sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "witch" then
		local Item = cItem(382)

		Item.m_CustomName = "§rWitch Sound: Ambient"
		Item.m_Lore = "/mobsound witch ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rWitch Sound: Death"
		Item.m_Lore = "/mobsound witch death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rWitch Sound: Drink"
		Item.m_Lore = "/mobsound witch drink "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rWitch Sound: Hurt"
		Item.m_Lore = "/mobsound witch hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rWitch Sound: Throw"
		Item.m_Lore = "/mobsound witch throw "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for witch sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "wither" then
		local Item = cItem(263)

		Item.m_CustomName = "§rWither Sound: Ambient"
		Item.m_Lore = "/mobsound wither ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rWither Sound: Break Block"
		Item.m_Lore = "/mobsound wither break_block "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rWither Sound: Death"
		Item.m_Lore = "/mobsound wither death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rWither Sound: Hurt"
		Item.m_Lore = "/mobsound wither hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rWither Sound: Shoot"
		Item.m_Lore = "/mobsound wither shoot "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rWither Sound: Spawn"
		Item.m_Lore = "/mobsound wither spawn "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for wither sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "wolf" then
		local Item = cItem(352)

		Item.m_CustomName = "§rWolf Sound: Ambient"
		Item.m_Lore = "/mobsound wolf ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rWolf Sound: Death"
		Item.m_Lore = "/mobsound wolf death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rWolf Sound: Growl"
		Item.m_Lore = "/mobsound wolf growl "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rWolf Sound: Howl"
		Item.m_Lore = "/mobsound wolf howl "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rWolf Sound: Hurt"
		Item.m_Lore = "/mobsound wolf hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rWolf Sound: Pant"
		Item.m_Lore = "/mobsound wolf pant "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rWolf Sound: Shake"
		Item.m_Lore = "/mobsound wolf shake "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rWolf Sound: Step"
		Item.m_Lore = "/mobsound wolf step "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rWolf Sound: Whine"
		Item.m_Lore = "/mobsound wolf whine "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for wolf sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "zombie" and Split[3] == "normal" then
		local Item = cItem(351)

		Item.m_CustomName = "§rNormal Zombie Sound: Ambient"
		Item.m_Lore = "/mobsound zombie normal ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rNormal Zombie Sound: Attack Wooden Door"
		Item.m_Lore = "/mobsound zombie normal attack_door_wood "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rNormal Zombie Sound: Attack Iron Door"
		Item.m_Lore = "/mobsound zombie normal attack_iron_door "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rNormal Zombie Sound: Break Wooden Door"
		Item.m_Lore = "/mobsound zombie normal break_door_wood "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rNormal Zombie Sound: Death"
		Item.m_Lore = "/mobsound zombie normal death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rNormal Zombie Sound: Hurt"
		Item.m_Lore = "/mobsound zombie normal hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rNormal Zombie Sound: Infect"
		Item.m_Lore = "/mobsound zombie normal infect "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rNormal Zombie Sound: Step"
		Item.m_Lore = "/mobsound zombie normal step "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for normal zombie sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "zombie" and Split[3] == "villager" then
		local Item = cItem(351)

		Item.m_CustomName = "§rVillager Zombie Sound: Ambient"
		Item.m_Lore = "/mobsound zombie villager ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rVillager Zombie Sound: Converted"
		Item.m_Lore = "/mobsound zombie villager converted "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rVillager Zombie Sound: Cure"
		Item.m_Lore = "/mobsound zombie villager cure "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rVillager Zombie Sound: Death"
		Item.m_Lore = "/mobsound zombie villager death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rVIllager Zombie Sound: Hurt"
		Item.m_Lore = "/mobsound zombie villager hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rVillager Zombie Sound: Step"
		Item.m_Lore = "/mobsound zombie villager step "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for villager zombie sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "zombie" then
		Player:SendMessageInfo("Usage: " ..Split[1].. " " ..Split[2].. " <normal|villager>")
		return true
	end

	if Split[2] == "zombiepigman" then
		local Item = cItem(371)

		Item.m_CustomName = "§rZombie Pigman Sound: Ambient"
		Item.m_Lore = "/mobsound zombiepigman ambient "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rZombie Pigman Sound: Angry"
		Item.m_Lore = "/mobsound zombiepigman angry "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rZombie Pigman Sound: Death"
		Item.m_Lore = "/mobsound zombiepigman death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rZombie Pigman Sound: Hurt"
		Item.m_Lore = "/mobsound zombiepigman hurt "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for zombie pigman sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	-- If nothing above matches the second split, display an error
	Player:SendMessageFailure("Invalid mob type")
	return true
end
