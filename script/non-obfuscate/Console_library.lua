-- Check exploit
if not rconsoleinput or not rconsoleprint then
    return game.Players.LocalPlayer:Kick("Your exploit did't support!")
end

-- Seting variable
local Data
Data.LAST_CONTEST = ""
Data.Cache, Data.Cache.Input, Data.Cache.Toggle, Data.Cache.Box, Data.Cache.Choice, Data.LIST_COMMAND = {}, {}, {}, {}, {}, {}

-- Add function
Data.AddInput = function(self, name, desc, callback)
    self.Cache.Input[tostring(name)] = callback
    self.LIST_COMMAND[tostring(name)] = {
        type = "Input",
        desc = tostring(desc)
    }
end

Data.AddToggle = function(self, name, desc, callback)
    self.Cache.Toggle[tostring(name)] = callback
    self.LIST_COMMAND[tostring(name)] = {
        type = "Toggle",
        desc = tostring(desc)
    }
end

Data.AddBox = function(self, name, desc, callback)
    self.Cache.Toggle[tostring(name)] = callback
    self.LIST_COMMAND[tostring(name)] = {
        type = "Box",
        desc = tostring(desc)
    }
end

Data.AddChoice = function(self, name, desc, list, callback)
    self.Cache.Choice[tostring(name)] = {
        callback = callback,
        list = list
    }
    self.LAST_CONTEST[tostring(name)] = {
        type = "Choice",
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
        if Data.Cache.Input[Data.LAST_CONTEST] then
            pcall(Data.Cache.Input[Data.LAST_CONTEST])
            Data.LAST_CONTEST = ""
        elseif Data.Cache.Toggle[Data.LAST_CONTEST] then
            rconsoleprint("y/n")
            Data.LAST_CONTEST = rconsoleinput()
            repeat
                wait()
            until Data.LAST_CONTEST
            if Data.LAST_CONTEST:lower() == "y" then
                pcall(Data.Cache.Toggle[Data.LAST_CONTEST], true)
            elseif Data.LAST_CONTEST:lower() == "n" then
                pcall(Data.Cache.Toggle[Data.LAST_CONTEST], false)
            end
            Data.LAST_CONTEST = ""
        elseif Data.Cache.Box[Data.LAST_CONTEST] then
            pcall(Data.Cache.Box[Data.LAST_CONTEST], Data.LAST_CONTEST)
            Data.LAST_CONTEST = ""
        elseif Data.Cache.Choice[Data.LAST_CONTEST] then
            do
                local Content = ""
                for i, v in pairs(Data.Cache.Choice[Data.LAST_CONTEST].list) do
                    Content = string.format("%s %s). %s\n", Content, i, v)
                end
                rconsoleprint("Select : \n\t"..Content)
                Data.LAST_CONTEST = rconsoleinput()
                repeat
                    wait()
                until Data.LAST_CONTEST
                if Data.Cache.Choice[Data.LAST_CONTEST].list[tonumber(Data.LAST_CONTEST)] then
                    pcall(Data.Cache.Choice[Data.LAST_CONTEST].callback, Data.Cache.Choice[Data.LAST_CONTEST].list[Data.LAST_CONTEST])
                end
            end
        end
    end
end)

-- Base Command
Data:AddInput("Help", "this command it's for show all command and how to use.", function()
    for i, v in pairs(Data.LIST_COMMAND) do
        rconsoleprint(tostring(string.format("\"%s\" : \n\tType : %s\n\tDescription : %s", i, v.type, v.desc)))
    end
end)

Data:AddChoice("Color", "this command it's for change text color.", {"Black", "Blue", "Green", "Cyan", "Red","Magenta" ,"Brown" ,"Light Gray" ,"Dark Gray" ,"Light Blue" ,"Light Green" ,"Light Cyan" ,"Light Red" ,"Light Magenta" ,"Yellow" ,"White"}, function(msg)
    local Content = string.upper(Content)
    Content = string.gsub(msg, " ", "-")
    Content = string.format("@@%s@@", Content)
    rconsoleprint(Content)
end)



return Data
