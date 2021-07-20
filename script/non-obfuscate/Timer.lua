local function Timer(Old)
    local Time = os.time() - Old
    return os.date("%X", 61200 + Time)
end

return Timer
