CreateThread(function()

	while true do

		Wait(500)

		for _,v in pairs(Config.NPCLocations) do
			ClearAreaOfPeds(v.coords, v.radius, 1)
		end

		for _,v in pairs(Config.CarLocations) do
			ClearAreaOfVehicles(v.coords, v.radius)
		end

		for _,v in pairs(Config.BothLocations) do
			ClearAreaOfVehicles(v.coords, v.radius)
			ClearAreaOfPeds(v.coords, v.radius, 1)
		end

	end

end)