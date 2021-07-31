-- Check exploit
if not rconsoleinput or not rconsoleprint then
    return game.Players.LocalPlayer:Kick("Your exploit did't support!")
end

-- Seting variable
local Data
Data.LAST_CONTEST = ""
Data.Cache, Data.Cache.Input, Data.Cache.Toggle, Data.Cache.Box, Data.LIST_COMMAND = {}, {}, {}, {}, {}

-- Add function
Data.AddInput = function(self, name, desc, command)
    self.Cache.Input[tostring(name)] = command
    self.LIST_COMMAND[tostring(name)] = {
        type = "Input",
        desc = tostring(desc)
    }
end

Data.AddToggle = function(self, name, desc, command)
    self.Cache.Toggle[tostring(name)] = command
    self.LIST_COMMAND[tostring(name)] = {
        type = "Toggle",
        desc = tostring(desc)
    }
end

Data.AddBox = function(self, name, desc, command)
    self.Cache.Toggle[tostring(name)] = command
    self.LIST_COMMAND[tostring(name)] = {
        type = "Box",
        desc = tostring(desc)
    }
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

-- help command
Data:AddInput("Help", "this command it's for show all command and how to use.", function()
    for i, v in pairs(Data.LIST_COMMAND) do
        rconsoleprint(tostring(string.format("\"%s\" : \n\tType : %s\n\tDescription : %s", i, v.type, v.desc))))
    end
end)

return Data
