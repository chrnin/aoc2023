package.path = package.path..";../common/?.lua"
local common = require("common")

local day1 = {}

function day1.gameNumberFromLine(line)
    for v in string.gmatch(line, "Game (%d+)") do
        return v
    end
    return 0
end

function day1.gameFromLine(line)
    for v in string.gmatch(line, "Game %d+:(.*)") do
        return v
    end
end

function day1.setsFromGame(game)
    return common.split(game, ";")
end

function day1.getCubesFromSet(set)
    local cubes = {}
    cubes.blue = string.match(set, "(%d+) blue") or "0"
    cubes.red = string.match(set, "(%d+) red") or "0"
    cubes.green = string.match(set, "(%d+) green") or "0"
    return cubes
end

return day1