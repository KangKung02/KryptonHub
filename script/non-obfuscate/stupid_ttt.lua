local space = {1, 2, 3, 4, 5, 6, 7, 8, 9}
local Player1, Player2 = {}, {}
local Time = 0
local ENDGAME
table.find = function(t , v)
    for index, value in ipairs(t) do
        if value == v then
            return value
        end
    end
end

local CheckWin = function(Player, String)
    local Check = function(t)
        local data = 0
        for i,v in pairs(t) do
            if table.find(Player, v) then
                data = data + 1
            end
        end
        if data == 3 then
            return true
        else
            data = 0
        end
    end
    if Check({1, 2, 3}) or Check({4, 5, 6}) or Check({7, 8, 9}) or Check({1, 4, 7}) or Check({2, 5, 8}) or Check({3, 6, 9}) or Check({1, 5, 9}) or Check({3, 5, 7}) then
        return "Winer : "..String
    end
    if #space == 0 then
        return "No winer!"
    end
    return false
end

local Draw = function(player, taget)
    if not table.find(player, taget) then
        table.insert(player, taget)
        print("Draw : "..taget)
        print("---------------")
        space[taget] = nil
    end
end

local Play = function()
    local Taget = function()
        math.randomseed = os.time()
        if #space ~= 0 then
            return math.random(1, #space)
        end
    end
    if Time == 0 then
        Draw(Player1, Taget())
        Time = 1
        local a = CheckWin(Player1, "Player 1")
        if a then
            print(a)
            ENDGAME = true
        end
    elseif Time == 1 then
        Draw(Player2, Taget())
        Time = 0
        local a = CheckWin(Player2, "Player2 ")
        if a then
            print(a)
            ENDGAME = true
        end
    end
end

while #space ~= 0 do
    if ENDGAME then
        return
    end
    Play()
end
