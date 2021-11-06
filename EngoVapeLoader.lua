if isfolder("vape") then
    if isfolder("vape/CustomModules") then
        if not isfile("vape/CustomModules/6872274481.vape") then
            writefile("vape/CustomModules/6872274481.vape", "loadstring(game:HttpGet('https://raw.githubusercontent.com/joeengo/VapeV4ForRoblox/main/CustomModules/6872274481.vape'))()")
        end
    else
        makefolder("vape/CustomModules")
         if not isfile("vape/CustomModules/6872274481.vape") then
            writefile("vape/CustomModules/6872274481.vape", "loadstring(game:HttpGet('https://raw.githubusercontent.com/joeengo/VapeV4ForRoblox/main/CustomModules/6872274481.vape'))()")
        end
    end
else
    makefolder("vape")
    makefolder("vape/CustomModules")
     if not isfile("vape/CustomModules/6872274481.vape") then
            writefile("vape/CustomModules/6872274481.vape", "loadstring(game:HttpGet('https://raw.githubusercontent.com/joeengo/VapeV4ForRoblox/main/CustomModules/6872274481.vape'))()")
        end
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
