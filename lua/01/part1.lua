package.path = package.path .. ";../common/?.lua;./?.lua"
local common = require('common')

local part1 = {}

local isalnum = function(str)
	return str:match("%d") ~= nil
end

local function firstAndLast(line)
  local first = "0"
  local second = "0"
  for i=1, #line do
    local char = line:sub(i,i)
    if isalnum(char) then
      if first == "0" then
        first = char
        second = char
      else
        second = char
      end
    end
  end
  return first, second
end

function part1.run(filename)
  local lines = common.lines_from(filename)
  local numbers = {}
  for _, line in pairs(lines) do
    local first, last = firstAndLast(line)
    table.insert(numbers, first..last)
  end
  return (common.sum(numbers))
end



return part1