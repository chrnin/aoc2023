package.path = package.path .. ";../common/?.lua;./?.lua"
local common = require("common")
local day2 = require("day2")

local part2 = {}

local function maximizeCubes(maxCubes, cubes)
    return {
        red=math.max(maxCubes.red, cubes.red),
        green=math.max(maxCubes.green, cubes.green),
        blue=math.max(maxCubes.blue, cubes.blue),
    }
end

local function cubesPower(cubes)
    return cubes.red * cubes.blue * cubes.green
end

function part2.run(filename)
    local lines = common.lines_from(filename)
    local total = 0
    for _, line in pairs(lines) do
        local maxCubes = {red=0, green=0, blue=0}
        local game = day2.gameFromLine(line)
        local sets = day2.setsFromGame(game)
        for _, set in pairs(sets) do
            local cubes = day2.getCubesFromSet(set)
            maxCubes = maximizeCubes(maxCubes, cubes)
        end
        total = total + cubesPower(maxCubes)
    end
    return total
end

return part2