repeat wait() until game:IsLoaded() == true

if game.PlaceId == 6872274481 then
	for i,v in pairs(getgc(true)) do 
		if type(v) == "table" then
			if rawget(v, "attackEntity") and #debug.getconstants(v["attackEntity"]) >= 53 then
				for i,v in pairs(debug.getupvalues(v["attackEntity"])) do
					print(tostring(v))
					if tostring(v) == "AC" then
						shared.AttackHashTable = v
						for i2,v2 in pairs(v) do
							if i2:find("constructor") == nil and i2:find("__index") == nil and i2:find("new") == nil then
								shared.AttackHashFunction = v2
								shared.AttachHashText = i2
							end
						end
					end
				end
				oldattack = v["attackEntity"]
				shared.backup_attack = oldattack
				shared.attackremote = debug.getconstant(v["attackEntity"], 43)
			end
		end
	end
end

local function getcustommodule(id)
	if readfile("vape/CustomModules/"..game.PlaceId..".vape") then
		return readfile("vape/CustomModules/"..game.PlaceId..".vape")
	else
		local req = requestfunc({
			Url = "https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/CustomModules/"..id..".vape",
			Method = "GET"
		})
		if req.StatusCode == 200 then
			return req.Body
		else
			return nil
		end
	end
end

local function getcustommoduleengo(id)
	if readfile("engovape/CustomModules/"..game.PlaceId..".vape") then
		return readfile("engovape/CustomModules/"..game.PlaceId..".vape")
	else
		local req = requestfunc({
			Url = "https://raw.githubusercontent.com/joeengo/VapeV4ForRoblox/main/CustomModules/"..id..".vape",
			Method = "GET"
		})
		if req.StatusCode == 200 then
			return req.Body
		else
			return nil
		end
	end
end

local function GetURLENGO(scripturl)
	if isfile("engovape/"..scripturl) then
	return readfile("engovape/"..scripturl)
	else
		local req = requestfunc({
			Url = "https://raw.githubusercontent.com/joeengo/VapeV4ForRoblox/main/"..scripturl,
			Method = "GET"
		})
		if req.StatusCode == 200 then
			return req.Body
		else
			error(scripturl.." is not a valid file!")
		end
	end
end

local function GetURL(scripturl)
	if isfile("vape/"..scripturl) then
	return readfile("vape/"..scripturl)
	else
		local req = requestfunc({
			Url = "https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/"..scripturl,
			Method = "GET"
		})
		if req.StatusCode == 200 then
			return req.Body
		else
			error(scripturl.." is not a valid file!")
		end
	end
end

loadstring(GetURL("NewMainScript.lua"))
loadstring(getcustommodule(game.PlaceId..".vape"))
if readfile("vapeprivate/CustomModules/"..game.PlaceId..".vape") then
	loadstring(readfile("vapeprivate/CustomModules/"..game.PlaceId..".vape"))
end
loadstring(getcustommoduleengo(game.PlaceId..".vape"))
if readfile("engovapeprivate/CustomModules/"..game.PlaceId..".vape") then
	loadstring(readfile("engovapeprivate/CustomModules/"..game.PlaceId..".vape"))
end
