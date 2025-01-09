if not game:IsLoaded() then
	game.Loaded:Wait()
end

getgenv().isVerticalLoaded = true
if getgenv().isVerticalLoaded then
	warn("vertical.xyz >> Script is already loaded.")
end

local scripts = {
	["universal"] = "https://api.luarmor.net/files/v3/loaders/67713a1dad2020bb1873d0f362bc8c8d.lua",
	["142823291"] = "https://api.luarmor.net/files/v3/loaders/bf68a233b96671f585975414ba3c3f62.lua", -- Murder Mystery 2
	["5602055394"] = "https://api.luarmor.net/files/v3/loaders/6535c4d3bac3bc97dbab047551105c82.lua", -- Hood Modded
}

local scriptUrl = scripts[tostring(game.PlaceId)]
if scriptUrl then
	return loadstring(game:HttpGet(scriptUrl))()
end

loadstring(game:HttpGet(scripts["universal"]))()