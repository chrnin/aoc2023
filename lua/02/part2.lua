package.path = package.path .. ";../common/?.lua;./?.lua"
local common = require("common")
local day1 = require("day1")

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
        local game = day1.gameFromLine(line)
        local sets = day1.setsFromGame(game)
        for _, set in pairs(sets) do
            local cubes = day1.getCubesFromSet(set)
            maxCubes = maximizeCubes(maxCubes, cubes)
        end
        total = total + cubesPower(maxCubes)
    end
    return total
end

return part2