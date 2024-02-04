package.path = package.path .. ";../common/?.lua;./?.lua"
local common = require('common')
local day1 = require('day1')

local part2 = {}

local numbers = { "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "1", "2", "3", "4", "5", "6", "7", "8", "9"}



function startsWithArray(line, array)
  for rank, prefix in pairs(array) do
    if common.startsWith(line, prefix) then
      return rank
    end
  end
  return 0
end

function endsWithArray(line, array)
  for rank, prefix in pairs(array) do
    if common.endsWith(line, prefix) then
      return rank
    end
  end
  return 0
end

function findFirst(line, array)
  if line == "" then
    return 0
  end
  found = startsWithArray(line, array)
  if found == 0 then
    return findFirst(line:sub(2, #line), array)
  end
  found = found%9
  if found == 0 then
    return 9
  end
  return found
end

function findLast(line, array)
  if line == "" then
    return 0
  end
  found = endsWithArray(line, array)
  if found == 0 then
    return findLast(line:sub(1, #line-1), array)
  end
  found = found%9
  if found == 0 then
    return 9
  end
  return found
end

function part2.run(filename)
  local lines = common.lines_from(filename)
  local results = {}
  for _, line in pairs(lines) do
    first = findFirst(line, numbers)
    last = findLast(line, numbers)
    table.insert(results, first..last)
  end
  return (common.sum(results))
end

return part2