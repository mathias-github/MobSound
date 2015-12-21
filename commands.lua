-- Handles the /mobsound command
function HandleMobSoundCommand(Split, Player)
	-- Show usage info is second split is empty
	if Split[2] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." <mobtype> <sound>")
		Player:SendMessageInfo("Available types: bat, blaze, chicken, cow, creeper, enderdragon, enderman, endermite, ghast, guardian, horse, irongolem, magmacube, ocelot, pig, player, rabbit, sheep, silverfish, skeleton, slime, spider, villager, wither, wolf, zombie, zombiepigman")
		return true
	end

	-- Shortcuts
	X = Player:GetPosX()
	Y = Player:GetPosY()
	Z = Player:GetPosZ()

	-- Handles arguments for bat sounds
	if Split[2] == "bat" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <death|hurt|idle|loop|takeoff>")
		return true
	elseif Split[2] == "bat" and Split[3] == "death" or Split[2] == "bat" and Split[3] == "hurt" or Split[2] == "bat" and Split[3] == "idle" or Split[2] == "bat" and Split[3] == "loop" or Split[2] == "bat" and Split[3] == "takeoff" then
		Player:GetWorld():BroadcastSoundEffect("mob.bat.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for blaze sounds
	if Split[2] == "blaze" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <breathe|death|hit>")
		return true
	elseif Split[2] == "blaze" and Split[3] == "breathe" or Split[2] == "blaze" and Split[3] == "death" or Split[2] == "blaze" and Split[3] == "hit" then
		Player:GetWorld():BroadcastSoundEffect("mob.blaze.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for chicken sounds
	if Split[2] == "chicken" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <hurt|plop|say|step>")
		return true
	elseif Split[2] == "chicken" and Split[3] == "hurt" or Split[2] == "chicken" and Split[3] == "plop" or Split[2] == "chicken" and Split[3] == "say" or Split[2] == "chicken" and Split[3] == "step" then
		Player:GetWorld():BroadcastSoundEffect("mob.chicken.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for cow sounds
	if Split[2] == "cow" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <hurt|say|step>")
		return true
	elseif Split[2] == "cow" and Split[3] == "hurt" or Split[2] == "cow" and Split[3] == "say" or Split[2] == "cow" and Split[3] == "step" then
		Player:GetWorld():BroadcastSoundEffect("mob.cow.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for creeper sounds
	if Split[2] == "creeper" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <death|explode|primed|say>")
		return true
	elseif Split[2] == "creeper" and Split[3] == "death" or Split[2] == "creeper" and Split[3] == "say" then
		Player:GetWorld():BroadcastSoundEffect("mob.creeper.".. Split[3], X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "creeper" and Split[3] == "explode" then
		Player:GetWorld():BroadcastSoundEffect("random.".. Split[3], X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "creeper" and Split[3] == "primed" then
		Player:GetWorld():BroadcastSoundEffect("creeper.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for enderdragon sounds
	if Split[2] == "enderdragon" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <end|growl|hit|wings>")
		return true
	elseif Split[2] == "enderdragon" and Split[3] == "end" or Split[2] == "enderdragon" and Split[3] == "growl" or Split[2] == "enderdragon" and Split[3] == "hit" or Split[2] == "enderdragon" and Split[3] == "wings" then
		Player:GetWorld():BroadcastSoundEffect("mob.enderdragon.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for enderman sounds
	if Split[2] == "enderman" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <death|hit|idle|portal|scream|stare>")
		return true
	elseif Split[2] == "enderman" and Split[3] == "death" or Split[2] == "enderman" and Split[3] == "hit" or Split[2] == "enderman" and Split[3] == "idle" or Split[2] == "enderman" and Split[3] == "portal" or Split[2] == "enderman" and Split[3] == "scream" or Split[2] == "enderman" and Split[3] == "stare" then
		Player:GetWorld():BroadcastSoundEffect("mob.endermen.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for endermite sounds
	if Split[2] == "endermite" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <hit|kill|say|step>")
		return true
	elseif Split[2] == "endermite" and Split[3] == "hit" or Split[2] == "endermite" and Split[3] == "kill" or Split[2] == "endermite" and Split[3] == "say" or Split[2] == "endermite" and Split[3] == "step" then
		Player:GetWorld():BroadcastSoundEffect("mob.silverfish.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for ghast sounds
	if Split[2] == "ghast" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <affectionate_scream|charge|death|fireball|moan|scream>")
		return true
	elseif Split[2] == "ghast" and Split[3] == "affectionate_scream" or Split[2] == "ghast" and Split[3] == "charge" or Split[2] == "ghast" and Split[3] == "death" or Split[2] == "ghast" and Split[3] == "fireball" or Split[2] == "ghast" and Split[3] == "moan" or Split[2] == "ghast" and Split[3] == "scream" then
		Player:GetWorld():BroadcastSoundEffect("mob.ghast.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for guardian sounds
	if Split[2] == "guardian" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <elder|land|underwater> <soundname>")
		return true
	elseif Split[2] == "guardian" and Split[3] == "elder" and Split[4] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." ".. Split[3] .." <death|hit|idle>")
		return true
	elseif Split[2] == "guardian" and Split[3] == "land" and Split[4] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." ".. Split[3] .." <death|hit|idle>")
		return true
	elseif Split[2] == "guardian" and Split[3] == "underwater" and Split[4] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." ".. Split[3] .." <attack|curse|death|flop|hit|idle>")
		return true
	elseif Split[2] == "guardian" and Split[3] == "elder" and Split[4] == "death" or Split[2] == "guardian" and Split[3] == "elder" and Split[4] == "hit" or Split[2] == "guardian" and Split[3] == "elder" and Split[4] == "idle" then
		Player:GetWorld():BroadcastSoundEffect("mob.guardian.elder.".. Split[4], X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "guardian" and Split[3] == "land" and Split[4] == "death" or Split[2] == "guardian" and Split[3] == "land" and Split[4] == "hit" or Split[2] == "guardian" and Split[3] == "land" and Split[4] == "idle" then
		Player:GetWorld():BroadcastSoundEffect("mob.guardian.land.".. Split[4], X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "guardian" and Split[3] == "underwater" and Split[4] == "attack" or Split[2] == "guardian" and Split[3] == "underwater" and Split[4] == "curse" or Split[2] == "guardian" and Split[3] == "underwater" and Split[4] == "death" or Split[2] == "guardian" and Split[3] == "underwater" and Split[4] == "flop" or Split[2] == "guardian" and Split[3] == "underwater" and Split[4] == "hit" or Split[2] == "guardian" and Split[3] == "underwater" and Split[4] == "idle" then
		Player:GetWorld():BroadcastSoundEffect("mob.guardian.".. Split[4], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for horse sounds
	if Split[2] == "horse" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <donkey|normal|skeleton|zombie> <soundname>")
		return true
	elseif Split[2] == "horse" and Split[3] == "donkey" and Split[4] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." ".. Split[3] .." <angry|death|hit|idle>")
		return true
	elseif Split[2] == "horse" and Split[3] == "normal" and Split[4] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." ".. Split[3] .." <death|gallop|hit|idle|jump|land|leather|soft|wood>")
		return true
	elseif Split[2] == "horse" and Split[3] == "skeleton" and Split[4] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." ".. Split[3] .." <death|hit|idle>")
		return true
	elseif Split[2] == "horse" and Split[3] == "zombie" and Split[4] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." ".. Split[3] .." <death|hit|idle>")
		return true 
	elseif Split[2] == "horse" and Split[3] == "donkey" and Split[4] == "angry" or Split[2] == "horse" and Split[3] == "donkey" and Split[4] == "death" or Split[2] == "horse" and Split[3] == "donkey" and Split[4] == "hit" or Split[2] == "horse" and Split[3] == "donkey" and Split[4] == "idle" then
		Player:GetWorld():BroadcastSoundEffect("mob.horse.donkey.".. Split[4], X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "horse" and Split[3] == "normal" and Split[4] == "death" or Split[2] == "horse" and Split[3] == "normal" and Split[4] == "gallop" or Split[2] == "horse" and Split[3] == "normal" and Split[4] == "hit" or Split[2] == "horse" and Split[3] == "normal" and Split[4] == "idle" or Split[2] == "horse" and Split[3] == "normal" and Split[4] == "jump" or Split[2] == "horse" and Split[3] == "normal" and Split[4] == "land" or Split[2] == "horse" and Split[3] == "normal" and Split[4] == "leather" or Split[2] == "horse" and Split[3] == "normal" and Split[4] == "soft" or Split[2] == "horse" and Split[3] == "normal" and Split[4] == "wood" then
		Player:GetWorld():BroadcastSoundEffect("mob.horse.".. Split[4], X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "horse" and Split[3] == "skeleton" and Split[4] == "death" or Split[2] == "horse" and Split[3] == "skeleton" and Split[4] == "hit" or Split[2] == "horse" and Split[3] == "skeleton" and Split[4] == "idle" then
		Player:GetWorld():BroadcastSoundEffect("mob.horse.skeleton.".. Split[4], X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "horse" and Split[3] == "zombie" and Split[4] == "death" or Split[2] == "horse" and Split[3] == "zombie" and Split[4] == "hit" or Split[2] == "horse" and Split[3] == "zombie" and Split[4] == "idle" then
		Player:GetWorld():BroadcastSoundEffect("mob.horse.zombie.".. Split[4], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for iron golem sounds
	if Split[2] == "irongolem" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <death|hit|throw|walk>")
		return true
	elseif Split[2] == "irongolem" and Split[3] == "death" or Split[2] == "irongolem" and Split[3] == "hit" or Split[2] == "irongolem" and Split[3] == "throw" or Split[2] == "irongolem" and Split[3] == "walk" then
		Player:GetWorld():BroadcastSoundEffect("mob.irongolem.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for magmacube sounds
	if Split[2] == "magmacube" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <big|jump|small>")
		return true
	elseif Split[2] == "magmacube" and Split[3] == "big" or Split[2] == "magmacube" and Split[3] == "jump" or Split[2] == "magmacube" and Split[3] == "small" then
		Player:GetWorld():BroadcastSoundEffect("mob.magmacube.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for ocelot sounds
	if Split[2] == "ocelot" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <hiss|hitt|meow|purr|purreow>")
		return true
	elseif Split[2] == "ocelot" and Split[3] == "hiss" or Split[2] == "ocelot" and Split[3] == "meow" or Split[2] == "ocelot" and Split[3] == "purr" or Split[2] == "ocelot" and Split[3] == "purreow" then
		Player:GetWorld():BroadcastSoundEffect("mob.cat.".. Split[3], X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "ocelot" and Split[3] == "hit" then
		Player:GetWorld():BroadcastSoundEffect("mob.cat.hitt", X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for pig sounds
	if Split[2] == "pig" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <death|say|step>")
		return true
	elseif Split[2] == "pig" and Split[3] == "death" or Split[2] == "pig" and Split[3] == "say" or Split[2] == "pig" and Split[3] == "step" then
		Player:GetWorld():BroadcastSoundEffect("mob.pig.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for player sounds
	if Split[2] == "player" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <burp|death|drink|eat|fallbig|fallsmall|hurt>")
		return true
	elseif Split[2] == "player" and Split[3] == "break" or Split[2] == "player" and Split[3] == "burp" or Split[2] == "player" and Split[3] == "drink" or Split[2] == "player" and Split[3] == "eat" then
		Player:GetWorld():BroadcastSoundEffect("random.".. Split[3], X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "player" and Split[3] == "death" then
		Player:GetWorld():BroadcastSoundEffect("game.player.die", X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "player" and Split[3] == "fallbig" then
		Player:GetWorld():BroadcastSoundEffect("game.player.hurt.fall.big", X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "player" and Split[3] == "fallsmall" then
		Player:GetWorld():BroadcastSoundEffect("game.player.hurt.fall.small", X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "player" and Split[3] == "hurt" then
		Player:GetWorld():BroadcastSoundEffect("game.player.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for rabbit sounds
	if Split[2] == "rabbit" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <death|hop|hurt|idle>")
		return true
	elseif Split[2] == "rabbit" and Split[3] == "death" or Split[2] == "rabbit" and Split[3] == "hop" or Split[2] == "rabbit" and Split[3] == "hurt" or Split[2] == "rabbit" and Split[3] == "idle" then
		Player:GetWorld():BroadcastSoundEffect("mob.rabbit.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for sheep sounds
	if Split[2] == "sheep" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <say|shear|step>")
		return true
	elseif Split[2] == "sheep" and Split[3] == "say" or Split[2] == "sheep" and Split[3] == "shear" or Split[2] == "sheep" and Split[3] == "step" then
		Player:GetWorld():BroadcastSoundEffect("mob.sheep.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for silverfish sounds
	if Split[2] == "silverfish" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <hit|kill|say|step>")
		return true
	elseif Split[2] == "silverfish" and Split[3] == "hit" or Split[2] == "silverfish" and Split[3] == "kill" or Split[2] == "silverfish" and Split[3] == "say" or Split[2] == "silverfish" and Split[3] == "step" then
		Player:GetWorld():BroadcastSoundEffect("mob.silverfish.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for skeleton sounds
	if Split[2] == "skeleton" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <bow|death|hurt|say|step>")
		return true
	elseif Split[2] == "skeleton" and Split[3] == "bow" then
		Player:GetWorld():BroadcastSoundEffect("random."..Split[3], Player:GetPosX(), Player:GetPosY(), Player:GetPosZ(), 1, 1)
		return true
	elseif Split[2] == "skeleton" and Split[3] == "death" or Split[2] == "skeleton" and Split[3] == "hurt" or Split[2] == "skeleton" and Split[3] == "say" or Split[2] == "skeleton" and Split[3] == "step" then
		Player:GetWorld():BroadcastSoundEffect("mob.skeleton.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for slime sounds
	if Split[2] == "slime" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <attack|big|small>")
		return true
	elseif Split[2] == "slime" and Split[3] == "attack" or Split[2] == "slime" and Split[3] == "big" or Split[2] == "slime" and Split[3] == "small" then
		Player:GetWorld():BroadcastSoundEffect("mob.slime.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for spider sounds
	if Split[2] == "spider" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <death|say|step>")
		return true
	elseif Split[2] == "spider" and Split[3] == "death" or Split[2] == "spider" and Split[3] == "say" or Split[2] == "spider" and Split[3] == "step" then
		Player:GetWorld():BroadcastSoundEffect("mob.spider.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for villager sounds
	if Split[2] == "villager" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <death|haggle|hit|idle|no|yes>")
		return true
	elseif Split[2] == "villager" and Split[3] == "death" or Split[2] == "villager" and Split[3] == "haggle" or Split[2] == "villager" and Split[3] == "hit" or Split[2] == "villager" and Split[3] == "idle" or Split[2] == "villager" and Split[3] == "no" or Split[2] == "villager" and Split[3] == "yes" then
		Player:GetWorld():BroadcastSoundEffect("mob.villager.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for wither sounds
	if Split[2] == "wither" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <death|hurt|idle|shoot|spawn>")
		return true
	elseif Split[2] == "wither" and Split[3] == "death" or Split[2] == "wither" and Split[3] == "hurt" or Split[2] == "wither" and Split[3] == "idle" or Split[2] == "wither" and Split[3] == "shoot" or Split[2] == "wither" and Split[3] == "spawn" then
		Player:GetWorld():BroadcastSoundEffect("mob.wither.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for wolf sounds
	if Split[2] == "wolf" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <bark|death|growl|howl|hurt|panting|shake|step|whine>")
		return true
	elseif Split[2] == "wolf" and Split[3] == "bark" or Split[2] == "wolf" and Split[3] == "death" or Split[2] == "wolf" and Split[3] == "growl" or Split[2] == "wolf" and Split[3] == "howl" or Split[2] == "wolf" and Split[3] == "hurt" or Split[2] == "wolf" and Split[3] == "panting" or Split[2] == "wolf" and Split[3] == "shake" or Split[2] == "wolf" and Split[3] == "step" or Split[2] == "wolf" and Split[3] == "whine" then
		Player:GetWorld():BroadcastSoundEffect("mob.wolf.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for zombie sounds
	if Split[2] == "zombie" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <death|hurt|infect|metal|remedy|say|step|unfect|wood|woodbreak>")
		return true
	elseif Split[2] == "zombie" and Split[3] == "death" or Split[2] == "zombie" and Split[3] == "hurt" or Split[2] == "zombie" and Split[3] == "infect" or Split[2] == "zombie" and Split[3] == "metal" or Split[2] == "zombie" and Split[3] == "remedy" or Split[2] == "zombie" and Split[3] == "say" or Split[2] == "zombie" and Split[3] == "step" or Split[2] == "zombie" and Split[3] == "unfect" or Split[2] == "zombie" and Split[3] == "wood" or Split[2] == "zombie" and Split[3] == "woodbreak" then
		Player:GetWorld():BroadcastSoundEffect("mob.zombie.".. Split[3], X, Y, Z, 1, 1)
		return true
	end

	-- Handles arguments for zombie pigman sounds
	if Split[2] == "zombiepigman" and Split[3] == nil then
		Player:SendMessageInfo("Usage: ".. Split[1] .." ".. Split[2] .." <angry|death|hurt|idle>")
		return true
	elseif Split[2] == "zombiepigman" and Split[3] == "angry" then 
		Player:GetWorld():BroadcastSoundEffect("mob.zombiepig.zpigangry", X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "zombiepigman" and Split[3] == "death" then
		Player:GetWorld():BroadcastSoundEffect("mob.zombiepig.zpigdeath", X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "zombiepigman" and Split[3] == "hurt" then
		Player:GetWorld():BroadcastSoundEffect("mob.zombiepig.zpighurt", X, Y, Z, 1, 1)
		return true
	elseif Split[2] == "zombiepigman" and Split[3] == "idle" then
		Player:GetWorld():BroadcastSoundEffect("mob.zombiepig.zpig", X, Y, Z, 1, 1)
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
		Player:SendMessageInfo("Available types: bat, blaze, chicken, cow, creeper, enderdragon, enderman, endermite, ghast, guardian, horse, irongolem, magmacube, ocelot, pig, player, rabbit, sheep, silverfish, skeleton, slime, spider, villager, wither, wolf, zombie, zombiepigman")
		return true
	end

	-- Places sound tools for specified mob in player's inventory. The tools have a custom name containing the mob and sound effect name, and a custom
	-- lore string containing the command for broadcasting the sound effect.
	if Split[2] == "bat" then
		Item = cItem(318)

		Item.m_CustomName = "§rBat Sound: Death"
		Item.m_Lore = "/mobsound bat death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rBat Sound: Hurt"
		Item.m_Lore = "/mobsound bat hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rBat Sound: Idle"
		Item.m_Lore = "/mobsound bat idle "
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
		Item = cItem(377)

		Item.m_CustomName = "§rBlaze Sound: Breathe"
		Item.m_Lore = "/mobsound blaze breathe "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rBlaze Sound: Death"
		Item.m_Lore = "/mobsound blaze death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rBlaze Sound: Hit"
		Item.m_Lore = "/mobsound blaze hit "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for blaze sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "chicken" then
		Item = cItem(288)

		Item.m_CustomName = "§rChicken Sound: Hurt"
		Item.m_Lore = "/mobsound chicken hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rChicken Sound: Plop"
		Item.m_Lore = "/mobsound chicken plop "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rChicken Sound: Say"
		Item.m_Lore = "/mobsound chicken say "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rChicken Sound: Step"
		Item.m_Lore = "/mobsound chicken step "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for chicken sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "cow" then
		Item = cItem(334)

		Item.m_CustomName = "§rCow Sound: Hurt"
		Item.m_Lore = "/mobsound cow hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rCow Sound: Say"
		Item.m_Lore = "/mobsound cow say "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rCow Sound: Step"
		Item.m_Lore = "/mobsound cow step "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for cow sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "creeper" then
		Item = cItem(397, 1, 4)

		Item.m_CustomName = "§rCreeper Sound: Death"
		Item.m_Lore = "/mobsound creeper death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rCreeper Sound: Explode"
		Item.m_Lore = "/mobsound creeper explode "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rCreeper Sound: Primed"
		Item.m_Lore = "/mobsound creeper primed "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rCreeper Sound: Say"
		Item.m_Lore = "/mobsound creeper say "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for creeper sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "enderdragon" then
		Item = cItem(122)

		Item.m_CustomName = "§rEnder Dragon Sound: End"
		Item.m_Lore = "/mobsound enderdragon end "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rEnder Dragon Sound: Growl"
		Item.m_Lore = "/mobsound enderdragon growl "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rEnder Dragon Sound: Hit"
		Item.m_Lore = "/mobsound enderdragon hit "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rEnder Dragon Sound: Wings"
		Item.m_Lore = "/mobsound enderdragon wings "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for ender dragon sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "enderman" then
		Item = cItem(381)

		Item.m_CustomName = "§rEnderman Sound: Death"
		Item.m_Lore = "/mobsound enderman death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rEnderman Sound: Hit"
		Item.m_Lore = "/mobsound enderman hit "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rEnderman Sound: Idle"
		Item.m_Lore = "/mobsound enderman idle "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rEnderman Sound: Portal"
		Item.m_Lore = "/mobsound enderman portal "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rEnderman Sound: Scream"
		Item.m_Lore = "/mobsound enderman scream "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rEnderman Sound: Stare"
		Item.m_Lore = "/mobsound enderman stare "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for enderman sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "endermite" then
		Item = cItem(381)

		Item.m_CustomName = "§rEndermite Sound: Hit"
		Item.m_Lore = "/mobsound endermite hit "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rEndermite Sound: Kill"
		Item.m_Lore = "/mobsound endermite kill "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rEndermite Sound: Say"
		Item.m_Lore = "/mobsound endermite say "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rEndermite Sound: Step"
		Item.m_Lore = "/mobsound endermite step "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for endermite sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "ghast" then
		Item = cItem(370)

		Item.m_CustomName = "§rGhast Sound: Affectionate Scream"
		Item.m_Lore = "/mobsound ghast affectionate_scream "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rGhast Sound: Charge"
		Item.m_Lore = "/mobsound ghast charge "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rGhast Sound: Death"
		Item.m_Lore = "/mobsound ghast death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rGhast Sound: Fireball"
		Item.m_Lore = "/mobsound ghast fireball "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rGhast Sound: Moan"
		Item.m_Lore = "/mobsound ghast moan "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rGhast Sound: Scream"
		Item.m_Lore = "/mobsound ghast scream "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for ghast sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "guardian" and Split[3] == "elder" then
		Item = cItem(409)

		Item.m_CustomName = "§rElder Guardian Sound: Death"
		Item.m_Lore = "/mobsound guardian elder death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rElder Guardian Sound: Hit"
		Item.m_Lore = "/mobsound guardian elder hit "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rElder Guardian Sound: Idle"
		Item.m_Lore = "/mobsound guardian elder idle "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for elder guardian sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "guardian" and Split[3] == "land" then
		Item = cItem(409)

		Item.m_CustomName = "§rLand Guardian Sound: Death"
		Item.m_Lore = "/mobsound guardian land death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rLand Guardian Sound: Hit"
		Item.m_Lore = "/mobsound guardian land hit "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rLand Guardian Sound: Idle"
		Item.m_Lore = "/mobsound guardian land idle "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for land guardian sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "guardian" and Split[3] == "underwater" then
		Item = cItem(409)

		Item.m_CustomName = "§rUnderwater Guardian Sound: Attack"
		Item.m_Lore = "/mobsound guardian underwater attack "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rUnderwater Guardian Sound: Curse"
		Item.m_Lore = "/mobsound guardian underwater curse "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rUnderwater Guardian Sound: Death"
		Item.m_Lore = "/mobsound guardian underwater death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rUnderwater Guardian Sound: Flop"
		Item.m_Lore = "/mobsound guardian underwater flop "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rUnderwater Guardian Sound: Hit"
		Item.m_Lore = "/mobsound guardian underwater hit "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rUnderwater Guardian Sound: Idle"
		Item.m_Lore = "/mobsound guardian underwater idle "
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
		Item = cItem(417)

		Item.m_CustomName = "§rDonkey Sound: Angry"
		Item.m_Lore = "/mobsound horse donkey angry "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rDonkey Sound: Death"
		Item.m_Lore = "/mobsound horse donkey death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rDonkey Sound: Hit"
		Item.m_Lore = "/mobsound horse donkey hit "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rDonkey Sound: Idle"
		Item.m_Lore = "/mobsound horse donkey idle "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for donkey sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "horse" and Split[3] == "normal" then
		Item = cItem(417)

		Item.m_CustomName = "§rHorse Sound: Death"
		Item.m_Lore = "/mobsound horse normal death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rHorse Sound: Gallop"
		Item.m_Lore = "/mobsound horse normal gallop "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rHorse Sound: Hit"
		Item.m_Lore = "/mobsound horse normal hit "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rHorse Sound: Idle"
		Item.m_Lore = "/mobsound horse normal idle "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rHorse Sound: Jump"
		Item.m_Lore = "/mobsound horse normal jump "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rHorse Sound: Land"
		Item.m_Lore = "/mobsound horse normal land "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rHorse Sound: Leather"
		Item.m_Lore = "/mobsound horse normal leather "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rHorse Sound: Soft"
		Item.m_Lore = "/mobsound horse normal soft "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rHorse Sound: Wood"
		Item.m_Lore = "/mobsound horse normal wood "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for horse sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "horse" and Split[3] == "skeleton" then
		Item = cItem(417)

		Item.m_CustomName = "§rSkeleton Horse Sound: Death"
		Item.m_Lore = "/mobsound horse skeleton death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSkeleton Horse Sound: Hit"
		Item.m_Lore = "/mobsound horse skeleton hit "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSkeleton Horse Sound: Idle"
		Item.m_Lore = "/mobsound horse skeleton idle "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for skeleton horse sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "horse" and Split[3] == "zombie" then
		Item = cItem(417)

		Item.m_CustomName = "§rZombie Horse Sound: Death"
		Item.m_Lore = "/mobsound horse zombie death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rZombie Horse Sound: Hit"
		Item.m_Lore = "/mobsound horse zombie hit "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rZombie Horse Sound: Idle"
		Item.m_Lore = "/mobsound horse zombie idle "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for zombie horse sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "horse" then
		Player:SendMessageInfo("Usage: " ..Split[1].. " " ..Split[2].. " <donkey|normal|skeleton|zombie>")
		return true
	end

	if Split[2] == "irongolem" then
		Item = cItem(265)

		Item.m_CustomName = "§rIron Golem Sound: Death"
		Item.m_Lore = "/mobsound irongolem death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rIron Golem Sound: Hit"
		Item.m_Lore = "/mobsound irongolem hit "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rIron Golem Sound: Throw"
		Item.m_Lore = "/mobsound irongolem throw "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rIron Golem Sound: Walk"
		Item.m_Lore = "/mobsound irongolem walk "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for iron golem sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "magmacube" then
		Item = cItem(378)

		Item.m_CustomName = "§rMagma Cube Sound: Big"
		Item.m_Lore = "/mobsound magmacube big "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rMagma Cube Sound: Jump"
		Item.m_Lore = "/mobsound magmacube jump "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rMagma Cube Sound: Small"
		Item.m_Lore = "/mobsound magmacube small "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for magma cube sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "ocelot" then
		Item = cItem(349)

		Item.m_CustomName = "§rOcelot Sound: Hiss"
		Item.m_Lore = "/mobsound ocelot hiss "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rOcelot Sound: Hit"
		Item.m_Lore = "/mobsound ocelot hit "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rOcelot Sound: Meow"
		Item.m_Lore = "/mobsound ocelot meow "
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
		Item = cItem(319)

		Item.m_CustomName = "§rPig Sound: Death"
		Item.m_Lore = "/mobsound pig death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rPig Sound: Say"
		Item.m_Lore = "/mobsound pig say "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rPig Sound: Step"
		Item.m_Lore = "/mobsound pig step "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for pig sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "player" then
		Item = cItem(397, 1, 3)

		Item.m_CustomName = "§rPlayer Sound: Burp"
		Item.m_Lore = "/mobsound player burp "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rPlayer Sound: Death"
		Item.m_Lore = "/mobsound player death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rPlayer Sound: Drink"
		Item.m_Lore = "/mobsound player drink "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rPlayer Sound: Eat"
		Item.m_Lore = "/mobsound player eat "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rPlayer Sound: Fallbig"
		Item.m_Lore = "/mobsound player fallbig "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rPlayer Sound: Fallsmall"
		Item.m_Lore = "/mobsound player fallsmall "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rPlayer Sound: Hurt"
		Item.m_Lore = "/mobsound player hurt "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for player sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "rabbit" then
		Item = cItem(415)

		Item.m_CustomName = "§rRabbit Sound: Death"
		Item.m_Lore = "/mobsound rabbit death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rRabbit Sound: Hop"
		Item.m_Lore = "/mobsound rabbit hop "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rRabbit Sound: Hurt"
		Item.m_Lore = "/mobsound rabbit hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rRabbit Sound: Idle"
		Item.m_Lore = "/mobsound rabbit idle "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for rabbit sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "sheep" then
		Item = cItem(35)

		Item.m_CustomName = "§rSheep Sound: Say"
		Item.m_Lore = "/mobsound sheep say "
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

	if Split[2] == "silverfish" then
		Item = cItem(351, 1, 8)

		Item.m_CustomName = "§rSilverfish Sound: Hit"
		Item.m_Lore = "/mobsound silverfish hit "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSilverfish Sound: Kill"
		Item.m_Lore = "/mobsound silverfish kill "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSilverfish Sound: Say"
		Item.m_Lore = "/mobsound silverfish say "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSilverfish Sound: Step"
		Item.m_Lore = "/mobsound silverfish step "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for silverfish sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "skeleton" then
		Item = cItem(397)

		Item.m_CustomName = "§rSkeleton Sound: Bow"
		Item.m_Lore = "/mobsound skeleton bow "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSkeleton Sound: Death"
		Item.m_Lore = "/mobsound skeleton death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSkeleton Sound: Hurt"
		Item.m_Lore = "/mobsound skeleton hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSkeleton Sound: Say"
		Item.m_Lore = "/mobsound skeleton say "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSkeleton Sound: Step"
		Item.m_Lore = "/mobsound skeleton step "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for skeleton sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "slime" then
		Item = cItem(341)

		Item.m_CustomName = "§rSlime Sound: Attack"
		Item.m_Lore = "/mobsound slime attack "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSlime Sound: Big"
		Item.m_Lore = "/mobsound slime big "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSlime Sound: Small"
		Item.m_Lore = "/mobsound slime small "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for slime sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "spider" then
		Item = cItem(375)

		Item.m_CustomName = "§rSpider Sound: Death"
		Item.m_Lore = "/mobsound spider death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSpider Sound: Say"
		Item.m_Lore = "/mobsound spider say "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rSpider Sound: Step"
		Item.m_Lore = "/mobsound spider step "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for spider sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "villager" then
		Item = cItem(388)

		Item.m_CustomName = "§rVillager Sound: Death"
		Item.m_Lore = "/mobsound villager death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rVillager Sound: Haggle"
		Item.m_Lore = "/mobsound villager haggle "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rVillager Sound: Hit"
		Item.m_Lore = "/mobsound villager hit "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rVillager Sound: Idle"
		Item.m_Lore = "/mobsound villager idle "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rVillager Sound: No"
		Item.m_Lore = "/mobsound villager no "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rVillager Sound: Yes"
		Item.m_Lore = "/mobsound villager yes "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for villager sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "rabbit" then
		Item = cItem(415)

		Item.m_CustomName = "§rRabbit Sound: Death"
		Item.m_Lore = "/mobsound rabbit death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rRabbit Sound: Hop"
		Item.m_Lore = "/mobsound rabbit hop "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rRabbit Sound: Hurt"
		Item.m_Lore = "/mobsound rabbit hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rRabbit Sound: Idle"
		Item.m_Lore = "/mobsound rabbit idle "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for rabbit sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "wither" then
		Item = cItem(397, 1, 1)

		Item.m_CustomName = "§rWither Sound: Death"
		Item.m_Lore = "/mobsound wither death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rWither Sound: Hurt"
		Item.m_Lore = "/mobsound wither hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rWither Sound: Idle"
		Item.m_Lore = "/mobsound wither idle "
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
		Item = cItem(352)

		Item.m_CustomName = "§rWolf Sound: Bark"
		Item.m_Lore = "/mobsound wolf bark "
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

		Item.m_CustomName = "§rWolf Sound: Panting"
		Item.m_Lore = "/mobsound wolf panting "
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

	if Split[2] == "zombie" then
		Item = cItem(397, 1, 2)

		Item.m_CustomName = "§rZombie Sound: Death"
		Item.m_Lore = "/mobsound zombie death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rZombie Sound: Hurt"
		Item.m_Lore = "/mobsound zombie hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rZombie Sound: Infect"
		Item.m_Lore = "/mobsound zombie infect "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rZombie Sound: Metal"
		Item.m_Lore = "/mobsound zombie metal "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rZombie Sound: Remedy"
		Item.m_Lore = "/mobsound zombie remedy "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rZombie Sound: Say"
		Item.m_Lore = "/mobsound zombie say "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rZombie Sound: Step"
		Item.m_Lore = "/mobsound zombie step "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rZombie Sound: Unfect"
		Item.m_Lore = "/mobsound zombie unfect "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rZombie Sound: Wood"
		Item.m_Lore = "/mobsound zombie wood "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rZombie Sound: Woodbreak"
		Item.m_Lore = "/mobsound zombie woodbreak "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for zombie sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	if Split[2] == "zombiepigman" then
		Item = cItem(371)

		Item.m_CustomName = "§rZombie Pigman Sound: Angry"
		Item.m_Lore = "/mobsound zombiepigman angry "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rZombie Pigman Sound: Death"
		Item.m_Lore = "/mobsound zombiepigman death "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rZombie Pigman Sound: Hurt"
		Item.m_Lore = "/mobsound zombiepigman hurt "
		Player:GetInventory():AddItem(Item)

		Item.m_CustomName = "§rZombie Pigman Sound: Idle"
		Item.m_Lore = "/mobsound zombiepigman idle "
		Player:GetInventory():AddItem(Item)

		Player:SendMessageSuccess("Successfully received tools for zombie pigman sounds")
		Player:SendMessageInfo("Right-click a tool to broadcast a sound at your coordinates")
		return true
	end

	-- If nothing above matches the second split, display an error
	Player:SendMessageFailure("Invalid mob type")
	return true
end
