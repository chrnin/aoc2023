package.path = package.path .. ";../common/?.lua;./?.lua"
local common = require('common')
local day1 = require('day1')

local part1 = {}

function part1.run(filename)
  local lines = common.lines_from(filename)
  local numbers = {}
  for _, line in pairs(lines) do
    first, last = day1.firstAndLast(line)
    table.insert(numbers, first..last)
  end
  return (common.sum(numbers))
end



return part1