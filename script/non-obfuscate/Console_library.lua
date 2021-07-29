-- Check exploit
if not rconsoleinput or rconsoleprint then
    return game.Players.LocalPlayer:Kick()
end

-- Seting Value
local Data
Data.LAST_CONTEST = ""
Data.Cache, Data.Cache.Input, Data.Cache.Toggle, Data.Cache.Box = {}, {}, {}, {}

-- Add function
Data.Addinput = function(self, string, command)
    self.Cache.Input[tostring(string)] = command
end

Data.AddToggle = function(self, string, command)
    self.Cache.Toggle[tostring(string)] = command
end

Data.AddBox = function(self, string, command)
    self.Cache.Toggle[tostring(string)] = command
end
-- Running function

spawn(function()
    while wait() do
        Data.LAST_CONTEST = rconsoleinput()
        repeat
            wait()
        until Data.LAST_CONTEST
        if Data.Cache.Cache.Input[Data.LAST_CONTEST] then
            pcall(Data.Cache.Cache.Input[Data.LAST_CONTEST])
            Data.LAST_CONTEST = ""
        elseif Data.Cache.Cache.Toggle[Data.LAST_CONTEST] then
            rconsoleprint("y/n")
            Data.LAST_CONTEST = rconsoleinput()
            repeat
                wait()
            until Data.LAST_CONTEST
            if Data.LAST_CONTEST:lower() == "y" then
                pcall(Data.Cache.Cache.Toggle[Data.LAST_CONTEST], true)
            elseif Data.LAST_CONTEST:lower() == "n" then
                pcall(Data.Cache.Cache.Toggle[Data.LAST_CONTEST], false)
            end
            Data.LAST_CONTEST = ""
        elseif Data.Cache.Cache.Box[Data.LAST_CONTEST] then
            pcall(Data.Cache.Cache.Box[Data.LAST_CONTEST], Data.LAST_CONTEST)
            Data.LAST_CONTEST = ""
        end
    end
end)



return Data
