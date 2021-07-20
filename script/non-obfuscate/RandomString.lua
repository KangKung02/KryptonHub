local Chars = {
    {48, 57},
    {65, 90},
    {97, 122},
}

local RandomString = function(Length)
    local Random = "";
    if Length and type(Length) == "number" then
        for i = 1, Length do
            local Select = Chars[math.random(1,#Chars)]
            Random = Random..string.char(math.random(Select[1], Select[2]))
        end
    end
    return tostring(Random) 
end

return RandomString
