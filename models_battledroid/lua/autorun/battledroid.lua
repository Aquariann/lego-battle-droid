player_manager.AddValidModel( "LEGO Battle Droid", 				"models/players/bd/legobd.mdl" )
player_manager.AddValidHands( "LEGO Battle Droid", "models/players/bd/barms/barms.mdl", 1, "00000000" )

local modelName = "models/players/bd/legobd.mdl"
local tauntSongs = {

	[ACT_GMOD_TAUNT_DANCE] = {"normal_taunt.mp3", 100};
	[ACT_GMOD_TAUNT_ROBOT] = {"normal_taunt.mp3", 100};
	[ACT_GMOD_TAUNT_LAUGH] = {"normal_taunt.mp3", 100};
	[ACT_GMOD_TAUNT_MUSCLE] = {"normal_taunt.mp3", 100};
	[ACT_GMOD_TAUNT_SALUTE] = {"normal_taunt.mp3", 100};
	[ACT_GMOD_GESTURE_WAVE] = {"normal_taunt.mp3", 100};
	[ACT_GMOD_GESTURE_BECON] = {"normal_taunt.mp3", 100};
	[ACT_GMOD_GESTURE_AGREE] = {"normal_taunt.mp3", 100};
	[ACT_SIGNAL_FORWARD] = {"normal_taunt.mp3", 100};
	[ACT_GMOD_GESTURE_TAUNT_ZOMBIE] = {"normal_taunt.mp3", 100};
	
}



hook.Add("PlayerDeathSound","normal_PlayerDeathSound",function(ply,velocity)	

	if(ply:GetModel() == modelName) then
	
		ply:EmitSound("normal_death.mp3", 75)
		return true
		
	end
	
end)

hook.Add("PlayerStartTaunt", "normal_PlayerStartTaunt", function(ply, act, len)

	if(ply:GetModel() == modelName) then

		if(istable(tauntSongs[act])) then
		
			ply:EmitSound(tauntSongs[act][1], 75, tauntSongs[act][2])
			
		end
		
	end

end)