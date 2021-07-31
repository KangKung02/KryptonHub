-- Check exploit
if not rconsoleinput or not rconsoleprint then
    return game.Players.LocalPlayer:Kick("Your exploit did't support!")
end

-- Seting variable
local Data = {
    LAST_CONTEST = "",
    LIST_COMMAND,
    ENABLE,
    Cache = {
        Input = {},
        Toggle = {},
        Box = {},
        Choice = {}
    }
}

Data.Colosole = function(self, name, color)
    self.ENABLE = true
    rconsolename(tostring(name))
    rconsoleprint(tostring(color))
    return self
end
-- Add function
Data.AddInput = function(self, name, desc, callback)
    self.Cache.Input[tostring(name):lower()] = callback
    self.LIST_COMMAND[tostring(name)] = {
        type = "Input",
        desc = tostring(desc)
    }
end

Data.AddToggle = function(self, name, desc, callback)
    self.Cache.Toggle[tostring(name):lower()] = callback
    self.LIST_COMMAND[tostring(name)] = {
        type = "Toggle",
        desc = tostring(desc)
    }
end

Data.AddBox = function(self, name, desc, callback)
    self.Cache.Toggle[tostring(name):lower()] = callback
    self.LIST_COMMAND[tostring(name)] = {
        type = "Box",
        desc = tostring(desc)
    }
end

Data.AddChoice = function(self, name, desc, list, callback)
    self.Cache.Choice[tostring(name):lower()] = {
        callback = callback,
        list = list
    }
    self.LIST_COMMAND[tostring(name)] = {
        type = "Choice",
        desc = tostring(desc)
    }
end
-- Running function

spawn(function()
    while wait(1) do
        print("New console")
        Data.LAST_CONTEST = rconsoleinput()
        repeat
            wait()
        until Data.LAST_CONTEST
        if Data.Cache.Input[Data.LAST_CONTEST:lower()] then
            pcall(Data.Cache.Input[Data.LAST_CONTEST])
            Data.LAST_CONTEST = ""
        elseif Data.Cache.Toggle[Data.LAST_CONTEST:lower()] then
            rconsoleprint("y/n\n")
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
        elseif Data.Cache.Box[Data.LAST_CONTEST:lower()] then
            pcall(Data.Cache.Box[Data.LAST_CONTEST], Data.LAST_CONTEST)
            Data.LAST_CONTEST = ""
        elseif Data.Cache.Choice[Data.LAST_CONTEST:lower()] then
            do
                local Content = ""
                for i, v in ipairs(Data.Cache.Choice[Data.LAST_CONTEST].list) do
                    Content = string.format("%s %s). %s\n\t", Content, i, v)
                end
                rconsoleprint("Select : \n\t"..Content.."\n")
                local LAST_CONTEST = Data.LAST_CONTEST
                Data.LAST_CONTEST = nil
                Data.LAST_CONTEST = rconsoleinput()
                repeat
                    wait()
                until Data.LAST_CONTEST
                if Data.Cache.Choice[LAST_CONTEST:lower()].list[tonumber(Data.LAST_CONTEST)] then
                    pcall(Data.Cache.Choice[LAST_CONTEST:lower()].callback, Data.Cache.Choice[LAST_CONTEST:lower()].list[tonumber(Data.LAST_CONTEST)])
                end
            end
        end
    end
end)

-- Base Command
Data:AddInput("Help", "this command it's for show all command and how to use.", function()
    for i, v in pairs(Data.LIST_COMMAND) do
        rconsoleprint(tostring(string.format("\"%s\" : \n\tType : %s\n\tDescription : %s\n", i, v.type, v.desc)))
    end
end)

Data:AddChoice("Color", "this command it's for change text color.", {"Black", "Blue", "Green", "Cyan", "Red","Magenta" ,"Brown" ,"Light Gray" ,"Dark Gray" ,"Light Blue" ,"Light Green" ,"Light Cyan" ,"Light Red" ,"Light Magenta" ,"Yellow" ,"White"}, function(msg)
    local Content = string.upper(msg)
    Content = string.gsub(Content, " ", "_")
    Content = string.format("@@%s@@", Content)
    rconsoleprint(Content)
end)

Data:AddInput("Clear", "this command it's for clear all log.", function()
    rconsoleclear()
end)

--return Data
