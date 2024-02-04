package.path = package.path .. ";../common/?.lua;./?.lua"
local common = require("common")
local day1 = require("day1")

local part1 = {}

-- Sample line
-- Game 2: 1 blue, 2 green; 3 green, 4 blue, 1 red; 1 green, 1 blue

local function checkCubes(cubes, constraint)
    return cubes.red - constraint.red <= 0 and 
        cubes.green - constraint.green <= 0 and 
        cubes.blue - constraint.blue  <= 0
end

function part1.run(filename)
    local constraints = {
        red=12,
        green=13,
        blue=14
    }

    local lines = common.lines_from(filename)
    local total = 0
    for _, line in pairs(lines) do
        local ok = true
        local number = day1.gameNumberFromLine(line)
        local game = day1.gameFromLine(line)
        local sets = day1.setsFromGame(game)
        for _, set in pairs(sets) do
            local cubes = day1.getCubesFromSet(set)
            if not checkCubes(cubes, constraints) then
                ok = false
            end
        end
        if ok then
            total = total + number
        end
    end
    return total
end

return part1