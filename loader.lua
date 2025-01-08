if not game:IsLoaded() then
	game.Loaded:Wait()
end

getgenv().isVerticalLoaded = true
if getgenv().isVerticalLoaded then
	warn("vertical.xyz >> Script is already loaded.")
end

local scripts = {
	["universal"] = "",
	["1962086868"] = "" -- Tower of Hell
	["142823291"] = "", -- Murder Mystery 2
	["5602055394"] = "https://api.luarmor.net/files/v3/loaders/6535c4d3bac3bc97dbab047551105c82.lua", -- Hood Modded
}

local scriptUrl = scripts[tostring(game.PlaceId)]
if scriptUrl then
	return loadstring(game:HttpGet(scriptUrl))()
end

loadstring(game:HttpGet(scripts["universal"]))()